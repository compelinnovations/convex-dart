# Convex Dart Builder Constitution

## Overview

The Convex Dart Builder generates type-safe Dart client functions, request/response models, and optional ObjectBox integrations from a JSON functions schema. This document is the authoritative reference for the pipeline, key types, functions, configuration, generated outputs, and known constraints in this repository.

This constitution documents the actual code paths and functions in:

- `convex_dart_builder/lib/builder.dart` (orchestration, I/O)
- `convex_dart_builder/lib/src/types.dart` (type system, codegen engine, mappers)

## Table of Contents

1. Build pipeline overview
2. Inputs, config, and schema shape
3. Core components and responsibilities
4. Type system and conversion rules (JsType hierarchy)
5. Function generation (operations, serialize/deserialize)
6. Request/Response model generation and nested extraction
7. Literal and TableId generation (literals.dart, schema.dart)
8. ObjectBox integration (when enabled)
9. Output structure and file content
10. Logging, errors, and known constraints

## 1) Build pipeline overview

```
schema.json → load config → sanitize schema → parse (mappers) →
per-function codegen → models and helpers → format → write files
```

- Reads the configured input JSON (`options.config['input_file']`).
- Optionally loads a mapping file and an ObjectBox functions file (both configurable).
- Filters out `HttpAction` functions for `/api/auth/*` and `/.well-known/*` paths.
- Parses JSON into `FunctionsSpec` (via dart_mappable generated mappers) and iterates functions.
- Generates per-function operation files, shared request/response models, optional ObjectBox files, and entrypoints.
- Formats all emitted code with `dart_style` and writes to the same `lib/` tree as the input schema, replacing previous generated `.dart` files in that tree.

Important: The builder deletes all `.dart` files under the target `lib/` path before emitting new files. Keep only generated artifacts in that lib tree.

## 2) Inputs, config, and schema shape

### build.yaml options (for `convex_dart_builder`)

- `input_file`: Required, path to the JSON schema in `lib/`.
- `mapping_file`: Optional, path to a mapping JSON in `lib/` used to customize type names and nested extraction mapping.
- `objectbox_functions_file`: Optional, path to a JSON list of functions that should generate ObjectBox files.

### Functions schema (parsed by `FunctionsSpecMapper.fromJson`)

Minimal shape (using the actual mapper model):

```json
{
  "url": "https://<deployment>",
  "functions": [
    {
      "args": {
        /* JsType tree */
      },
      "returns": {
        /* JsType tree */
      },
      "functionType": "Query|Mutation|Action",
      "identifier": "app/module.js:functionName",
      "visibility": { "kind": "public|internal" }
    }
  ]
}
```

Notes:

- `identifier` is split into `folderName` (module) and `functionName` at `:`.
- `convexFunctionIdentifier` is derived as `"<folderName>:<functionName>"` for operation wiring.
- Functions with `visibility.kind == internal` are skipped.

### Mapping file shape (custom naming and extraction)

Keys can be either:

- Convex identifier: `"<module>:<function>"` (e.g., `"fieldAgentAuth:getMe"`), or
- HTTP endpoint: `"POST:/api/run/app/<module>/<function>"`.

Mapping options per function key:

```json
{
  "request": "CustomRequestTypeName",
  "response": "CustomResponseTypeName",
  "responseList": "CustomListItemTypeName",
  "createBox": true,
  "objectFields": {
    "args": { "field.path": "ExtractedClassName" },
    "returns": { "field.path": "ExtractedClassName" }
  }
}
```

### ObjectBox functions file

```json
{ "functions": [{ "endpoint": "POST:/api/run/app/module/function" }] }
```

The builder enables ObjectBox generation for a function if either the mapping has `createBox: true` or the function endpoint appears in this list.

## 3) Core components and responsibilities

### Orchestrator: `convex_dart_builder/lib/builder.dart`

- `convexDartBuilder(BuilderOptions)`: Factory; ensures `input_file` is set.
- `ConvexDartBuilder.build(BuildStep)`: Entry point per build.
  - Reads schema, loads mapping/objectbox configs, filters HttpActions, parses with `FunctionsSpecMapper.fromJson`.
  - Wipes existing `.dart` files in the target `lib/` folder.
  - Builds using `FunctionsSpec.build(ClientBuildContext)`.
  - Writes `context.outputs` to disk and emits a `_ignore.dart` to trigger rebuilds.

### Codegen engine: `convex_dart_builder/lib/src/types.dart`

Mappable classes for the schema plus all codegen logic. Key types:

- `ClientBuildContext`: Accumulates outputs, literals, table names, and loaded configs.
- `FunctionBuildContext`: Buffers code, holds current-function context, nested path stack, and extracted-class tracking. Provides:
  - `setFieldContext/clearFieldContext` and `getCurrentFieldName/getCurrentFieldContext`
  - `pushFieldPath/popFieldPath/getFullFieldPath`
  - `getObjectFieldMapping(fieldName, fieldContext)`
  - `generateClassDefinition(className, JsObject)` to emit a full Dart model class
- `FunctionsSpec.build(context)`: Per function, generates operation file, request/response models, optional ObjectBox box/repo, then emits `src/client.dart`, `src/schema.dart`, `src/literals.dart`, and a top-level `client.dart` exporter. Formats all outputs.
- `FunctionSpec.build(context)`: Emits one function operation file (imports, args model class if any, returns typedef, operation variable, `serialize`/`deserialize`).

## 4) Type system and conversion rules

`JsType` hierarchy and their codegen behavior (dartType/serialize/deserialize):

- `JsAny` → `dynamic`
- `JsBoolean` → `bool`
- `JsString` → `String`
- `JsNumber` → `double`
- `JsBigInt` → `int`
- `JsBytes` → `Uint8ListWithEquality`
- `JsNull` → only used inside unions to indicate nullability
- `JsLiteral` → generates a dedicated literal class (see Literals below) and uses it for typing and runtime validation
- `JsUnion` → real unions map to `UnionN<T1,...,Tn>`; nullable unions append `?`; disallows mixing `JsString` and `ConvexId`, and mixing literal with non-literal types
- `JsRecord` → `IMap<String, V>`
- `JsArray` → `IList<T>`
- `ConvexId(tableName)` → Emits `TableId` wrapper type into `src/schema.dart` (e.g., `UsersId`) and uses it in types and (de)serialization
- `JsObject` → either inline record or extracted model class (see next section)

Optional fields are always generated as `Optional<T>` with `Defined/Undefined` handling in constructors, fromJson, and toJson.

## 5) Function generation (operations, serialize/deserialize)

For each function:

- Args type name is either:
  - `void` (for `JsAny` or empty `JsObject`), or
  - The request type name from mapping (`request`) or `functionName` in PascalCase.
- Returns type is a typedef `typedef <FunctionName>Response = <inferred type>` constructed from the `returns` schema.
- Operation variable emitted:
  - `QueryOperation`, `MutationOperation`, or `ActionOperation` depending on `functionType`.
  - Signature: `final <functionName> = <OperationType><Args, Returns>('folder:function', serialize, deserialize);`
- `serialize(Args)` builds a `BTreeMapStringValue` by converting fields using each `JsType.serialize(...)`. Optional fields are included only when `Defined`.
- `deserialize(DartValue)` decodes to `IMap` and uses `JsType.deserialize(...)`. If the top-level returns is not an object, the builder wraps it as `(body: ...)` to unify the return shape.

## 6) Request/Response model generation and nested extraction

### Request JSON models

If a function has structured args (`JsObject` with fields), the builder emits a standalone model in `src/models/json/<requestType>.dart` by replaying the class generated into `FunctionBuildContext.classBuffer`:

- Fields, `const` constructor (with defaults for `Optional`), `empty()`, `fromJson()`, `toJson()`, `copyWith()`, equality/hash, `toString()`.
- Extracted nested classes used by the request are tracked and imported automatically.

### Response JSON models

If mapping provides a `response` type name, the builder synthesizes a temporary function whose args mirror the `returns` object and reuses the same class generator to emit `src/models/json/<responseType>.dart`.

If mapping also provides `responseList` and the `returns` object has a `list: IList<JsObject>` field, the builder replaces the `list` element type with `<responseList>` and emits that list item model as a separate file too. It also rewrites the generated code to map `list` JSON to `responseList.fromJson(...)` items.

### Nested object extraction (mapping-driven)

`JsObject.dartType(...)` will attempt extraction when the object has multiple fields or nested objects by calling `_extractAsModelClass`. Extraction only occurs when a mapping name is found via `getObjectFieldMapping` in the current `fieldContext` (`"args"` or `"returns"`). If no mapping exists, the object stays inline as a Dart record type.

Nested paths are supported using a path stack in `FunctionBuildContext` and `getFullFieldPath(field)`, allowing keys like `"currentLocation.latLng"` in the mapping.

The extracted model file is emitted to `src/models/json/<class_snake>.dart` and includes:

- Full class with `empty/fromJson/toJson/copyWith/==/hashCode/toString`.
- Imports for any other extracted classes referenced in field types.

## 7) Literal and TableId generation (literals.dart, schema.dart)

### Literals

`JsLiteral` values generate small classes implementing `Literal` with a `validate` constructor used at deserialization time to enforce correctness. All literal classes used across the build are emitted into `src/literals.dart`.

### Table IDs

`ConvexId("table")` adds `table` to `ClientBuildContext.tables`. After all functions are processed, `FunctionsSpec.build` writes `src/schema.dart` containing one wrapper type per table:

```dart
class UsersId implements TableId { /* value:String, equality, hashCode, toString */ }
```

## 8) ObjectBox integration (when enabled)

ObjectBox generation is controlled by:

- Mapping `createBox: true` for a function key, or
- Presence of the function endpoint in `objectbox_functions_file`.

When enabled, the builder currently generates:

- A box model: `src/models/objectbox/box/<TypeName>_box.dart`
- A repository: `src/models/objectbox/repos/<TypeName>_repo.dart`

Important details:

- The class and filenames are based on the resolved ObjectBox target type name. If `responseList` is set, it takes precedence; otherwise `response`; otherwise defaults to the function name. However, the fields of the generated ObjectBox box are derived from the function args schema as it stands in the current implementation.
- Complex fields (`JsObject`, `JsArray`, `JsUnion`) are stored as JSON strings.
- Fields with names containing `At` or `Date` are stored as `@Property(type: PropertyType.dateNano)` integers, converted to/from doubles in `toMap()/fromMap()`.
- The repository provides basic CRUD helpers: create from map, get as map, get by id, put many from maps, remove many, get all, update from map, delete.
- The generated repo imports `package:api/objectbox.g.dart` (adjust if your package name differs).

## 9) Output structure and file content

Emitted files (relative to the schema’s `lib/` folder):

- `client.dart` (exports public surfaces)
  - Exports: `src/client.dart`, `src/schema.dart`, `src/literals.dart`, and all generated operations (hiding `serialize/deserialize`).
- `src/client.dart`
  - `ConvexClient.init(...)` that forwards to `convex_dart` runtime with the provided `url`.
- `src/functions/<module>/<functionName>.dart`
  - Operation variable, `typedef <FunctionName>Response = ...`, `serialize`, `deserialize`, and imports for request models when needed.
- `src/models/json/*.dart`
  - Request classes, response classes, and any extracted classes.
- `src/models/objectbox/box/*.dart` and `src/models/objectbox/repos/*.dart`
  - Only when ObjectBox is enabled by config.
- `src/literals.dart` and `src/schema.dart`
  - Aggregated literal classes and table-id wrappers.

All files include consistent `ignore_for_file` headers and import `package:convex_dart/src/convex_dart_for_generated_code.dart` for runtime types (`IList`, `IMap`, `encodeValue`, `decodeValue`, etc.).

## 10) Logging, errors, and known constraints

### Logging and validation

The builder prints helpful diagnostics during a run:

- Loaded endpoints from mapping and ObjectBox configs.
- Schema parsing success/failure and counts, including missing `args` fields.
- Functions filtered due to auth/.well-known HttpAction.
- Generated models per function (request/response/responseList) and ObjectBox decisions.

### Error handling

- JSON parse errors are surfaced and stop the build.
- Mapper parsing errors log the modified schema length and rethrow.
- Formatting failures are logged per file but do not stop emission of the unformatted content.

### Known constraints and notes

- Nested object extraction is mapping-driven. Without an `objectFields` mapping for a field path, complex objects remain inline as Dart records.
- Mixed-literal/non-literal unions are not supported and will throw.
- Unions that mix `String` and `ConvexId` are not supported and will throw (ambiguity).
- ObjectBox generation currently derives fields from the function args schema; review and adjust if you expect response-based persistence.
- The builder wipes all `.dart` files in the target `lib/` tree before emitting outputs; keep only generated code there.

---

This constitution reflects the current code paths and behaviors. If you change generator code (builder.dart or types.dart), update this document accordingly to keep it source-of-truth for contributors and users.
