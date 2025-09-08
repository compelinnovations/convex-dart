import 'package:dart_mappable/dart_mappable.dart';
import 'package:recase/recase.dart';
import 'package:path/path.dart' as path;
import 'package:collection/collection.dart';
import 'package:dart_style/dart_style.dart';
part 'types.mapper.dart';

final deepEqual = DeepCollectionEquality.unordered();
final formatter = DartFormatter(
  languageVersion: DartFormatter.latestLanguageVersion,
);

class ClientBuildContext {
  final Map<({String functionName, String folderName}), List<String>> typedefs =
      {};
  final Map<String, String> outputs = {};
  final Set<JsLiteral> literals = {};
  final Set<String> tables = {};
  ClientBuildContext();
}

class FunctionBuildContext {
  final StringBuffer headerBuffer = StringBuffer();
  final StringBuffer functionBuffer = StringBuffer();
  final StringBuffer typeBuffer = StringBuffer();
  final StringBuffer typedefBuffer = StringBuffer();

  final ClientBuildContext clientContext;
  final List<({JsObject type, String name})> typedefs = [];
  FunctionBuildContext(this.clientContext);
  String addTypedef(
    String fieldName,
    JsObject type,
    FunctionBuildContext context,
  ) {
    // If this type is already a typedef, then we can just return the name
    final existingTypedef = typedefs.firstWhereOrNull(
      (element) => deepEqual.equals(element.type.toJson(), type.toJson()),
    );

    if (existingTypedef != null) {
      return existingTypedef.name;
    }

    // Create a unique name for the typedef
    final originalName = "${fieldName.pascalCase}Typedef";
    String typedefName = originalName;
    int count = 0;
    while (typedefs.any((element) => element.name == typedefName)) {
      typedefName = originalName + count.toString();
      count++;
    }

    // Asert that we aren not overwriting an existing typedef
    if (typedefs.any((element) => element.name == typedefName)) {
      throw UnimplementedError(
        "We are overwriting an existing typedef: $typedefName",
      );
    }

    typedefs.add((type: type, name: typedefName));
    typedefBuffer.write(type.buildTypeDefinition(context, typedefName));
    return typedefName;
  }
}

@MappableClass()
class FunctionsSpec with FunctionsSpecMappable {
  final String url;
  List<FunctionSpec> functions;

  FunctionsSpec(this.url, this.functions);

  Future<void> build(ClientBuildContext context) async {
    // Create the functions
    for (final function in functions) {
      try {
        if (function.visibility.kind == VisibilityType.internal) {
          continue;
        }
        final functionContext = FunctionBuildContext(context);
        function.build(functionContext);
        final code =
            "${functionContext.headerBuffer}"
            "\n${functionContext.functionBuffer}"
            "\n${functionContext.typeBuffer}"
            "\n${functionContext.typedefBuffer}";
        final filePath = path.join(
          "src",
          "functions",
          function.folderName,
          function.fileName,
        );
        context.outputs[filePath] = code;
        // Add the typedefs to the global context
        for (final typedef in functionContext.typedefs) {
          final key = (
            functionName: function.functionName,
            folderName: function.folderName,
          );
          context.typedefs[key] = [
            ...context.typedefs[key] ?? [],
            typedef.name,
          ];
        }
      } catch (e) {
        print(
          "Failed to build function ${function.convexFunctionIdentifier}. Check the file and ensure it is valid.\nContents: $e",
        );
        rethrow;
      }
    }
    // Create the client.dart file
    buildClient(context);
    // Create the schema.dart file
    _buildSchema(context);
    // Create the literals.dart file
    _buildLiterals(context);
    // Creat the entrypoint file
    _buildEntrypoint(context);
    // Format the code
    for (final entry in context.outputs.entries) {
      context.outputs[entry.key] = formatter.format(entry.value);
    }
  }

  void _buildEntrypoint(ClientBuildContext context) {
    context.outputs["client.dart"] =
        """
export 'src/client.dart';
export 'src/schema.dart';
export 'src/literals.dart';
${functions.map((entry) => "export 'src/functions/${entry.folderName}/${entry.fileName}' show ${entry.functionName}, ${entry.argsTypeName}, ${entry.returnsTypeName};").join("\n")}
    """;
  }

  void _buildSchema(ClientBuildContext context) {
    final schemaBuffer = StringBuffer("""
// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "dart:typed_data";
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
part 'schema.mapper.dart';
""");
    for (final tableName in context.tables) {
      schemaBuffer.writeln("""
@MappableClass(includeCustomMappers: [_${tableName.pascalCase}IdMapper()])
class ${tableName.pascalCase}Id with ${tableName.pascalCase}IdMappable implements TableId {
  @override
  final String value;
  static const String tableName = "$tableName";
  const ${tableName.pascalCase}Id(this.value);
}

class _${tableName.pascalCase}IdMapper extends SimpleMapper<${tableName.pascalCase}Id> {
  const _${tableName.pascalCase}IdMapper();
  @override
  ${tableName.pascalCase}Id decode(dynamic value) {
    return ${tableName.pascalCase}Id(value);
  }
  @override
  dynamic encode(${tableName.pascalCase}Id self) {
    return self.value;
  }
}
""");
    }
    context.outputs[path.join("src", "schema.dart")] = schemaBuffer.toString();
  }

  void buildClient(ClientBuildContext context) {
    // Create the client.dart file
    context.outputs[path.join("src", "client.dart")] =
        """
// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
@internal.MappableLib(
  generateInitializerForScope: internal.InitializerScope.package,
)
library;

import 'package:convex_dart/src/convex_dart_for_generated_code.dart'
    as internal;
import './client.init.dart';
class ConvexClient {
  static Future<void> init() async {
    initializeMappers();
    await internal.ConvexClient.init(
      deploymentUrl: "$url",
      clientId: "flutter-rust-client",
    );
  }
}
    """;
    //     // Create the client.dart file
    //     context.outputs[path.join("src", "client.dart")] =
    //         """
    // // ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
    // // ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
    // // ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
    // @internal.MappableLib(
    //   generateInitializerForScope: internal.InitializerScope.package,
    // )
    // library;

    // import 'package:convex_dart/src/convex_dart_for_generated_code.dart'
    //     as internal;
    // import './client.init.dart';
    // ${context.typedefs.entries.map((entry) => "import './functions/${entry.key.folderName}/${entry.key.functionName}.dart' as ${entry.key.folderName}${entry.key.functionName.pascalCase};").join("\n")}
    // class ConvexClient {
    //   static Future<void> init() async {
    //     initializeMappers();
    //     ${context.typedefs.entries.map((entry) => entry.value.map((mapper) => "${entry.key.folderName}${entry.key.functionName.pascalCase}.${mapper}Mapper.ensureInitialized();").join("\n")).join("\n")}
    //     await internal.ConvexClient.init(
    //       deploymentUrl: "$url",
    //       clientId: "flutter-rust-client",
    //     );
    //   }
    // }
    //     """;
  }

  void _buildLiterals(ClientBuildContext context) {
    final literalsBuffer = StringBuffer("""
// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
""");
    if (context.literals.isNotEmpty) {
      literalsBuffer.writeln("part 'literals.mapper.dart';");
    }
    for (final literal in context.literals) {
      literalsBuffer.writeln(literal._literalCode);
    }
    context.outputs[path.join("src", "literals.dart")] = literalsBuffer
        .toString();
  }
}

@MappableEnum(mode: ValuesMode.named)
enum FunctionType {
  @MappableValue('Query')
  query,
  @MappableValue('Mutation')
  mutation,
  @MappableValue('Action')
  action,
}

@MappableEnum(mode: ValuesMode.named)
enum VisibilityType {
  @MappableValue('public')
  public,
  @MappableValue('internal')
  internal,
}

@MappableClass()
class Visibility with VisibilityMappable {
  final VisibilityType kind;
  const Visibility(this.kind);
}

@MappableClass()
class FunctionSpec with FunctionSpecMappable {
  final JsType args;
  final JsType returns;
  final FunctionType functionType;
  final String identifier;
  final Visibility visibility;
  const FunctionSpec(
    this.args,
    this.returns,
    this.functionType,
    this.identifier,
    this.visibility,
  );
  // The name of the folder where the function will be created
  String get folderName {
    final jsFileName = identifier.split(":").first;
    final baseName = path.basenameWithoutExtension(jsFileName);
    return baseName;
  }

  String get fileName {
    return "$functionName.dart";
  }

  String get functionName {
    return identifier.split(":").last;
  }

  String get convexFunctionIdentifier {
    return "$folderName:$functionName";
  }

  // The name of the typedef for the arguments
  // e.g. "MyFunctionArgs or void"
  String get argsTypeName {
    switch (args) {
      case JsAny():
        return "void";
      case JsObject():
        return "${functionName.pascalCase}Args";
      default:
        throw UnimplementedError(
          "Unsupported argument type: ${args.type} for the function $functionName.",
        );
    }
  }

  String get returnsTypeName => "${functionName.pascalCase}Response";

  void build(FunctionBuildContext context) {
    context.headerBuffer.write("""
// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
part '${fileName.substring(0, fileName.length - 5)}.mapper.dart';
""");

    switch (args) {
      case JsObject obj:
        context.typeBuffer.write(obj.buildClassCode(context, argsTypeName));
      default:
        throw ArgumentError(
          'Function arguments must be either JsAny (for dynamic/any type) or JsObject (for structured object types). '
          'Found: ${args.type} for the function $functionName.',
        );
    }

    final JsObject returnsObject = switch (returns) {
      JsObject obj => obj,
      _ => JsObject({"body": JsField(returns, false)}, "object"),
    };
    context.typeBuffer.write(
      returnsObject.buildClassCode(context, returnsTypeName),
    );
    final opperationType = switch (functionType) {
      FunctionType.query => "QueryOperation",
      FunctionType.mutation => "MutationOperation",
      FunctionType.action => "ActionOperation",
    };
    context.headerBuffer.write("""
final $functionName = $opperationType<$argsTypeName,$returnsTypeName>("$convexFunctionIdentifier", (input) => ${args is JsAny ? "{}" : "input.toMap()"},  (result) => ${returnsTypeName}Mapper.fromMap(result));
""");
  }
}

@MappableClass()
class JsField with JsFieldMappable {
  final JsType fieldType;
  final bool optional;
  const JsField(this.fieldType, this.optional);
  String dartType(FunctionBuildContext context, {required String? fieldName}) {
    String type = fieldType.dartType(context, fieldName: fieldName);
    if (optional) {
      type = "Optional<$type>";
    }
    return type;
  }
}

@MappableClass(discriminatorKey: 'type')
sealed class JsType with JsTypeMappable {
  final String type;

  const JsType(this.type);
  String dartType(FunctionBuildContext context, {String? fieldName});
}

@MappableClass(discriminatorValue: 'any')
class JsAny extends JsType with JsAnyMappable {
  const JsAny(super.type);
  @override
  String dartType(FunctionBuildContext context, {String? fieldName}) =>
      'dynamic';
}

@MappableClass(discriminatorValue: 'boolean')
class JsBoolean extends JsType with JsBooleanMappable {
  const JsBoolean(super.type);
  @override
  String dartType(FunctionBuildContext context, {String? fieldName}) => 'bool';
}

@MappableClass(discriminatorValue: 'string')
class JsString extends JsType with JsStringMappable {
  const JsString(super.type);
  @override
  String dartType(FunctionBuildContext context, {String? fieldName}) =>
      'String';
}

@MappableClass(discriminatorValue: 'number')
class JsNumber extends JsType with JsNumberMappable {
  const JsNumber(super.type);
  @override
  String dartType(FunctionBuildContext context, {String? fieldName}) =>
      'double';
}

@MappableClass(discriminatorValue: 'null')
class JsNull extends JsType with JsNullMappable {
  const JsNull(super.type);
  @override
  String dartType(FunctionBuildContext context, {String? fieldName}) => 'void';
}

@MappableClass(discriminatorValue: 'bigint')
class JsBigInt extends JsType with JsBigIntMappable {
  const JsBigInt(super.type);
  @override
  String dartType(FunctionBuildContext context, {String? fieldName}) => 'int';
}

@MappableClass(discriminatorValue: 'bytes')
class JsBytes extends JsType with JsBytesMappable {
  const JsBytes(super.type);
  @override
  String dartType(FunctionBuildContext context, {String? fieldName}) =>
      'Uint8List';
}

@MappableClass(discriminatorValue: 'literal')
class JsLiteral extends JsType with JsLiteralMappable {
  final dynamic value;
  const JsLiteral(this.value, super.type);

  /// The name of the class which we will generate for this literal
  String get _literalTypeName {
    // Remove any non-alphanumeric characters
    String buildValue = value.toString().replaceAll(
      RegExp(r'[^a-zA-Z0-9]'),
      '',
    );
    // Add "Literal" Suffix
    buildValue = "${buildValue}Literal";
    // Convert to pascal case
    buildValue = buildValue.pascalCase;
    // Append a dollar sign to the value
    buildValue = "\$$buildValue";
    return buildValue;
  }

  // The code of the literal class
  String get _literalCode {
    // Ensure that this literal type can be encoded
    if (value is! String &&
        value is! int &&
        value is! double &&
        value is! bool &&
        value != null) {
      throw UnimplementedError(
        "Unsupported literal type: ${value.runtimeType} for value: $value",
      );
    }

    final dynamic valueString;
    if (value is String) {
      valueString = "'$value'";
    } else if (value is int) {
      // It is not possible to use a int literal at this time
      // https://github.com/get-convex/convex-backend/issues/212
      // This means that we can work around issue
      // https://github.com/get-convex/convex-backend/issues/213
      // by converting the int to a double
      valueString = (value as int).toDouble();
    } else {
      valueString = value;
    }
    return """
@MappableClass(includeCustomMappers: [_${_literalTypeName}Mapper()])
class $_literalTypeName  with ${_literalTypeName}Mappable implements Literal {
  const $_literalTypeName();
  @override
  final value = $valueString; 
}

class _${_literalTypeName}Mapper extends SimpleMapper<$_literalTypeName> {
  const _${_literalTypeName}Mapper();
  @override
  $_literalTypeName decode(dynamic value) {
      assert(value == $valueString);
      return $_literalTypeName();
  }
  @override
  dynamic encode($_literalTypeName self) {
    return self.value;
  }
}



""";
  }

  @override
  String dartType(FunctionBuildContext context, {String? fieldName}) {
    context.clientContext.literals.add(this);
    return _literalTypeName;
  }
}

@MappableClass(discriminatorValue: 'union')
class JsUnion extends JsType with JsUnionMappable {
  final List<JsType> value;
  const JsUnion(this.value, super.type);

  // Whether this uses the real union type, or is only a nullable type
  bool get isRealUnion => value.where((e) => e is! JsNull).length > 1;

  @override
  String dartType(FunctionBuildContext context, {String? fieldName}) {
    final realTypes = value.where((e) => e is! JsNull).toList();
    final containsNull = value.any((e) => e is JsNull);
    if (realTypes.length > 9) {
      throw UnimplementedError(
        "Union types with more than 9 types are not supported. If you need more, feel free to submit an issue on GitHub.",
      );
    }
    if (realTypes.isEmpty) {
      throw UnimplementedError(
        "Your union most contain at least one type which is not null.",
      );
    }
    String type;
    // If there is only one type, then we can just return the type
    if (realTypes.length == 1) {
      type = realTypes[0].dartType(context);
    } else {
      // If there are multiple types, then we need to create a union type
      type =
          "Union${realTypes.length}<${realTypes.map((e) => e.dartType(context)).join(', ')}>";
    }
    if (containsNull) {
      type = "$type?";
    }
    return type;
  }
}

@MappableClass(discriminatorValue: 'record')
class JsRecord extends JsType with JsRecordMappable {
  final JsType keys;
  final JsField values;
  const JsRecord(this.keys, this.values, super.type);
  @override
  String dartType(FunctionBuildContext context, {String? fieldName}) {
    if (keys is! JsString) {
      throw UnimplementedError(
        "Record keys must be a string. If you are seeing this, please file an issue on GitHub.",
      );
    }
    return "Map<String, ${values.dartType(context, fieldName: null)}>";
  }
}

@MappableClass(discriminatorValue: 'object')
class JsObject extends JsType with JsObjectMappable {
  final Map<String, JsField> value;
  const JsObject(this.value, super.type);

  Iterable<MapEntry<String, JsField>> get optionalFields =>
      value.entries.where((entry) => entry.value.optional);

  String buildClassCode(FunctionBuildContext context, String className) {
    if (value.values.any((element) => element.fieldType is JsNull)) {
      throw UnimplementedError(
        "Objects cannot contains a field which only is only null. If you are seeing this, please file an issue on GitHub.",
      );
    }

    final annotation =
        "@MappableClass(hook: RemoveUndefinedFields([${optionalFields.map((entry) => "'${entry.key}'").join(",")}]),includeCustomMappers: convexMappers)";

    final fieldsBuffer = StringBuffer();
    for (final entry in value.entries) {
      fieldsBuffer.writeln(
        "  final ${entry.value.dartType(context, fieldName: entry.key)} ${entry.key};",
      );
    }
    final argsBuffer = StringBuffer();
    if (value.isNotEmpty) {
      argsBuffer.write("{");
      for (final entry in value.entries) {
        if (entry.value.dartType(context, fieldName: entry.key).endsWith("?")) {
          argsBuffer.writeln("this.${entry.key},");
        } else {
          argsBuffer.writeln("required this.${entry.key},");
        }
      }
      argsBuffer.write("}");
    }

    return """
$annotation
class $className with ${className}Mappable {
  $fieldsBuffer
  const $className($argsBuffer);
}
""";
  }

  @override
  String dartType(FunctionBuildContext context, {String? fieldName}) {
    return context.addTypedef(fieldName ?? "", this, context);
  }

  String buildTypeDefinition(FunctionBuildContext context, String name) {
    return buildClassCode(context, name);

    final annotation =
        "@MappableRecord(hook: RemoveUndefinedFields([${optionalFields.map((entry) => "'${entry.key}'").join(",")}]),includeCustomMappers: convexMappers)";
    final record =
        "({${value.entries.map((entry) => "${entry.value.dartType(context, fieldName: entry.key)} ${entry.key}").join(",")}})";
    return "$annotation\ntypedef $name = $record;\n";
  }
}

@MappableClass(discriminatorValue: 'array')
class JsArray extends JsType with JsArrayMappable {
  final JsType value;
  const JsArray(this.value, super.type);
  @override
  String dartType(FunctionBuildContext context, {String? fieldName}) {
    return "List<${value.dartType(context)}>";
  }
}

@MappableClass(discriminatorValue: 'id')
class ConvexId extends JsType with ConvexIdMappable {
  final String tableName;
  const ConvexId(this.tableName, super.type);
  @override
  String dartType(FunctionBuildContext context, {String? fieldName}) {
    context.clientContext.tables.add(tableName);
    return "${tableName.pascalCase}Id";
  }
}
