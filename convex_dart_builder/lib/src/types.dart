import 'package:dart_mappable/dart_mappable.dart';
import 'package:recase/recase.dart';
import 'package:path/path.dart' as path;
import 'package:collection/collection.dart';
import 'package:dart_style/dart_style.dart';
import 'dart:math' as math;
import 'dart:developer';
part 'types.mapper.dart';

final deepEqual = DeepCollectionEquality.unordered();
final formatter = DartFormatter(
  languageVersion: DartFormatter.latestLanguageVersion,
);
final random = math.Random();

/// Generate HTTP endpoint key from convex identifier string
String _generateHttpEndpointKeyFromString(String convexIdentifier) {
  // Parse convex identifier like "fieldAgentAuth:getMyFieldAgentProfile"
  final parts = convexIdentifier.split(':');
  if (parts.length == 2) {
    final moduleName =
        parts[0]; // e.g., "fieldAgentAuth" or "fieldAgentCashCount"
    final functionName = parts[1]; // e.g., "getMyFieldAgentProfile"

    // Direct mapping: module name is already the category in the new structure
    return "POST:/api/run/app/$moduleName/$functionName";
  }
  return '';
}

String _dartSafeName(String name) {
  if (name.startsWith("_")) {
    name = "\$$name";
  }
  if (_dartKeywords.contains(name)) {
    name = "\$$name";
  }
  return name;
}

String _httpEndpointKeyForFunction(FunctionSpec function) {
  final identifier = function.identifier;
  final parts = identifier.split(':');
  if (parts.length == 2) {
    final filePath = parts[0];
    final functionName = parts[1];
    final pathParts = filePath.split('/');
    if (pathParts.length >= 2) {
      final fileName = pathParts.last;
      final moduleName = fileName.replaceAll('.js', '');
      final httpMethod = function.functionType == FunctionType.query
          ? 'GET'
          : 'POST';
      return "$httpMethod:/api/run/app/$moduleName/$functionName";
    }
  }
  return '';
}

class ClientBuildContext {
  final Map<String, String> outputs = {};
  final Set<JsLiteral> literals = {};
  final Set<String> tables = {};
  final Map<String, dynamic>? mappingData;
  final Map<String, dynamic>? objectBoxFunctionsData;

  ClientBuildContext({this.mappingData, this.objectBoxFunctionsData});
}

class ObjectFieldMapping {
  final String name;
  final String? type;
  final String? relation;
  final Map<String, dynamic>? metadata;

  const ObjectFieldMapping({
    required this.name,
    this.type,
    this.relation,
    this.metadata,
  });

  bool get isEmbedded => (type ?? '').toLowerCase() == 'embedded';

  bool get isRelation {
    final normalized = (type ?? '').toLowerCase();
    return normalized == 'relation' || normalized == 'entity';
  }

  String get relationKind => relation ?? 'ToOne';
}

String _objectBoxEmbeddedClassName(String baseName) {
  final recased = ReCase(baseName).pascalCase;
  if (recased.isEmpty) {
    return 'EmbeddedObject';
  }
  return recased.endsWith('Embedded') ? recased : '${recased}Embedded';
}

/// Resolves ObjectBox field names for special fields.
///
/// ObjectBox doesn't support field names with `$` prefix, so we need to rename:
/// - `_creationTime` -> `creationTime` (remove underscore)
/// - `_id` -> `dbId` or `idRef` (depending on schema)
///
/// For other fields, we use `_dartSafeName()` which adds `$` for underscore-prefixed names.
/// However, since ObjectBox can't handle `$`, we strip it for ObjectBox-only fields.
String _resolveObjectBoxFieldName(String originalName, bool hasDbIdField) {
  if (originalName == '_creationTime') {
    return 'creationTime';
  }
  if (originalName == '_id' && !hasDbIdField) {
    return 'dbId';
  }
  if (originalName == '_id' && hasDbIdField) {
    return 'idRef';
  }
  return _dartSafeName(originalName);
}

class _ObjectBoxFieldContext {
  final String originalName;
  final String fieldName;
  final JsField field;
  final ObjectFieldMapping? mapping;
  final bool isEmbedded;
  final String? embeddedClassName;
  final JsObject? embeddedSchema;
  final bool isDateField;
  final bool storeAsJson;
  final String objectBoxType;

  const _ObjectBoxFieldContext({
    required this.originalName,
    required this.fieldName,
    required this.field,
    required this.mapping,
    required this.isEmbedded,
    required this.embeddedClassName,
    required this.embeddedSchema,
    required this.isDateField,
    required this.storeAsJson,
    required this.objectBoxType,
  });
}

class _EmbeddedClassDefinition {
  final String name;
  final List<_ObjectBoxFieldContext> fields;

  const _EmbeddedClassDefinition(this.name, this.fields);
}

ObjectFieldMapping? _parseObjectFieldMapping(dynamic raw) {
  if (raw is String) {
    return raw.isEmpty ? null : ObjectFieldMapping(name: raw);
  }

  if (raw is Map<String, dynamic>) {
    final name = raw['name'] as String?;
    if (name == null || name.isEmpty) {
      return null;
    }
    final type = raw['type'] as String?;
    final relation = raw['relation'] as String?;
    return ObjectFieldMapping(
      name: name,
      type: type,
      relation: relation,
      metadata: raw,
    );
  }

  return null;
}

ObjectFieldMapping? _findObjectFieldMapping(
  Map<String, dynamic>? mappingData,
  Iterable<String> functionIdentifiers,
  String fieldContext,
  Iterable<String> fieldPathCandidates,
) {
  if (mappingData == null || mappingData.isEmpty) {
    return null;
  }

  for (final identifier in functionIdentifiers) {
    if (!mappingData.containsKey(identifier)) {
      continue;
    }

    final functionMapping = mappingData[identifier] as Map<String, dynamic>?;
    if (functionMapping == null) {
      continue;
    }

    final objectFields =
        functionMapping['objectFields'] as Map<String, dynamic>?;
    if (objectFields == null) {
      continue;
    }

    final contextFields = objectFields[fieldContext] as Map<String, dynamic>?;
    if (contextFields == null) {
      continue;
    }

    final normalizedFields = <String, dynamic>{}..addAll(contextFields);
    for (final entry in contextFields.entries) {
      if (entry.key.startsWith('list.')) {
        normalizedFields[entry.key.substring(5)] = entry.value;
      }
    }

    for (final candidate in fieldPathCandidates) {
      final mapping = _parseObjectFieldMapping(normalizedFields[candidate]);
      if (mapping != null) {
        return mapping;
      }
    }
  }

  return null;
}

class FunctionBuildContext {
  final StringBuffer headerBuffer = StringBuffer();
  final StringBuffer functionBuffer = StringBuffer();
  final StringBuffer typedefBuffer = StringBuffer();
  final StringBuffer classBuffer = StringBuffer();

  final ClientBuildContext clientContext;
  FunctionSpec? currentFunction;
  String? _currentFieldContext;
  String? _currentFieldName;
  final List<String> _fieldPathStack = <String>[];
  final Set<String> _extractedClasses = <String>{};
  FunctionBuildContext(this.clientContext, {this.currentFunction});

  /// Get object field mapping for current function context
  ObjectFieldMapping? getObjectFieldMapping(
    String fieldName,
    String fieldContext,
  ) {
    if (currentFunction == null || clientContext.mappingData == null) {
      return null;
    }

    final functionIdentifiers = <String>{
      currentFunction!.identifier,
      _generateHttpEndpointKey(currentFunction!),
    }..removeWhere((element) => element.isEmpty);

    final fieldCandidates = <String>{};

    void addCandidate(String? key) {
      if (key == null || key.isEmpty) {
        return;
      }
      fieldCandidates.add(key);
      if (key.startsWith('list.')) {
        fieldCandidates.add(key.substring(5));
      } else {
        fieldCandidates.add('list.$key');
      }
    }

    addCandidate(fieldName);
    final fullFieldPath = getFullFieldPath(fieldName);
    if (fullFieldPath.isNotEmpty && fullFieldPath != fieldName) {
      addCandidate(fullFieldPath);
    }

    return _findObjectFieldMapping(
      clientContext.mappingData,
      functionIdentifiers,
      fieldContext,
      fieldCandidates,
    );
  }

  String _generateHttpEndpointKey(FunctionSpec function) {
    return _httpEndpointKeyForFunction(function);
  }

  /// Set current field context for object extraction
  void setFieldContext(String fieldName, String fieldContext) {
    _currentFieldName = fieldName;
    _currentFieldContext = fieldContext;
  }

  /// Clear current field context
  void clearFieldContext() {
    _currentFieldName = null;
    _currentFieldContext = null;
  }

  /// Get current field name
  String getCurrentFieldName() {
    return _currentFieldName ?? '';
  }

  /// Get current field context
  String getCurrentFieldContext() {
    return _currentFieldContext ?? '';
  }

  /// Push a field onto the path stack for nested processing
  void pushFieldPath(String fieldName) {
    _fieldPathStack.add(fieldName);
  }

  /// Pop the last field from the path stack
  void popFieldPath() {
    if (_fieldPathStack.isNotEmpty) {
      _fieldPathStack.removeLast();
    }
  }

  /// Get the full field path including all parent contexts
  String getFullFieldPath(String fieldName) {
    if (_fieldPathStack.isEmpty) {
      return fieldName;
    }
    return "${_fieldPathStack.join(".")}.$fieldName";
  }

  /// Track extracted class usage from field type strings
  void _trackExtractedClassUsage(String fieldType, Set<String> usedClasses) {
    // Extract class names from field type (handles Optional<ClassName>, ClassName, etc.)
    final extractedClassPattern = RegExp(r'\b([A-Z][a-zA-Z0-9_]*)\b');
    final matches = extractedClassPattern.allMatches(fieldType);

    for (final match in matches) {
      final className = match.group(1)!;
      // Only track classes that are likely extracted model classes (start with uppercase)
      // and exclude built-in types
      if (!_isBuiltInType(className)) {
        usedClasses.add(className);
      }
    }
  }

  /// Check if a type name is a built-in Dart or package type
  bool _isBuiltInType(String typeName) {
    const builtInTypes = {
      'String',
      'double',
      'int',
      'bool',
      'List',
      'Map',
      'Object',
      'Type',
      'Optional',
      'Defined',
      'Undefined',
      'IMap',
      'IList',
      'Union4',
      'DartValue',
      'BTreeMapStringValue',
      'Uint8List',
    };
    // Table IDs (like StorageId, FieldAgentsId, etc.) are defined in schema.dart
    // so they should not be imported as separate model files
    return builtInTypes.contains(typeName) || typeName.startsWith('\$') || typeName.endsWith('Id');
  }

  void generateClassDefinition(
    String className,
    JsObject obj, [
    String? fieldContext,
  ]) {
    if (obj.value.isEmpty) {
      return; // Skip empty objects
    }

    classBuffer.writeln('class $className {');

    // Add fields
    for (final entry in obj.value.entries) {
      // Set field context for nested object processing - use provided fieldContext or default to "args"
      final currentFieldContext = fieldContext ?? "args";
      setFieldContext(entry.key, currentFieldContext);
      final fieldType = entry.value.dartType(this);
      clearFieldContext();
      final fieldName = _dartSafeName(entry.key);
      classBuffer.writeln('  final $fieldType $fieldName;');
    }

    classBuffer.writeln();

    // Add constructor
    classBuffer.writeln('  const $className({');
    for (final entry in obj.value.entries) {
      final fieldName = _dartSafeName(entry.key);
      if (entry.value.optional) {
        classBuffer.writeln('    this.$fieldName = const Undefined(),');
      } else {
        classBuffer.writeln('    required this.$fieldName,');
      }
    }
    classBuffer.writeln('  });');

    classBuffer.writeln();

    // Add empty() factory constructor
    classBuffer.writeln('  factory $className.empty() {');
    classBuffer.writeln('    return $className(');
    for (final entry in obj.value.entries) {
      final fieldName = _dartSafeName(entry.key);
      if (entry.value.optional) {
        // Optional fields use Undefined() as default
        // No need to specify them in constructor call since constructor has default
      } else {
        // Required fields need proper default values - use context-aware defaults
        setFieldContext(fieldName, fieldContext ?? "args");

        // Check if this field should use an extracted class
        final mapping = getObjectFieldMapping(
          fieldName,
          getCurrentFieldContext(),
        );
        final extractedClassName = mapping?.name;
        String defaultValue;
        if (extractedClassName != null && entry.value.fieldType is JsObject) {
          defaultValue = '$extractedClassName.empty()';
        } else {
          defaultValue = _getDefaultValueForType(entry.value.fieldType);
        }

        clearFieldContext();
        classBuffer.writeln('      $fieldName: $defaultValue,');
      }
    }
    classBuffer.writeln('    );');
    classBuffer.writeln('  }');

    classBuffer.writeln();

    // Add fromJson factory constructor
    classBuffer.writeln(
      '  factory $className.fromJson(Map<String, dynamic> json) {',
    );
    classBuffer.writeln('    return $className(');
    for (final entry in obj.value.entries) {
      final fieldName = _dartSafeName(entry.key);
      final jsonKey = entry.key;
      final fieldType = entry.value.fieldType;

      // Set field context for this field
      setFieldContext(fieldName, fieldContext ?? "args");

      // Check if this field should use an extracted class
      final mapping = getObjectFieldMapping(
        fieldName,
        getCurrentFieldContext(),
      );
      final extractedClassName = mapping?.name;
      String fromJsonValue;
      if (extractedClassName != null && fieldType is JsObject) {
        fromJsonValue =
            '$extractedClassName.fromJson(json[\'$jsonKey\'] as Map<String, dynamic>)';
      } else {
        fromJsonValue = _generateFromJsonValue(
          fieldType,
          "json['$jsonKey']",
          fieldName: fieldName,
        );
      }

      // Clear field context
      clearFieldContext();

      if (entry.value.optional) {
        classBuffer.writeln(
          '      $fieldName: json[\'$jsonKey\'] != null ? Defined($fromJsonValue) : const Undefined(),',
        );
      } else {
        classBuffer.writeln('      $fieldName: $fromJsonValue,');
      }
    }
    classBuffer.writeln('    );');
    classBuffer.writeln('  }');

    classBuffer.writeln();

    // Add toJson method
    classBuffer.writeln('  Map<String, dynamic> toJson() {');
    classBuffer.writeln('    return {');
    for (final entry in obj.value.entries) {
      final fieldName = _dartSafeName(entry.key);
      final jsonKey = entry.key;
      final fieldType = entry.value.fieldType;

      if (entry.value.optional) {
        classBuffer.writeln(
          '      if ($fieldName.isDefined) \'$jsonKey\': ${_generateToJsonValue(fieldType, "$fieldName.asDefined().value")},',
        );
      } else {
        classBuffer.writeln(
          '      \'$jsonKey\': ${_generateToJsonValue(fieldType, fieldName)},',
        );
      }
    }
    classBuffer.writeln('    };');
    classBuffer.writeln('  }');

    classBuffer.writeln();

    // Add copyWith method
    classBuffer.writeln('  $className copyWith({');
    for (final entry in obj.value.entries) {
      final fieldName = _dartSafeName(entry.key);

      // Set field context for proper type resolution
      setFieldContext(fieldName, fieldContext ?? "args");
      final fieldType = entry.value.dartType(this);
      clearFieldContext();

      // For copyWith, add ? only if the type is not already nullable
      final copyWithType = fieldType.endsWith('?') ? fieldType : '$fieldType?';
      classBuffer.writeln('    $copyWithType $fieldName,');
    }
    classBuffer.writeln('  }) {');
    classBuffer.writeln('    return $className(');
    for (final entry in obj.value.entries) {
      final fieldName = _dartSafeName(entry.key);
      classBuffer.writeln('      $fieldName: $fieldName ?? this.$fieldName,');
    }
    classBuffer.writeln('    );');
    classBuffer.writeln('  }');

    classBuffer.writeln();

    // Add equals method
    classBuffer.writeln('  @override');
    classBuffer.writeln('  bool operator ==(Object other) {');
    classBuffer.writeln('    if (identical(this, other)) return true;');
    classBuffer.writeln('    return other is $className &&');

    final entries = obj.value.entries.toList();
    for (int i = 0; i < entries.length; i++) {
      final entry = entries[i];
      final fieldName = _dartSafeName(entry.key);
      final isLast = i == entries.length - 1;

      if (isLast) {
        classBuffer.writeln('        other.$fieldName == $fieldName;');
      } else {
        classBuffer.writeln('        other.$fieldName == $fieldName &&');
      }
    }
    classBuffer.writeln('  }');

    classBuffer.writeln();

    // Add hashCode method
    classBuffer.writeln('  @override');
    classBuffer.writeln('  int get hashCode {');
    classBuffer.write('    return ');

    for (int i = 0; i < entries.length; i++) {
      final entry = entries[i];
      final fieldName = _dartSafeName(entry.key);
      final isLast = i == entries.length - 1;

      if (isLast) {
        classBuffer.writeln('$fieldName.hashCode;');
      } else {
        classBuffer.write('$fieldName.hashCode ^ ');
      }
    }
    classBuffer.writeln('  }');

    classBuffer.writeln();

    // Add toString method
    classBuffer.writeln('  @override');
    classBuffer.writeln('  String toString() {');
    classBuffer.writeln('    return toJson().toString();');
    classBuffer.writeln('  }');

    classBuffer.writeln('}');
    classBuffer.writeln();
  }

  String _dartSafeName(String name) {
    if (name.startsWith("_")) {
      name = "\$$name";
    }
    if (_dartKeywords.contains(name)) {
      name = "\$$name";
    }
    return name;
  }

  String _generateFromJsonValue(
    JsType fieldType,
    String jsonValue, {
    String fieldName = '',
  }) {
    return switch (fieldType) {
      JsString _ => '$jsonValue as String',
      JsNumber _ => '$jsonValue as double',
      JsBigInt _ => '$jsonValue as int',
      JsBoolean _ => '$jsonValue as bool',
      JsArray array => _generateArrayFromJson(array, jsonValue),
      JsObject obj => _generateObjectFromJson(
        obj,
        jsonValue,
        fieldName: fieldName,
      ),
      JsUnion union => _generateUnionFromJson(union, jsonValue),
      ConvexId convexId => "${convexId.typeName}($jsonValue as String)",
      JsLiteral literal => _generateLiteralFromJson(literal, jsonValue),
      _ => jsonValue, // fallback for complex types
    };
  }

  String _generateObjectFromJson(
    JsObject obj,
    String jsonValue, {
    String fieldName = '',
  }) {
    // For record types, we need to reconstruct them properly
    if (obj.value.isEmpty) {
      return "null";
    }

    // Check if this field should be extracted as a separate class
    if (fieldName.isNotEmpty) {
      // We need access to the FunctionBuildContext here, but this method doesn't have it
      // For now, return the default handling - the context-aware casting will be handled elsewhere
    }

    // For simple objects, use the default handling
    return jsonValue;
  }

  String _generateUnionFromJson(JsUnion union, String jsonValue) {
    // For unions, especially literal unions, we need special handling
    // For now, keep it simple
    return jsonValue;
  }

  String _generateLiteralFromJson(JsLiteral literal, String jsonValue) {
    // For literals, we need to validate the value
    return "${literal.literalTypeName}.validate($jsonValue)";
  }

  String _generateArrayFromJson(JsArray array, String jsonValue) {
    // Handle array types by converting to IList
    final elementType = array.value;

    if (elementType is JsString) {
      return "($jsonValue as List<dynamic>).cast<String>().toIList()";
    } else if (elementType is JsNumber) {
      return "($jsonValue as List<dynamic>).cast<double>().toIList()";
    } else if (elementType is JsBoolean) {
      return "($jsonValue as List<dynamic>).cast<bool>().toIList()";
    } else if (elementType is ConvexId) {
      return "($jsonValue as List<dynamic>).map((e) => ${elementType.typeName}(e as String)).toList().toIList()";
    } else {
      // For complex types (objects, unions, etc.), cast directly without type specification
      // This allows Dart to infer the correct type from context
      return "($jsonValue as List).cast()";
    }
  }

  String _generateToJsonValue(JsType fieldType, String fieldValue) {
    // Simple conversion for basic types
    return fieldValue; // Most types can be serialized as-is
  }

  String _getDefaultValueForType(JsType fieldType) {
    return switch (fieldType) {
      JsString _ => "''",
      JsNumber _ => "0.0",
      JsBigInt _ => "0",
      JsBoolean _ => "false",
      JsArray array => _getDefaultValueForArray(array),
      JsObject obj => _getDefaultValueForObject(obj),
      JsUnion union => _getDefaultValueForUnion(union),
      ConvexId convexId => "${convexId.typeName}('')",
      JsLiteral literal => "const ${literal.literalTypeName}()",
      _ => "null", // Fallback for complex types
    };
  }

  String _getDefaultValueForObject(JsObject obj) {
    if (obj.value.isEmpty) {
      return "()"; // Empty record
    }
    // For complex objects, create empty record with default values
    final entries = obj.value.entries
        .map((entry) {
          final fieldName = _dartSafeName(entry.key);
          if (entry.value.optional) {
            return "$fieldName: const Undefined()";
          } else {
            final defaultValue = _getDefaultValueForType(entry.value.fieldType);
            return "$fieldName: $defaultValue";
          }
        })
        .join(', ');
    return "($entries)";
  }

  String _getDefaultValueForUnion(JsUnion union) {
    // For unions, use the first non-null type's default, properly wrapped
    final realTypes = union.value.where((e) => e is! JsNull).toList();
    if (realTypes.isNotEmpty) {
      final firstType = realTypes.first;
      final defaultValue = _getDefaultValueForType(firstType);

      // For union types, we need to create the proper Union constructor
      if (realTypes.length == 1) {
        return defaultValue;
      } else {
        // Create the union with the first type as the selected variant
        final unionTypeName = "Union${realTypes.length}";
        return "$unionTypeName($defaultValue)";
      }
    }
    return "null";
  }

  String _getDefaultValueForArray(JsArray array) {
    // For arrays, we need to provide the correct empty IList with proper typing
    final elementType = array.value;

    if (elementType is ConvexId) {
      return "<${elementType.typeName}>[].toIList()";
    } else if (elementType is JsString) {
      return "<String>[].toIList()";
    } else if (elementType is JsNumber) {
      return "<double>[].toIList()";
    } else if (elementType is JsBoolean) {
      return "<bool>[].toIList()";
    } else {
      // For complex types (records, unions, objects), use typed empty list
      return "<dynamic>[].toIList()";
    }
  }
}

@MappableClass()
class FunctionsSpec with FunctionsSpecMappable {
  final String url;
  List<FunctionSpec> functions;

  FunctionsSpec(this.url, this.functions);

  Future<void> build(ClientBuildContext context) async {
    final successFunctions = <FunctionSpec>[];
    // Create the functions
    for (final function in functions) {
      try {
        if (function.visibility.kind == VisibilityType.internal) {
          continue;
        }
        final functionContext = FunctionBuildContext(
          context,
          currentFunction: function,
        );
        function.build(functionContext);
        final code =
            "${functionContext.headerBuffer}"
            "\n${functionContext.functionBuffer}"
            "\n${functionContext.typedefBuffer}";
        final filePath = path.join(
          "src",
          "functions",
          function.folderName,
          function.fileName,
        );
        context.outputs[filePath] = code;

        // Get custom type names from configuration
        final customNames = _getCustomTypeNames(context, function);

        // Generate REQUEST JSON models if the function has argument classes
        if (function.args is JsObject &&
            (function.args as JsObject).value.isNotEmpty) {
          final jsonModelCode = _buildJsonModel(functionContext, function);
          final requestTypeName =
              customNames['requestType'] ?? function.functionName;

          final jsonModelPath = path.join(
            "src",
            "models",
            "json",
            "${requestTypeName.snakeCase}.dart",
          );
          context.outputs[jsonModelPath] = jsonModelCode;
          print(
            "DEBUG: Generated request JSON model: ${requestTypeName.snakeCase}.dart",
          );
        }

        // Generate RESPONSE JSON models based on configuration
        if (customNames.containsKey('responseType')) {
          final responseTypeName = customNames['responseType']!;

          // Extract the object type from union if needed
          final responseSchema = _extractTypeFromUnion(function.returns);

          if (responseSchema != null) {
            print(
              "DEBUG: Response schema structure for $responseTypeName: ${responseSchema.value.keys}",
            );
            final responseModelCode = _buildResponseJsonModel(
              function,
              responseTypeName,
              responseSchema.value,
              context,
            );
            final responseModelPath = path.join(
              "src",
              "models",
              "json",
              "${responseTypeName.snakeCase}.dart",
            );
            context.outputs[responseModelPath] = responseModelCode;
            print(
              "DEBUG: Generated response JSON model: ${responseTypeName.snakeCase}.dart",
            );
          } else {
            print(
              "DEBUG: Cannot generate response JSON model: ${responseTypeName.snakeCase}.dart (returns is not an object or valid union)",
            );
          }
        }

        // Generate RESPONSE LIST JSON models if specified
        if (customNames.containsKey('responseList')) {
          final responseListTypeName = customNames['responseList']!;
          final returnsSchema = function.returns;

          if (returnsSchema is JsObject) {
            // Find the list field in the response schema
            final valueSchema = returnsSchema.value;
            print(
              "DEBUG: Looking for 'list' field in schema keys: ${valueSchema.keys}",
            );

            final listField = valueSchema['list'];
            if (listField != null) {
              print(
                "DEBUG: Found list field with fieldType: ${listField.fieldType.runtimeType}",
              );

              if (listField.fieldType is JsArray) {
                final arrayFieldType = listField.fieldType as JsArray;
                if (arrayFieldType.value is JsObject) {
                  final listItemSchema = arrayFieldType.value as JsObject;
                  final responseListModelCode = _buildResponseJsonModel(
                    function,
                    responseListTypeName,
                    listItemSchema.value,
                    context,
                  );
                  final responseListModelPath = path.join(
                    "src",
                    "models",
                    "json",
                    "${responseListTypeName.snakeCase}.dart",
                  );
                  context.outputs[responseListModelPath] =
                      responseListModelCode;
                  print(
                    "DEBUG: Generated responseList JSON model: ${responseListTypeName.snakeCase}.dart",
                  );
                } else {
                  print(
                    "DEBUG: Cannot generate responseList JSON model: ${responseListTypeName.snakeCase}.dart (list array value is not a JsObject, it's ${arrayFieldType.value.runtimeType})",
                  );
                }
              } else {
                print(
                  "DEBUG: Cannot generate responseList JSON model: ${responseListTypeName.snakeCase}.dart (list fieldType is not JsArray, it's ${listField.fieldType.runtimeType})",
                );
              }
            } else {
              print(
                "DEBUG: Cannot generate responseList JSON model: ${responseListTypeName.snakeCase}.dart (no list field found)",
              );
            }
          } else {
            print(
              "DEBUG: Cannot generate responseList JSON model: ${responseListTypeName.snakeCase}.dart (returns is not a JsObject)",
            );
          }
        }

        // Check if ObjectBox models should be generated for this function
        final shouldCreateObjectBox = _shouldCreateObjectBoxModel(
          context,
          function,
        );

        if (shouldCreateObjectBox) {
          // ObjectBox generation logic:
          // 1. If responseList exists and createBox is true → create ObjectBox for responseList only
          // 2. If only response exists and createBox is true → create ObjectBox for response only
          String objectBoxTypeName;
          if (customNames.containsKey('responseList')) {
            objectBoxTypeName = customNames['responseList']!;
            print(
              "DEBUG: Creating ObjectBox for responseList type '$objectBoxTypeName' (function: ${function.convexFunctionIdentifier})",
            );
          } else if (customNames.containsKey('responseType')) {
            objectBoxTypeName = customNames['responseType']!;
            print(
              "DEBUG: Creating ObjectBox for response type '$objectBoxTypeName' (function: ${function.convexFunctionIdentifier})",
            );
          } else {
            objectBoxTypeName = function.functionName;
            print(
              "DEBUG: Creating ObjectBox for default type '$objectBoxTypeName' (function: ${function.convexFunctionIdentifier})",
            );
          }

          // Generate ObjectBox models for the determined type
          final objectBoxModel = _buildObjectBoxModel(
            function,
            context,
            objectBoxTypeName,
          );
          final objectBoxPath = path.join(
            "src",
            "models",
            "objectbox",
            "box",
            "${objectBoxTypeName.snakeCase}_box.dart",
          );
          context.outputs[objectBoxPath] = objectBoxModel;

          // Generate ObjectBox repository
          final objectBoxRepo = _buildObjectBoxRepository(
            function,
            context,
            objectBoxTypeName,
          );
          final objectBoxRepoPath = path.join(
            "src",
            "models",
            "objectbox",
            "repos",
            "${objectBoxTypeName.snakeCase}_repo.dart",
          );
          context.outputs[objectBoxRepoPath] = objectBoxRepo;
        }
        successFunctions.add(function);
      } catch (e) {
        print(
          "Failed to build function ${function.convexFunctionIdentifier}. Check the file and ensure it is valid.\nContents: $e",
        );
      }
    }
    // Create the client.dart file
    buildClient(context);
    // Create the schema.dart file
    _buildSchema(context);
    // Create the literals.dart file
    _buildLiterals(context);
    // Create the entrypoint file
    _buildEntrypoint(context, successFunctions);
    // Generate index files for models
    _generateIndexFiles(context);
    // Format the code
    for (final entry in context.outputs.entries) {
      try {
        context.outputs[entry.key] = formatter.format(entry.value);
      } catch (e) {
        log("Failed to format ${entry.key}: $e");
      }
    }
  }

  void _buildEntrypoint(
    ClientBuildContext context,
    List<FunctionSpec> successFunctions,
  ) {
    context.outputs["client.dart"] =
        """
export 'src/client.dart';
export 'src/schema.dart';
export 'src/literals.dart';
${successFunctions.map((entry) => "export 'src/functions/${entry.folderName}/${entry.fileName}' hide serialize, deserialize;").join("\n")}
    """;
  }

  void _buildSchema(ClientBuildContext context) {
    final schemaBuffer = StringBuffer("""
// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "dart:typed_data";
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
""");
    for (final tableName in context.tables) {
      schemaBuffer.writeln("""
class ${tableName.pascalCase}Id  implements TableId {
  @override
  final String value;
  static const String tableName = "$tableName";
  const ${tableName.pascalCase}Id(this.value);
  @override
  bool operator ==(Object other) {
    if (other is ${tableName.pascalCase}Id) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return value;
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
import 'package:convex_dart/src/convex_dart_for_generated_code.dart'
    as internal;
class ConvexClient {
  static Future<void> init() async {
    await internal.ConvexClient.init(
      deploymentUrl: "$url",
      clientId: "flutter-rust-client",
    );
  }
}
    """;
  }

  void _buildLiterals(ClientBuildContext context) {
    final literalsBuffer = StringBuffer("""
// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
""");

    for (final literal in context.literals) {
      literalsBuffer.writeln(literal._literalCode);
    }
    context.outputs[path.join("src", "literals.dart")] = literalsBuffer
        .toString();
  }

  void _generateIndexFiles(ClientBuildContext context) {
    // Collect all JSON model files
    final jsonModels = <String>[];
    final objectBoxModels = <String>[];
    final objectBoxRepos = <String>[];

    for (final outputPath in context.outputs.keys) {
      if (outputPath.contains('src/models/json/') && outputPath.endsWith('.dart')) {
        final fileName = path.basenameWithoutExtension(outputPath);
        jsonModels.add(fileName);
      } else if (outputPath.contains('src/models/objectbox/box/') && outputPath.endsWith('.dart')) {
        final fileName = path.basenameWithoutExtension(outputPath);
        objectBoxModels.add(fileName);
      } else if (outputPath.contains('src/models/objectbox/repos/') && outputPath.endsWith('.dart')) {
        final fileName = path.basenameWithoutExtension(outputPath);
        objectBoxRepos.add(fileName);
      }
    }

    // Generate JSON models index
    if (jsonModels.isNotEmpty) {
      final jsonIndexBuffer = StringBuffer('''
// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

// Auto-generated JSON models index
''');

      for (final model in jsonModels) {
        jsonIndexBuffer.writeln("export '$model.dart';");
      }

      context.outputs[path.join("src", "models", "json", "index.dart")] = jsonIndexBuffer.toString();
    }

    // Generate ObjectBox models index
    if (objectBoxModels.isNotEmpty) {
      final objectBoxIndexBuffer = StringBuffer('''
// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

// Auto-generated ObjectBox models index
''');

      for (final model in objectBoxModels) {
        objectBoxIndexBuffer.writeln("export 'box/$model.dart';");
      }

      for (final repo in objectBoxRepos) {
        objectBoxIndexBuffer.writeln("export 'repos/$repo.dart';");
      }

      context.outputs[path.join("src", "models", "objectbox", "index.dart")] = objectBoxIndexBuffer.toString();
    }
  }

  /// Generate possible HTTP endpoint key for a function
  String _generateHttpEndpointKey(FunctionSpec function) {
    // Convert new flat structure: "app/fieldAgentAuth.js:functionName" to "GET/POST:/api/run/app/fieldAgentAuth/functionName"
    final identifier = function.identifier;
    final parts = identifier.split(':');
    if (parts.length == 2) {
      final filePath = parts[0]; // e.g., "app/fieldAgentAuth.js"
      final functionName = parts[1]; // e.g., "getMyFieldAgentProfile"

      // Extract module name from file path
      final pathParts = filePath.split('/');
      if (pathParts.length >= 2) {
        final moduleName = pathParts[1].replaceAll(
          '.js',
          '',
        ); // e.g., "fieldAgentAuth" or "fieldAgentCashCount"

        // Use correct HTTP method based on function type
        final httpMethod = (function.functionType == FunctionType.query)
            ? 'GET'
            : 'POST';
        return "$httpMethod:/api/run/app/$moduleName/$functionName";
      }
    }
    return '';
  }

  /// Extract JsObject from union if it's a union with one real type + null
  /// Returns null if not a union or if union has multiple non-null types
  JsObject? _extractTypeFromUnion(JsType type) {
    if (type is JsUnion) {
      final realTypes = type.value.where((e) => e is! JsNull).toList();
      if (realTypes.length == 1 && realTypes.first is JsObject) {
        return realTypes.first as JsObject;
      }
    } else if (type is JsObject) {
      // Already an object, return it
      return type;
    }
    return null;
  }

  /// Gets custom type names from configuration files
  Map<String, String> _getCustomTypeNames(
    ClientBuildContext context,
    FunctionSpec function,
  ) {
    final result = <String, String>{};

    // Check mapping file for custom type names
    if (context.mappingData != null) {
      // Try multiple possible keys: convex identifier, HTTP endpoint, etc.
      final possibleKeys = [
        function.convexFunctionIdentifier,
        _generateHttpEndpointKey(function),
      ];

      Map<String, dynamic>? functionMapping;
      String? matchedKey;

      for (final key in possibleKeys) {
        if (key.isNotEmpty && context.mappingData!.containsKey(key)) {
          functionMapping = context.mappingData![key] as Map<String, dynamic>?;
          matchedKey = key;
          break;
        }
      }

      if (functionMapping != null && matchedKey != null) {
        if (functionMapping.containsKey('request')) {
          result['requestType'] = functionMapping['request'] as String;
          print(
            "DEBUG: Using custom request type '${result['requestType']}' for ${function.convexFunctionIdentifier} (matched key: $matchedKey)",
          );
        }
        if (functionMapping.containsKey('response')) {
          result['responseType'] = functionMapping['response'] as String;
          print(
            "DEBUG: Using custom response type '${result['responseType']}' for ${function.convexFunctionIdentifier} (matched key: $matchedKey)",
          );
        }
        if (functionMapping.containsKey('responseList')) {
          result['responseList'] = functionMapping['responseList'] as String;
          print(
            "DEBUG: Using custom responseList type '${result['responseList']}' for ${function.convexFunctionIdentifier} (matched key: $matchedKey)",
          );
        }
      }
    }

    return result;
  }

  /// Determines whether ObjectBox models should be generated for this function
  bool _shouldCreateObjectBoxModel(
    ClientBuildContext context,
    FunctionSpec function,
  ) {
    // Check mapping file first for explicit createBox setting
    if (context.mappingData != null) {
      // Try multiple possible keys: convex identifier, HTTP endpoint, etc.
      final possibleKeys = [
        function.convexFunctionIdentifier,
        _generateHttpEndpointKey(function),
      ];

      for (final key in possibleKeys) {
        if (key.isNotEmpty && context.mappingData!.containsKey(key)) {
          final functionMapping =
              context.mappingData![key] as Map<String, dynamic>?;
          if (functionMapping != null &&
              functionMapping.containsKey('createBox')) {
            final createBox = functionMapping['createBox'];
            print(
              "DEBUG: Function ${function.convexFunctionIdentifier} has explicit createBox: $createBox (matched key: $key)",
            );
            return createBox == true;
          }
        }
      }
    }

    // Check ObjectBox functions file for inclusion
    if (context.objectBoxFunctionsData != null) {
      final functions =
          context.objectBoxFunctionsData!['functions'] as List<dynamic>?;
      if (functions != null) {
        final possibleEndpoints = [
          function.convexFunctionIdentifier,
          _generateHttpEndpointKey(function),
        ];

        final functionExists = functions.any((func) {
          if (func is Map<String, dynamic>) {
            final endpoint = func['endpoint'] as String?;
            return possibleEndpoints.contains(endpoint);
          }
          return false;
        });
        print(
          "DEBUG: Function ${function.convexFunctionIdentifier} exists in ObjectBox functions: $functionExists",
        );
        return functionExists;
      }
    }

    // Default behavior: don't create ObjectBox models unless explicitly specified
    print(
      "DEBUG: No explicit configuration found for ${function.convexFunctionIdentifier}, defaulting to false",
    );
    return false;
  }

  String _buildJsonModel(
    FunctionBuildContext functionContext,
    FunctionSpec function,
  ) {
    // Build a standalone JSON model class (copy of the generated class from function context)
    final headerBuffer = StringBuffer("""
// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
""");

    // Add imports for extracted classes
    for (final className in functionContext._extractedClasses) {
      final fileName = className.snakeCase;
      headerBuffer.writeln('import "$fileName.dart";');
    }

    return headerBuffer.toString() + functionContext.classBuffer.toString();
  }

  /// Build a JSON model from JsObject returns field by creating a temporary function
  String _buildResponseJsonModel(
    FunctionSpec function,
    String typeName,
    Map<String, JsField> returnsSchema,
    ClientBuildContext? context,
  ) {
    print(
      "DEBUG: Processing $typeName with JsField keys: ${returnsSchema.keys}",
    );

    // Check if this function has a responseList mapping and modify the schema accordingly
    String? responseListTypeName;

    if (context?.mappingData != null) {
      final possibleKeys = [
        function.convexFunctionIdentifier,
        _generateHttpEndpointKey(function),
      ];

      for (final key in possibleKeys) {
        if (key.isNotEmpty && context!.mappingData!.containsKey(key)) {
          final functionMapping =
              context.mappingData![key] as Map<String, dynamic>?;
          if (functionMapping != null &&
              functionMapping.containsKey('responseList')) {
            responseListTypeName = functionMapping['responseList'] as String?;
            break;
          }
        }
      }
    }

    if (responseListTypeName != null) {
      // Look for the 'list' field and replace its array type with the responseList class
      if (returnsSchema.containsKey('list')) {
        final listField = returnsSchema['list']!;
        if (listField.fieldType is JsArray) {
          // Replace the complex array with a simple string reference to the responseList class
          // This creates an artificial field that will generate IList<ResponseListClassName>
          final modifiedReturnsSchema = Map<String, JsField>.from(
            returnsSchema,
          );
          modifiedReturnsSchema['list'] = JsField(
            JsArray(
              JsString('String'),
              'array',
            ), // Temporary placeholder - we'll override the dartType
            listField.optional,
          );

          // Create a temporary function with the modified schema
          final tempResponseObject = JsObject(modifiedReturnsSchema, "object");
          final tempFunction = FunctionSpec(
            tempResponseObject,
            JsAny("any"),
            FunctionType.query,
            "temp:$typeName",
            Visibility(VisibilityType.public),
          );

          final functionContext = FunctionBuildContext(
            context!,
            currentFunction: function,
          );

          // Set field context to "returns" for processing response fields
          functionContext.setFieldContext("", "returns");

          // Build the temporary function
          tempFunction.build(functionContext);

          // Build imports for extracted classes
          final extractedImports = StringBuffer();
          for (final className in functionContext._extractedClasses) {
            final fileName = className.snakeCase;
            extractedImports.writeln('import "$fileName.dart";');
          }

          // Now manually replace the list field type in the generated code
          var generatedCode = functionContext.classBuffer.toString();
          generatedCode = generatedCode.replaceAll(
            'final IList<String> list;',
            'final IList<$responseListTypeName> list;',
          );
          generatedCode = generatedCode.replaceAll(
            'list: (json[\'list\'] as List<dynamic>).cast<String>().toIList()',
            'list: (json[\'list\'] as List<dynamic>).map((item) => $responseListTypeName.fromJson(item as Map<String, dynamic>)).toList().toIList()',
          );
          generatedCode = generatedCode.replaceAll(
            '<String>[].toIList()',
            '<$responseListTypeName>[].toIList()',
          );
          generatedCode = generatedCode.replaceAll(
            'IList<String>? list,',
            'IList<$responseListTypeName>? list,',
          );

          return """// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "${responseListTypeName.snakeCase}.dart";
${extractedImports.toString()}
$generatedCode""";
        }
      }
    }

    // Create a temporary function with the response schema as args
    final tempResponseObject = JsObject(returnsSchema, "object");
    final tempFunction = FunctionSpec(
      tempResponseObject,
      JsAny("any"),
      FunctionType.query,
      "temp:$typeName",
      Visibility(VisibilityType.public),
    );

    final functionContext = FunctionBuildContext(
      context!,
      currentFunction: function,
    );

    // Set field context to "returns" for processing response fields
    functionContext.setFieldContext("", "returns");

    // Build the temporary function to generate the class
    tempFunction.build(functionContext);

    // Build imports for extracted classes
    final imports = StringBuffer();
    for (final className in functionContext._extractedClasses) {
      final fileName = className.snakeCase;
      imports.writeln('import "$fileName.dart";');
    }

    // Return just the JSON model with correct headers
    return """// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
${imports.toString()}
${functionContext.classBuffer.toString()}""";
  }

  /// Builds an ObjectBox entity model for local persistence.
  ///
  /// ObjectBox Documentation:
  /// - Getting Started: https://docs.objectbox.io/getting-started#flutter
  /// - API Reference: https://pub.dev/documentation/objectbox/latest/objectbox/
  /// - Internal API: https://pub.dev/documentation/objectbox/latest/objectbox_internal/
  ///
  /// ObjectBox Requirements:
  /// - Must have exactly one 64-bit integer ID property annotated with @Id()
  /// - ID must be non-private with default value 0
  /// - Properties can be primitive types or custom types with converters
  /// - Use @Property(type: PropertyType.date) for DateTime fields (stored as milliseconds)
  /// - Use @Property(type: PropertyType.dateNano) for nanosecond precision (int)
  /// - Complex objects (unions, objects, arrays) are stored as JSON strings
  ///
  /// Mapping Logic:
  /// - If responseList exists: create box for list item type (e.g., CashCountFieldSignUp)
  /// - If no responseList: create box for main response type (e.g., AuthUser)
  /// - Field mappings use "list." prefix for responseList fields in schema-mapping.json
  ///
  /// Union Type Handling:
  /// - Union types are serialized directly with jsonEncode(value), NOT value.toJson()
  /// - Union deserialization passes raw decoded value to constructor
  /// - JSON model constructor handles wrapping raw values in appropriate Union type
  String _buildObjectBoxModel(
    FunctionSpec function,
    ClientBuildContext context,
    String typeName,
  ) {
    final className = typeName;
    final boxClassName = "${className}Box";

    // Determine the correct schema to use for ObjectBox generation
    JsObject obj;
    final customNames = _getCustomTypeNames(context, function);
    final isResponseList = customNames.containsKey('responseList');

    if (isResponseList) {
      // For responseList types, use the individual item schema from the list field
      final parentSchema = _extractTypeFromUnion(function.returns);
      if (parentSchema == null) {
        throw Exception('ResponseList parent schema is not an object type or valid union');
      }
      final listField = parentSchema.value['list'];
      if (listField?.fieldType is JsArray) {
        final arrayType = listField!.fieldType as JsArray;
        if (arrayType.value is JsObject) {
          obj = arrayType.value as JsObject;
        } else {
          throw Exception('ResponseList array element is not an object type');
        }
      } else {
        throw Exception(
          'ResponseList parent schema does not contain a list field',
        );
      }
    } else {
      // For regular response types, extract from union if needed
      final extracted = _extractTypeFromUnion(function.returns);
      if (extracted == null) {
        throw Exception('Response schema is not an object type or valid union');
      }
      obj = extracted;
    }

    final baseSegments = isResponseList ? ['list'] : <String>[];

    final functionIdentifiers = <String>{
      function.convexFunctionIdentifier,
      _generateHttpEndpointKey(function),
      function.identifier,
    }..removeWhere((value) => value.isEmpty);

    /// Resolves the custom type mapping for a field path from schema-mapping.json.
    ///
    /// For responseList fields, the mapping uses "list." prefix (e.g., "list.completedMeta").
    /// This method checks both the prefixed and non-prefixed versions to find the mapping.
    ///
    /// Returns null if no mapping is found for the given field path.
    ObjectFieldMapping? resolveMapping(List<String> segments) {
      if (segments.isEmpty) {
        return null;
      }

      final candidates = <String>{segments.join('.')};
      if (segments.first == 'list' && segments.length > 1) {
        candidates.add(segments.skip(1).join('.'));
      }

      return _findObjectFieldMapping(
        context.mappingData,
        functionIdentifiers,
        'returns',
        candidates.where((value) => value.isNotEmpty),
      );
    }

    final embeddedDefinitions = <String, _EmbeddedClassDefinition>{};

    /// Recursively collects all fields from a schema object for ObjectBox entity generation.
    ///
    /// This method:
    /// - Processes each field in the schema
    /// - Resolves custom type mappings from schema-mapping.json
    /// - Detects embedded objects vs JSON string fields
    /// - Identifies date fields (fields containing 'At' or 'Date')
    /// - Creates embedded class definitions for nested objects
    /// - Determines the appropriate ObjectBox property type for each field
    ///
    /// Embedded objects are stored as @Embedded() nested objects in ObjectBox.
    /// Complex types (objects, arrays, unions) are stored as JSON strings.
    List<_ObjectBoxFieldContext> collectFields(
      JsObject schema,
      List<String> pathSegments,
    ) {
      final hasDbIdField = schema.value.containsKey('dbId');
      final results = <_ObjectBoxFieldContext>[];

      for (final entry in schema.value.entries) {
        final fieldPathSegments = [...pathSegments, entry.key];
        final mapping = resolveMapping(fieldPathSegments);
        final isEmbedded =
            (mapping?.isEmbedded ?? false) && entry.value.fieldType is JsObject;
        // Detect date/timestamp fields by common naming patterns
        final isDateField =
            entry.key.contains('At') ||
            entry.key.contains('Date') ||
            entry.key.contains('Expire') ||
            entry.key.endsWith('Time');

        JsObject? embeddedSchema;
        String? embeddedClassName;
        if (isEmbedded) {
          embeddedSchema = entry.value.fieldType as JsObject;
          final mappedName = mapping?.name;
          embeddedClassName = mappedName != null && mappedName.isNotEmpty
              ? mappedName
              : _objectBoxEmbeddedClassName(entry.key);

          if (!embeddedDefinitions.containsKey(embeddedClassName)) {
            final nestedFields = collectFields(
              embeddedSchema,
              fieldPathSegments,
            );
            embeddedDefinitions[embeddedClassName] = _EmbeddedClassDefinition(
              embeddedClassName,
              nestedFields,
            );
          }
        }

        final fieldName = _resolveObjectBoxFieldName(entry.key, hasDbIdField);
        final storeAsJson =
            !isEmbedded && _isComplexType(entry.value.fieldType);
        final objectBoxType = isEmbedded
            ? embeddedClassName!
            : isDateField
            ? 'int'
            : _convertToObjectBoxType(entry.value.fieldType);

        results.add(
          _ObjectBoxFieldContext(
            originalName: entry.key,
            fieldName: fieldName,
            field: entry.value,
            mapping: mapping,
            isEmbedded: isEmbedded,
            embeddedClassName: embeddedClassName,
            embeddedSchema: embeddedSchema,
            isDateField: isDateField,
            storeAsJson: storeAsJson,
            objectBoxType: objectBoxType,
          ),
        );
      }

      return results;
    }

    final fieldContexts = collectFields(obj, baseSegments);

    final needsJsonConvert =
        fieldContexts.any((field) => field.storeAsJson) ||
        embeddedDefinitions.values.any(
          (definition) => definition.fields.any((field) => field.storeAsJson),
        );

    // Check if we need schema.dart import (only needed when using typed IDs)
    final needsSchemaImport = fieldContexts.any((field) {
      final fieldType = field.field.fieldType;
      return fieldType is ConvexId ||
          (fieldType is JsUnion && fieldType.value.any((t) => t is ConvexId));
    });

    final buffer = StringBuffer("import 'package:objectbox/objectbox.dart';");
    if (needsJsonConvert) {
      buffer.writeln("\nimport 'dart:convert';");
    } else {
      buffer.writeln();
    }
    // Add import for the JSON models and required dependencies
    buffer.writeln("import 'package:convex_dart/convex_dart.dart';");
    if (needsSchemaImport) {
      buffer.writeln("import '../../../schema.dart';");
    }
    buffer.writeln("import '../../json/index.dart';");
    buffer.writeln();

    void writeEmbeddedClass(_EmbeddedClassDefinition definition) {
      buffer.writeln('@Embedded()');
      buffer.writeln('class ${definition.name} {');

      for (final field in definition.fields) {
        final optionalSuffix = field.field.optional ? '?' : '';
        if (field.isDateField) {
          buffer.writeln('  @Property(type: PropertyType.dateNano)');
          buffer.writeln('  int$optionalSuffix ${field.fieldName};');
        } else if (field.isEmbedded) {
          buffer.writeln('  @Embedded()');
          buffer.writeln(
            '  ${field.embeddedClassName}$optionalSuffix ${field.fieldName};',
          );
        } else {
          buffer.writeln(
            '  ${field.objectBoxType}$optionalSuffix ${field.fieldName};',
          );
        }
      }

      buffer.writeln();

      buffer.writeln('  ${definition.name}({');
      for (final field in definition.fields) {
        if (field.field.optional) {
          buffer.writeln('    this.${field.fieldName},');
        } else {
          buffer.writeln('    required this.${field.fieldName},');
        }
      }
      buffer.writeln('  });');

      buffer.writeln();

      buffer.writeln(
        '  factory ${definition.name}.fromMap(Map<String, dynamic> map) {',
      );
      buffer.writeln('    return ${definition.name}(');
      for (final field in definition.fields) {
        final key = field.originalName;
        if (field.isEmbedded) {
          if (field.field.optional) {
            buffer.writeln(
              "      ${field.fieldName}: map['$key'] != null ? ${field.embeddedClassName}.fromMap(map['$key'] as Map<String, dynamic>) : null,",
            );
          } else {
            buffer.writeln(
              "      ${field.fieldName}: ${field.embeddedClassName}.fromMap(map['$key'] as Map<String, dynamic>),",
            );
          }
        } else if (field.storeAsJson) {
          if (field.field.optional) {
            buffer.writeln(
              "      ${field.fieldName}: map['$key'] != null ? jsonEncode(map['$key']) : null,",
            );
          } else {
            buffer.writeln(
              "      ${field.fieldName}: jsonEncode(map['$key']),",
            );
          }
        } else if (field.isDateField) {
          if (field.field.optional) {
            buffer.writeln(
              "      ${field.fieldName}: (map['$key'] as num?)?.round(),",
            );
          } else {
            buffer.writeln(
              "      ${field.fieldName}: (map['$key'] as num).round(),",
            );
          }
        } else if (field.objectBoxType == 'String' && !field.field.optional) {
          buffer.writeln(
            "      ${field.fieldName}: map['$key']?.toString() ?? '',",
          );
        } else if (field.objectBoxType == 'String' && field.field.optional) {
          buffer.writeln("      ${field.fieldName}: map['$key']?.toString(),");
        } else if (field.field.optional) {
          buffer.writeln(
            "      ${field.fieldName}: map['$key'] as ${field.objectBoxType}?,",
          );
        } else {
          buffer.writeln(
            "      ${field.fieldName}: map['$key'] as ${field.objectBoxType},",
          );
        }
      }
      buffer.writeln('    );');
      buffer.writeln('  }');

      buffer.writeln();

      buffer.writeln('  Map<String, dynamic> toMap() {');
      buffer.writeln('    return {');
      for (final field in definition.fields) {
        final key = field.originalName;
        if (field.isEmbedded) {
          if (field.field.optional) {
            buffer.writeln("      '$key': ${field.fieldName}?.toMap(),");
          } else {
            buffer.writeln("      '$key': ${field.fieldName}.toMap(),");
          }
        } else if (field.storeAsJson) {
          if (field.field.optional) {
            buffer.writeln(
              "      '$key': ${field.fieldName} != null ? jsonDecode(${field.fieldName}!) : null,",
            );
          } else {
            buffer.writeln("      '$key': jsonDecode(${field.fieldName}),");
          }
        } else if (field.isDateField) {
          if (field.field.optional) {
            buffer.writeln("      '$key': ${field.fieldName}?.toDouble(),");
          } else {
            buffer.writeln("      '$key': ${field.fieldName}.toDouble(),");
          }
        } else {
          buffer.writeln("      '$key': ${field.fieldName},");
        }
      }
      buffer.writeln('    };');
      buffer.writeln('  }');
      buffer.writeln('}');
      buffer.writeln();
    }

    for (final definition in embeddedDefinitions.values) {
      writeEmbeddedClass(definition);
    }

    buffer.writeln('@Entity()');
    buffer.writeln('class $boxClassName {');
    buffer.writeln('  @Id()');
    buffer.writeln('  int id = 0;');
    buffer.writeln();

    for (final field in fieldContexts) {
      final optionalSuffix = field.field.optional ? '?' : '';
      if (field.isDateField) {
        buffer.writeln('  @Property(type: PropertyType.dateNano)');
        buffer.writeln('  int$optionalSuffix ${field.fieldName};');
      } else if (field.isEmbedded) {
        buffer.writeln('  @Embedded()');
        buffer.writeln(
          '  ${field.embeddedClassName}$optionalSuffix ${field.fieldName};',
        );
      } else {
        buffer.writeln(
          '  ${field.objectBoxType}$optionalSuffix ${field.fieldName};',
        );
      }
    }

    buffer.writeln();

    buffer.writeln('  $boxClassName({');
    buffer.writeln('    this.id = 0,');
    for (final field in fieldContexts) {
      if (field.field.optional) {
        buffer.writeln('    this.${field.fieldName},');
      } else {
        buffer.writeln('    required this.${field.fieldName},');
      }
    }
    buffer.writeln('  });');

    buffer.writeln();

    // Convert from API model
    buffer.writeln('  factory $boxClassName.fromAPI($className model) {');
    buffer.writeln('    return $boxClassName(');
    buffer.writeln('      id: 0,');
    for (final field in fieldContexts) {
      final originalName = field.originalName;
      final fieldName = field.fieldName;

      if (field.storeAsJson) {
        // Determine if this field is a union type that needs special serialization
        final isUnionType = field.field.fieldType is JsUnion;

        // Check if there's a custom mapping for this field
        final hasCustomMapping = field.mapping != null;

        if (field.field.optional) {
          // Check if this is a list of ID types that need special handling
          if (originalName.contains('Ids') || originalName.endsWith('Ids')) {
            buffer.writeln(
              "      $fieldName: model.$originalName.isDefined ? jsonEncode(model.$originalName.asDefined().value.map((e) => e.value).toList()) : null,",
            );
          } else if (hasCustomMapping) {
            // Fields with custom mappings use toJson() on the mapped type
            buffer.writeln(
              "      $fieldName: model.$originalName.isDefined ? jsonEncode(model.$originalName.asDefined().value.toJson()) : null,",
            );
          } else if (isUnionType || field.field.fieldType is JsRecord) {
            // Union types and records (without mapping) serialize directly without calling toJson()
            buffer.writeln(
              "      $fieldName: model.$originalName.isDefined ? jsonEncode(model.$originalName.asDefined().value) : null,",
            );
          } else {
            // Regular objects call toJson()
            buffer.writeln(
              "      $fieldName: model.$originalName.isDefined ? jsonEncode(model.$originalName.asDefined().value.toJson()) : null,",
            );
          }
        } else {
          // Check if this is a list of ID types that need special handling
          if (originalName.contains('Ids') || originalName.endsWith('Ids')) {
            buffer.writeln(
              "      $fieldName: jsonEncode(model.$originalName.map((e) => e.value).toList()),",
            );
          } else if (hasCustomMapping) {
            // Fields with custom mappings use toJson() on the mapped type
            buffer.writeln("      $fieldName: jsonEncode(model.$originalName.toJson()),");
          } else if (isUnionType || field.field.fieldType is JsRecord) {
            // Union types and records (without mapping) serialize directly without calling toJson()
            buffer.writeln("      $fieldName: jsonEncode(model.$originalName),");
          } else {
            // Regular objects call toJson()
            buffer.writeln("      $fieldName: jsonEncode(model.$originalName.toJson()),");
          }
        }
      } else if (field.isDateField) {
        if (field.field.optional) {
          // Check if the field type is Optional<double> or Optional<double?>
          // If it's a union with null, use ?. operator, otherwise use .
          final fieldType = field.field.fieldType;
          final isNullableInner = fieldType is JsUnion &&
                                  fieldType.value.any((t) => t is JsNull);
          final roundOperator = isNullableInner ? '?.' : '.';

          buffer.writeln(
            "      $fieldName: model.${_dartSafeName(originalName)}.isDefined ? model.${_dartSafeName(originalName)}.asDefined().value${roundOperator}round() : null,",
          );
        } else {
          buffer.writeln(
            "      $fieldName: model.${_dartSafeName(originalName)}.round(),",
          );
        }
      } else if (originalName == '_id') {
        // Handle ID field mapping
        buffer.writeln("      $fieldName: model.\$_id.value,");
      } else if (field.field.optional) {
        // Check if this is an ID type that needs .value extraction
        final isConvexId = field.field.fieldType is ConvexId;
        if (isConvexId) {
          buffer.writeln(
            "      $fieldName: model.$originalName.isDefined ? model.$originalName.asDefined().value.value : null,",
          );
        } else {
          buffer.writeln(
            "      $fieldName: model.$originalName.isDefined ? model.$originalName.asDefined().value : null,",
          );
        }
      } else {
        // Check field type to determine if special handling is needed
        final fieldType = field.field.fieldType;
        final isConvexId = fieldType is ConvexId;
        final isLiteralUnion = fieldType is JsUnion &&
                               fieldType.value.every((t) => t is JsLiteral || t is JsNull);

        if (isConvexId || isLiteralUnion) {
          buffer.writeln("      $fieldName: model.${_dartSafeName(originalName)}.value,");
        } else {
          buffer.writeln("      $fieldName: model.${_dartSafeName(originalName)},");
        }
      }
    }
    buffer.writeln('    );');
    buffer.writeln('  }');

    buffer.writeln();

    // Convert to API model
    buffer.writeln('  $className toAPI() {');
    buffer.writeln('    return $className(');
    for (final field in fieldContexts) {
      final originalName = field.originalName;
      final fieldName = field.fieldName;

      // Handle special fields first before general type-based logic
      if (originalName == '_id') {
        // Handle ID field mapping - convert back to ID class if it's a ConvexId type
        final idTypeName = _getIdClassNameFromField(field);
        if (idTypeName != null) {
          buffer.writeln("      \$_id: $idTypeName($fieldName),");
        } else {
          // If no ID class type found, wrap string value in Defined/Undefined
          // This handles cases where $_id is Optional<String> not a typed ID
          if (field.field.optional) {
            buffer.writeln("      \$_id: $fieldName != null ? Defined($fieldName!) : const Undefined(),");
          } else {
            buffer.writeln("      \$_id: $fieldName,");
          }
        }
      } else if (originalName == '_creationTime') {
        // Handle _creationTime field - use $ prefix for constructor parameter
        // Note: fieldName is 'creationTime' in ObjectBox (without $)
        buffer.writeln("      \$_creationTime: $fieldName.toDouble(),");
      } else if (field.storeAsJson) {
        // Determine if this field is a union type that needs special deserialization
        final isUnionType = field.field.fieldType is JsUnion;

        // For JSON fields, we need to get the correct type name from the mapping
        final jsonTypeName = _getJsonTypeForField(originalName, fieldContexts, context, function);

        // Check if there's a custom mapping for this field
        final hasCustomMapping = field.mapping != null;

        if (field.field.optional) {
          // Check if this is a list of ID types that need special handling
          final idTypeName = _getIdClassNameFromField(field);
          if (idTypeName != null && (originalName.contains('Ids') || originalName.endsWith('Ids'))) {
            buffer.writeln(
              "      $originalName: $fieldName != null ? Defined((jsonDecode($fieldName!) as List<dynamic>).map((e) => $idTypeName(e as String)).toList().toIList()) : const Undefined(),",
            );
          } else if (hasCustomMapping) {
            // Fields with custom mappings use fromJson() with the mapped type
            buffer.writeln(
              "      $originalName: $fieldName != null ? Defined($jsonTypeName.fromJson(jsonDecode($fieldName!) as Map<String, dynamic>)) : const Undefined(),",
            );
          } else if (isUnionType || field.field.fieldType is JsRecord) {
            // Union types and records (without mapping) deserialize directly - constructor handles wrapping
            buffer.writeln(
              "      $originalName: $fieldName != null ? Defined(jsonDecode($fieldName!)) : const Undefined(),",
            );
          } else {
            // Regular objects call fromJson()
            buffer.writeln(
              "      $originalName: $fieldName != null ? Defined($jsonTypeName.fromJson(jsonDecode($fieldName!) as Map<String, dynamic>)) : const Undefined(),",
            );
          }
        } else {
          // Check if this is a list of ID types that need special handling
          final idTypeName = _getIdClassNameFromField(field);
          if (idTypeName != null && (originalName.contains('Ids') || originalName.endsWith('Ids'))) {
            buffer.writeln(
              "      $originalName: (jsonDecode($fieldName) as List<dynamic>).map((e) => $idTypeName(e as String)).toList().toIList(),",
            );
          } else if (hasCustomMapping) {
            // Fields with custom mappings use fromJson() with the mapped type
            buffer.writeln("      $originalName: $jsonTypeName.fromJson(jsonDecode($fieldName) as Map<String, dynamic>),");
          } else if (isUnionType || field.field.fieldType is JsRecord) {
            // Union types and records (without mapping) deserialize directly - constructor handles wrapping
            buffer.writeln("      $originalName: jsonDecode($fieldName),");
          } else {
            // Regular objects call fromJson()
            buffer.writeln("      $originalName: $jsonTypeName.fromJson(jsonDecode($fieldName) as Map<String, dynamic>),");
          }
        }
      } else if (field.isDateField) {
        if (field.field.optional) {
          buffer.writeln(
            "      $originalName: $fieldName != null ? Defined($fieldName!.toDouble()) : const Undefined(),",
          );
        } else {
          buffer.writeln("      $originalName: $fieldName.toDouble(),");
        }
      } else if (field.field.optional) {
        // Check if this is an ID type that needs ID class reconstruction
        final idClassName = _getIdClassNameFromField(field);
        if (idClassName != null) {
          buffer.writeln(
            "      $originalName: $fieldName != null ? Defined($idClassName($fieldName!)) : const Undefined(),",
          );
        } else {
          buffer.writeln(
            "      $originalName: $fieldName != null ? Defined($fieldName!) : const Undefined(),",
          );
        }
      } else {
        // Check if this is an ID type that needs ID class reconstruction
        final idClassName = _getIdClassNameFromField(field);
        if (idClassName != null) {
          buffer.writeln("      $originalName: $idClassName($fieldName),");
        } else {
          buffer.writeln("      $originalName: $fieldName,");
        }
      }
    }
    buffer.writeln('    );');
    buffer.writeln('  }');
    buffer.writeln('}');

    return buffer.toString();
  }

  /// Get the ID class name from a field's JsType
  String? _getIdClassNameFromField(_ObjectBoxFieldContext field) {
    final fieldType = field.field.fieldType;
    if (fieldType is ConvexId) {
      return fieldType.typeName;
    } else if (fieldType is JsArray) {
      // Handle arrays of IDs
      final itemType = fieldType.value;
      if (itemType is ConvexId) {
        return itemType.typeName;
      }
    }
    return null;
  }

  /// Gets the JSON model type name for a field stored as JSON in ObjectBox.
  ///
  /// This method looks up the custom type mapping from schema-mapping.json.
  /// For responseList fields, it checks both "list.fieldName" and "fieldName" patterns.
  ///
  /// Returns 'dynamic' as fallback if no mapping is found.
  ///
  /// Example mapping in schema-mapping.json:
  /// ```json
  /// "objectFields": {
  ///   "returns": {
  ///     "list.completedMeta": {
  ///       "name": "AuditAction",
  ///       "jsonType": "separate",
  ///       "objectBoxType": "String"
  ///     }
  ///   }
  /// }
  /// ```
  String _getJsonTypeForField(
    String fieldName,
    List<_ObjectBoxFieldContext> fieldContexts,
    ClientBuildContext context,
    FunctionSpec function,
  ) {
    // For JSON stored fields, look up the mapped type name from the schema mapping
    final endpointKey = _generateHttpEndpointKey(function);
    final endpointMapping = context.mappingData?[endpointKey];

    // Check returns mapping (for response fields) - these are at the top level
    final returns = endpointMapping?['returns'] as Map<String, dynamic>?;
    if (returns != null) {
      // Check for direct field mapping
      if (returns.containsKey(fieldName)) {
        final mapping = returns[fieldName];
        if (mapping is String) {
          return mapping;
        } else if (mapping is Map && mapping['name'] != null) {
          return mapping['name'] as String;
        }
      }

      // Check for list.fieldName mapping
      final listFieldKey = 'list.$fieldName';
      if (returns.containsKey(listFieldKey)) {
        final mapping = returns[listFieldKey];
        if (mapping is String) {
          return mapping;
        } else if (mapping is Map && mapping['name'] != null) {
          return mapping['name'] as String;
        }
      }
    }

    // Check args mapping (for request fields) - also at the top level
    final args = endpointMapping?['args'] as Map<String, dynamic>?;
    if (args != null && args.containsKey(fieldName)) {
      final mapping = args[fieldName];
      if (mapping is String) {
        return mapping;
      } else if (mapping is Map && mapping['name'] != null) {
        return mapping['name'] as String;
      }
    }

    // Legacy: Check both args and returns mappings under objectFields
    final objectFields = endpointMapping?['objectFields'] as Map<String, dynamic>?;
    if (objectFields != null) {
      // Check args mapping first (for request fields)
      final objectFieldsArgs = objectFields['args'] as Map<String, dynamic>?;
      if (objectFieldsArgs != null && objectFieldsArgs.containsKey(fieldName)) {
        final mapping = objectFieldsArgs[fieldName];
        if (mapping is String) {
          return mapping;
        } else if (mapping is Map && mapping['name'] != null) {
          return mapping['name'] as String;
        }
      }

      // Check returns mapping (for response fields)
      final objectFieldsReturns = objectFields['returns'] as Map<String, dynamic>?;
      if (objectFieldsReturns != null) {
        // Check for direct field mapping
        if (objectFieldsReturns.containsKey(fieldName)) {
          final mapping = objectFieldsReturns[fieldName];
          if (mapping is String) {
            return mapping;
          } else if (mapping is Map && mapping['name'] != null) {
            return mapping['name'] as String;
          }
        }

        // Check for list.fieldName mapping
        final listFieldKey = 'list.$fieldName';
        if (objectFieldsReturns.containsKey(listFieldKey)) {
          final mapping = objectFieldsReturns[listFieldKey];
          if (mapping is String) {
            return mapping;
          } else if (mapping is Map && mapping['name'] != null) {
            return mapping['name'] as String;
          }
        }
      }
    }

    // Fallback to a default type name if no mapping found
    return 'dynamic';
  }

  /// Builds an ObjectBox repository class for CRUD operations.
  ///
  /// The repository provides methods for:
  /// - Creating/inserting records from API models
  /// - Reading records as API models or Box entities
  /// - Updating records from API models
  /// - Deleting individual or multiple records
  /// - Bulk operations (putManyFromAPI, removeMany)
  ///
  /// The repository wraps ObjectBox's Box class and handles conversion
  /// between API models and ObjectBox entities automatically.
  String _buildObjectBoxRepository(
    FunctionSpec function,
    ClientBuildContext context,
    String typeName,
  ) {
    final className = typeName;
    final boxClassName = "${className}Box";
    final repoClassName = "${className}BoxRepo";

    return """
import 'package:api/objectbox.g.dart';
import '../box/${typeName.snakeCase}_box.dart';
import '../../json/index.dart';

class $repoClassName {
  final Box<$boxClassName> _box;

  $repoClassName(this._box);

  // Create from API model
  int createFromAPI($className model) {
    final boxModel = $boxClassName.fromAPI(model);
    return _box.put(boxModel);
  }

  // Read as API model
  $className? getAsAPI(int id) {
    final boxModel = _box.get(id);
    return boxModel?.toAPI();
  }

  // Read Box
  $boxClassName? getBox(int id) {
   return _box.get(id);
  }

  // Removes all records.
  void removeAll() => _box.removeAll();

  // Bulk insert from API models
  void putManyFromAPI(List<$className> models) {
    final entities = models.map((model) => $boxClassName.fromAPI(model)).toList();
    _box.putMany(entities);
  }

  // Bulk delete by a list of DB IDs.
  void removeMany(List<int> ids) => _box.removeMany(ids);

  List<$className> getAllAsAPI() {
    return _box.getAll().map((boxModel) => boxModel.toAPI()).toList();
  }

  List<$boxClassName> getAllBox() {
    return _box.getAll();
  }

  // Update from API model
  void updateFromAPI($className model, int id) {
    final boxModel = $boxClassName.fromAPI(model)..id = id;
    _box.put(boxModel);
  }

  // Delete
  bool delete(int id) {
    return _box.remove(id);
  }
}
""";
  }

  /// Converts a JsType to the appropriate ObjectBox storage type.
  ///
  /// For optional nullable primitives (e.g., `Optional<bool?>`), the schema represents
  /// them as unions like `[boolean, null]`. This method unwraps such unions to get
  /// the underlying primitive type.
  ///
  /// Mapping rules:
  /// - Primitives: String, double, int, bool map directly
  /// - Arrays/Objects: Stored as JSON strings
  /// - Unions: If simple primitive + null, use primitive type; otherwise use String
  /// - ConvexId/Literal: Stored as strings
  String _convertToObjectBoxType(JsType dartType) {
    return switch (dartType) {
      JsString _ => "String",
      JsNumber _ => "double",
      JsBigInt _ => "int",
      JsBoolean _ => "bool",
      JsArray _ => "String", // Store arrays as JSON strings
      JsObject _ => "String", // Store objects as JSON strings
      JsUnion union => _getObjectBoxTypeFromUnion(union),
      ConvexId _ => "String", // Store IDs as strings
      JsLiteral _ => "String", // Store literals as strings
      _ => "String", // Fallback to String
    };
  }

  /// Gets the ObjectBox type for a union.
  ///
  /// If the union is a simple primitive + null (e.g., [boolean, null]),
  /// returns the primitive type. Otherwise returns "String" for JSON storage.
  String _getObjectBoxTypeFromUnion(JsUnion union) {
    // Filter out null types
    final nonNullTypes = union.value.where((t) => t is! JsNull).toList();

    // If there's exactly one non-null type and it's a simple primitive, use it
    if (nonNullTypes.length == 1) {
      final type = nonNullTypes.first;
      if (type is JsBoolean) return "bool";
      if (type is JsNumber) return "double";
      if (type is JsBigInt) return "int";
      if (type is JsString) return "String";
    }

    // For complex unions (multiple types, objects, arrays, etc.), store as JSON
    return "String";
  }

  bool _isComplexType(JsType dartType) {
    return switch (dartType) {
      JsObject _ => true,
      JsArray _ => true,
      JsRecord _ => true,
      JsUnion union => _unionContainsComplexType(union),
      _ => false,
    };
  }

  /// Determines if a union type needs JSON serialization in ObjectBox.
  ///
  /// A union is considered complex (needs JSON serialization) if it:
  /// 1. Contains objects or arrays
  /// 2. Contains multiple different ConvexId types (e.g., `Union3<FieldAgentsId, ShippingClientsId, String>`)
  /// 3. Is a union of literal types (e.g., `Union4<$CompletedLiteral, $PendingLiteral, ...>`)
  ///
  /// Simple primitive unions (e.g., `Union2<String, int>` without null) can be stored as strings.
  bool _unionContainsComplexType(JsUnion union) {
    // Check if union contains any complex types or multiple ID types
    int idCount = 0;
    bool hasLiteral = false;

    for (final type in union.value) {
      if (type is! JsNull) {
        if (_isComplexType(type)) {
          return true;
        }
        if (type is ConvexId) {
          idCount++;
        }
        if (type is JsLiteral) {
          hasLiteral = true;
        }
      }
    }

    // If union has multiple different ID types, treat as complex (needs JSON serialization)
    if (idCount > 1) {
      return true;
    }

    // If union contains literals, treat as complex (needs JSON serialization for proper wrapping)
    if (hasLiteral) {
      return true;
    }

    return false;
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

  // The name of the class for the arguments
  // e.g. "MyFunction or void"
  String get argsTypeName {
    switch (args) {
      case JsAny():
        return "void";
      case JsObject obj when obj.value.isEmpty:
        return "void";
      case JsObject():
        return functionName.pascalCase;
      default:
        throw UnimplementedError(
          "Unsupported argument type: ${args.type} for the function $functionName.",
        );
    }
  }

  /// Gets the effective argument type name considering custom mapping
  String getEffectiveArgsTypeName(ClientBuildContext clientContext) {
    switch (args) {
      case JsAny():
        return "void";
      case JsObject obj when obj.value.isEmpty:
        return "void";
      case JsObject():
        // Check for custom request type name
        final customNames = _getCustomTypeNamesStatic(clientContext, this);
        final requestTypeName = customNames['requestType'] ?? functionName;
        return requestTypeName.pascalCase;
      default:
        throw UnimplementedError(
          "Unsupported argument type: ${args.type} for the function $functionName.",
        );
    }
  }

  /// Static version of _getCustomTypeNames for use in FunctionSpec
  static Map<String, String> _getCustomTypeNamesStatic(
    ClientBuildContext context,
    FunctionSpec function,
  ) {
    final result = <String, String>{};

    // Check mapping file for custom type names
    if (context.mappingData != null) {
      final functionKey = function.convexFunctionIdentifier;
      final postEndpointKey = _generateHttpEndpointKeyFromString(functionKey);
      final getEndpointKey = postEndpointKey.replaceFirst('POST:', 'GET:');

      // Try multiple possible keys to handle both old and new formats
      final possibleKeys = [
        getEndpointKey, // GET format: GET:/api/run/app/fieldAgentAuth/getMe
        postEndpointKey, // POST format: POST:/api/run/app/fieldAgentAuth/getMe
        functionKey, // Current format: fieldAgents:getMyFieldAgentProfile
        function.convexFunctionIdentifier, // Alternative format
      ];

      Map<String, dynamic>? functionMapping;

      for (final key in possibleKeys) {
        if (key.isNotEmpty && context.mappingData!.containsKey(key)) {
          functionMapping = context.mappingData![key] as Map<String, dynamic>?;
          break;
        }
      }

      if (functionMapping != null) {
        if (functionMapping.containsKey('request')) {
          result['requestType'] = functionMapping['request'] as String;
          print(
            "DEBUG: Using custom request type '${result['requestType']}' for $functionKey",
          );
        }
        if (functionMapping.containsKey('response')) {
          result['responseType'] = functionMapping['response'] as String;
          print(
            "DEBUG: Using custom response type '${result['responseType']}' for $functionKey",
          );
        }
        if (functionMapping.containsKey('responseList')) {
          result['responseList'] = functionMapping['responseList'] as String;
          print(
            "DEBUG: Using custom responseList type '${result['responseList']}' for $functionKey",
          );
        }
      }
    }

    return result;
  }

  String get returnsTypeName => "${functionName.pascalCase}Response";

  void build(FunctionBuildContext context) {
    context.headerBuffer.write("""
// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
""");

    // Add import for args class if it exists
    switch (args) {
      case JsAny():
        break;
      case JsObject obj when obj.value.isNotEmpty:
        // Get custom type names for import path
        final customNames = _getCustomTypeNamesStatic(
          context.clientContext,
          this,
        );
        final requestTypeName = customNames['requestType'] ?? functionName;
        context.headerBuffer.writeln(
          'import "../../models/json/${requestTypeName.snakeCase}.dart";',
        );
      default:
        break;
    }

    // Get the effective args type name from mapping configuration
    final effectiveArgsTypeName = getEffectiveArgsTypeName(
      context.clientContext,
    );

    switch (args) {
      case JsAny():
        break;
      case JsObject obj:
        context.generateClassDefinition(
          effectiveArgsTypeName,
          obj,
          context._currentFieldContext,
        );
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
    // Set context for returns processing
    context.setFieldContext("returns", "returns");
    final returnsTypeDef = returnsObject.dartType(context);
    context.clearFieldContext();
    context.typedefBuffer.write("typedef $returnsTypeName = $returnsTypeDef;");

    final operationType = switch (functionType) {
      FunctionType.query => "QueryOperation",
      FunctionType.mutation => "MutationOperation",
      FunctionType.action => "ActionOperation",
    };

    context.functionBuffer.writeln(
      "final $functionName = $operationType<$effectiveArgsTypeName,$returnsTypeName>('$convexFunctionIdentifier',serialize,deserialize);",
    );

    String serializeCode;
    if (args is JsAny) {
      serializeCode = "{}";
    } else if (args is JsObject && (args as JsObject).value.isEmpty) {
      // Handle empty args object
      serializeCode = "{}";
    } else if (args is JsObject) {
      // Generate serialization code for class properties instead of record fields
      final obj = args as JsObject;
      final buffer = StringBuffer("{");
      for (final entry in obj.value.entries) {
        if (entry.value.optional) {
          buffer.write(
            "if (args.${_dartSafeName(entry.key)}.isDefined) '${entry.key}': ${entry.value.fieldType.serialize(context, "args.${_dartSafeName(entry.key)}.asDefined().value", nullable: false)},",
          );
        } else {
          buffer.write(
            "'${entry.key}': ${entry.value.fieldType.serialize(context, "args.${_dartSafeName(entry.key)}", nullable: false)},",
          );
        }
      }
      buffer.write("}");
      serializeCode = buffer.toString();
    } else {
      serializeCode = args.serialize(context, "args", nullable: false);
      // Remove the "encodeValue(" and ")"
      serializeCode = serializeCode.substring(12, serializeCode.length - 1);
    }

    // Check if the return type contains null to determine nullable parameter
    bool isReturnNullable = false;
    if (returns is JsUnion) {
      isReturnNullable = (returns as JsUnion).value.any((e) => e is JsNull);
    }

    String deserializeCode = returns.deserialize(
      context,
      "decodeValue(map)",
      nullable: isReturnNullable,
    );
    if (returns is! JsObject) {
      deserializeCode = "(body: $deserializeCode)";
    }

    // Generate appropriate function signature based on args type
    final serializeFunctionSignature =
        (args is JsObject && (args as JsObject).value.isEmpty)
        ? "BTreeMapStringValue serialize(void args)"
        : "BTreeMapStringValue serialize($effectiveArgsTypeName args)";

    context.functionBuffer.writeln("""
$serializeFunctionSignature {
  return hashmapToBtreemap(hashmap: $serializeCode);
}

""");
    context.functionBuffer.writeln("""
$returnsTypeName deserialize(DartValue map) {
  return $deserializeCode;
}
""");
  }
}

@MappableClass()
class JsField with JsFieldMappable {
  final JsType fieldType;
  final bool optional;
  const JsField(this.fieldType, this.optional);
  String dartType(FunctionBuildContext context) {
    String type = fieldType.dartType(context);
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
  String dartType(FunctionBuildContext context);
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  });
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  });
}

@MappableClass(discriminatorValue: 'any')
class JsAny extends JsType with JsAnyMappable {
  const JsAny(super.type);
  @override
  String dartType(FunctionBuildContext context) => 'dynamic';
  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "encodeValue($name)";

  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    return name;
  }
}

@MappableClass(discriminatorValue: 'boolean')
class JsBoolean extends JsType with JsBooleanMappable {
  const JsBoolean(super.type);
  @override
  String dartType(FunctionBuildContext context) => 'bool';
  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "encodeValue($name)";
  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    return "($name as bool$suffix)";
  }
}

@MappableClass(discriminatorValue: 'string')
class JsString extends JsType with JsStringMappable {
  const JsString(super.type);
  @override
  String dartType(FunctionBuildContext context) => 'String';
  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "encodeValue($name)";
  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    return "($name as String$suffix)";
  }
}

@MappableClass(discriminatorValue: 'number')
class JsNumber extends JsType with JsNumberMappable {
  const JsNumber(super.type);
  @override
  String dartType(FunctionBuildContext context) => 'double';
  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "encodeValue($name)";
  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    return "($name as double$suffix)";
  }
}

@MappableClass(discriminatorValue: 'null')
class JsNull extends JsType with JsNullMappable {
  const JsNull(super.type);
  @override
  String dartType(FunctionBuildContext context) => 'void';
  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "null";
  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    return "null";
  }
}

@MappableClass(discriminatorValue: 'bigint')
class JsBigInt extends JsType with JsBigIntMappable {
  const JsBigInt(super.type);
  @override
  String dartType(FunctionBuildContext context) => 'int';
  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "encodeValue($name)";
  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    return "($name as int$suffix)";
  }
}

@MappableClass(discriminatorValue: 'bytes')
class JsBytes extends JsType with JsBytesMappable {
  const JsBytes(super.type);
  @override
  String dartType(FunctionBuildContext context) => 'Uint8ListWithEquality';
  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "encodeValue($name)";
  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    return "($name as Uint8ListWithEquality$suffix)";
  }
}

@MappableClass(discriminatorValue: 'literal')
class JsLiteral extends JsType with JsLiteralMappable {
  final dynamic value;
  const JsLiteral(this.value, super.type);

  /// The name of the class which we will generate for this literal
  String get literalTypeName {
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

  dynamic get literalValueCode {
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
    return valueString;
  }

  // The code of the literal class
  String get _literalCode {
    return """

class $literalTypeName implements Literal {
  const $literalTypeName();
  const $literalTypeName.validate(dynamic value):assert(value == $literalValueCode, r"Value mismatch for $literalTypeName");
  
  @override
  final value = $literalValueCode; 

  @override
  bool operator ==(Object other) {
    if (other is $literalTypeName) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return r"$literalTypeName($value)";
  }
}
""";
  }

  @override
  String dartType(FunctionBuildContext context) {
    context.clientContext.literals.add(this);
    return literalTypeName;
  }

  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "encodeValue($name)";
  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    if (nullable) {
      return "$name == null ? null : $literalTypeName.validate($name)";
    }
    // While we really don't have to, it would be nice to catch any mismatches between
    // the type returned by the backend and the value we expect.
    return "$literalTypeName.validate($name)";
  }
}

@MappableClass(discriminatorValue: 'union')
class JsUnion extends JsType with JsUnionMappable {
  final List<JsType> value;
  const JsUnion(this.value, super.type);

  // Whether this uses the real union type, or is only a nullable type
  bool get isRealUnion => value.where((e) => e is! JsNull).length > 1;

  @override
  String dartType(FunctionBuildContext context) {
    final realTypes = value.where((e) => e is! JsNull).toList();
    final containsNull = value.any((e) => e is JsNull);

    // Ensure we don't have a union between literal and a non-literal type
    if (realTypes.any((e) => e is JsLiteral) &&
        realTypes.any((e) => e is! JsLiteral)) {
      throw UnimplementedError(
        "A union may not contain a literal type and a non-literal type. If you are seeing this, please file an issue on GitHub.",
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

  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final realTypes = value.where((e) => e is! JsNull).toList();
    if (realTypes.length == 1) {
      return realTypes[0].serialize(context, name, nullable: true);
    } else {
      final List<String> ons = [];
      for (final type in realTypes) {
        final argName = "on${math.Random().nextInt(1000000)}";
        ons.add(
          "($argName) => ${type.serialize(context, argName, nullable: nullable)}",
        );
      }
      nullable = nullable || value.any((e) => e is JsNull);
      final dot = nullable ? "?." : ".";

      return "encodeValue($name${dot}split(${ons.join(", ")}))";
    }
  }

  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    nullable = nullable || value.any((e) => e is JsNull);
    final dot = nullable ? "?." : ".";
    // Do we need to cast?
    final realTypes = value.where((e) => e is! JsNull).toList();
    if (realTypes.length == 1) {
      return realTypes[0].deserialize(context, name, nullable: nullable);
    } else {
      String type =
          "Union${realTypes.length}<${realTypes.map((e) => e.dartType(context)).join(', ')}>";
      // If it is a union of literals, we need to use the fromValue method
      if (realTypes.every((e) => e is JsLiteral)) {
        // ignore: prefer_interpolation_to_compose_strings
        final fnBuffer = StringBuffer();
        final StringBuffer map = StringBuffer("{");
        for (final literal in realTypes.whereType<JsLiteral>()) {
          map.write(
            "${literal.literalValueCode} : ${literal.literalTypeName}(),",
          );
        }
        if (nullable) {
          map.write("null:null,");
        }
        map.write("}");
        fnBuffer.writeln("""
final map = $map;
if (map.containsKey($name)){
  return map[$name];
}
throw Exception(($name${dot}toString() ?? "null") + r" cannot be deserialized into a $type");
""");
        type = """$type((){$fnBuffer}())""";
      } else {
        final fnBuffer = StringBuffer();
        for (final type in realTypes) {
          fnBuffer.writeln("""
try{
  return ${type.deserialize(context, name, nullable: nullable)};
} catch(e){}
""");
        }
        if (nullable) {
          fnBuffer.writeln("""
if ($name == null){
  return null;
}
""");
        }
        fnBuffer.writeln("""
throw Exception(($name${dot}toString() ?? "null") + r" cannot be deserialized into a $type");
""");

        type = """$type((){$fnBuffer}())""";
      }
      return type;
    }
  }
}

@MappableClass(discriminatorValue: 'record')
class JsRecord extends JsType with JsRecordMappable {
  final JsType keys;
  final JsField values;
  const JsRecord(this.keys, this.values, super.type);
  @override
  String dartType(FunctionBuildContext context) {
    if (keys is! JsString) {
      throw UnimplementedError(
        "Record keys must be a string. If you are seeing this, please file an issue on GitHub.",
      );
    }
    return "IMap<String, ${values.dartType(context)}>";
  }

  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final dot = nullable ? "?." : ".";
    final argName = "on${random.nextInt(1000000)}";
    return "encodeValue({for (final $argName in $name${dot}entries) $argName${dot}key: encodeValue(${values.fieldType.serialize(context, "$argName${dot}value", nullable: nullable)})})";
  }

  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    final dot = nullable ? "?." : ".";
    final keyArgName = "on${random.nextInt(1000000)}";
    final valueArgName = "on${random.nextInt(1000000)}";
    return "($name as IMap<String, dynamic>$suffix)${dot}map(($keyArgName, $valueArgName) => MapEntry( $keyArgName, ${values.fieldType.deserialize(context, valueArgName, nullable: nullable)}))";
  }
}

@MappableClass(discriminatorValue: 'object')
class JsObject extends JsType with JsObjectMappable {
  final Map<String, JsField> value;
  const JsObject(this.value, super.type);

  Iterable<MapEntry<String, JsField>> get optionalFields =>
      value.entries.where((entry) => entry.value.optional);

  String dartSafeName(String name) {
    if (name.startsWith("_")) {
      name = "\$$name";
    }
    if (_dartKeywords.contains(name)) {
      name = "\$$name";
    }
    return name;
  }

  @override
  String dartType(FunctionBuildContext context) {
    // Handle empty objects by returning void instead of empty record type
    if (value.isEmpty) {
      return "void";
    }

    // Check if this should be extracted as a separate model class
    // Extract if it has multiple fields or nested objects
    if (value.length > 1 ||
        value.values.any((field) => field.fieldType is JsObject)) {
      return _extractAsModelClass(context);
    }

    // For simple single-field objects, use inline record type
    final recordFields = <String>[];
    for (final entry in value.entries) {
      // Set field context for each nested field
      final originalFieldName = context._currentFieldName;
      final originalFieldContext = context._currentFieldContext;

      // Build nested field path for mapping lookup
      final fieldPath =
          originalFieldName != null && originalFieldName.isNotEmpty
          ? "$originalFieldName.${entry.key}"
          : entry.key;

      context.setFieldContext(fieldPath, originalFieldContext ?? "args");
      final fieldType = entry.value.dartType(context);
      context._currentFieldName = originalFieldName;
      context._currentFieldContext = originalFieldContext;
      recordFields.add("$fieldType ${dartSafeName(entry.key)}");
    }
    return "({${recordFields.join(",")}})";
  }

  /// Extract this object as a separate model class
  String _extractAsModelClass(
    FunctionBuildContext context, [
    String? fieldName,
    String? fieldContext,
  ]) {
    // Check if we have a specific mapping for this field
    String className;

    // Use provided parameters or fall back to context
    final effectiveFieldName = fieldName ?? context._currentFieldName;
    final effectiveFieldContext = fieldContext ?? context._currentFieldContext;

    if (effectiveFieldName != null && effectiveFieldContext != null) {
      // Try both the full path and just the field name for mapping lookup
      final fullPath = context.getFullFieldPath(effectiveFieldName);
      final mapping =
          context.getObjectFieldMapping(fullPath, effectiveFieldContext) ??
          context.getObjectFieldMapping(
            effectiveFieldName,
            effectiveFieldContext,
          );

      final mappedClassName = mapping?.name;

      if (mappedClassName != null) {
        className = mappedClassName;
        // Check if we've already generated this class to avoid duplicates
        if (!context._extractedClasses.contains(className)) {
          // Push this field name to the path stack for nested processing
          context.pushFieldPath(effectiveFieldName);
          _generateSeparateModelFile(context, className, effectiveFieldContext);
          context.popFieldPath();
          // Add to extracted classes set for import generation
          context._extractedClasses.add(className);
        }
        return className;
      }
    }

    // If no mapping found, don't extract as a separate class
    // Let it use inline record type instead
    return "({${value.entries.map((entry) => "${entry.value.dartType(context)} ${dartSafeName(entry.key)}").join(",")}})";
  }

  /// Generate a separate model file for the extracted class
  void _generateSeparateModelFile(
    FunctionBuildContext context,
    String className,
    String? fieldContext,
  ) {
    final buffer = StringBuffer();

    // Track extracted classes used by this class for import generation
    final Set<String> usedExtractedClasses = <String>{};

    // Add file header
    buffer.writeln(
      '// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code',
    );
    buffer.writeln(
      '// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member',
    );
    buffer.writeln(
      '// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter',
    );
    buffer.writeln(
      'import "package:convex_dart/src/convex_dart_for_generated_code.dart";',
    );
    buffer.writeln('import "dart:typed_data";');
    buffer.writeln('import "../../schema.dart";');
    buffer.writeln('import "../../literals.dart";');
    buffer.writeln();

    // Generate the class
    buffer.writeln('class $className {');

    // Add fields
    for (final entry in value.entries) {
      // Set field context for recursive nested object processing
      context.setFieldContext(entry.key, fieldContext ?? "nested");
      final fieldType = entry.value.dartType(context);
      context.clearFieldContext();
      final fieldName = _dartSafeName(entry.key);

      // Track extracted class usage for imports
      context._trackExtractedClassUsage(fieldType, usedExtractedClasses);

      buffer.writeln('  final $fieldType $fieldName;');
    }

    buffer.writeln();

    // Add constructor
    buffer.writeln('  const $className({');
    for (final entry in value.entries) {
      final fieldName = _dartSafeName(entry.key);
      if (entry.value.optional) {
        buffer.writeln('    this.$fieldName = const Undefined(),');
      } else {
        buffer.writeln('    required this.$fieldName,');
      }
    }
    buffer.writeln('  });');

    buffer.writeln();

    // Add empty factory
    buffer.writeln('  factory $className.empty() {');
    buffer.writeln('    return $className(');
    for (final entry in value.entries) {
      final fieldName = _dartSafeName(entry.key);
      if (entry.value.optional) {
        buffer.writeln('      $fieldName: const Undefined(),');
      } else {
        // Provide default empty values based on field type
        context.setFieldContext(entry.key, fieldContext ?? "nested");
        final defaultValue = _getContextAwareDefaultValue(
          context,
          entry.value.fieldType,
        );
        context.clearFieldContext();
        buffer.writeln('      $fieldName: $defaultValue,');
      }
    }
    buffer.writeln('    );');
    buffer.writeln('  }');

    buffer.writeln();

    // Add fromJson factory
    buffer.writeln(
      '  factory $className.fromJson(Map<String, dynamic> json) {',
    );
    buffer.writeln('    return $className(');
    for (final entry in value.entries) {
      final fieldName = _dartSafeName(entry.key);
      final jsonKey = entry.key;

      // Use simple, direct deserialization for separate model files
      context.setFieldContext(entry.key, fieldContext ?? "nested");
      context.clearFieldContext();

      // Check if this field should use an extracted class
      final fullPath = context.getFullFieldPath(fieldName);
      final mapping =
          context.getObjectFieldMapping(fullPath, fieldContext ?? "nested") ??
          context.getObjectFieldMapping(fieldName, fieldContext ?? "nested");
      final extractedClassName = mapping?.name;

      String fromJsonValue;
      if (extractedClassName != null && entry.value.fieldType is JsObject) {
        fromJsonValue =
            "$extractedClassName.fromJson(json['$jsonKey'] as Map<String, dynamic>)";
      } else {
        fromJsonValue = _getSeparateFileFromJsonValue(
          entry.value.fieldType,
          "json['$jsonKey']",
        );
      }

      if (entry.value.optional) {
        buffer.writeln('      $fieldName: json.containsKey(\'$jsonKey\')');
        buffer.writeln('          ? Defined($fromJsonValue)');
        buffer.writeln('          : const Undefined(),');
      } else {
        buffer.writeln('      $fieldName: $fromJsonValue,');
      }
    }
    buffer.writeln('    );');
    buffer.writeln('  }');

    buffer.writeln();

    // Add toJson method
    buffer.writeln('  Map<String, dynamic> toJson() {');
    buffer.writeln('    return {');
    for (final entry in value.entries) {
      final fieldName = _dartSafeName(entry.key);
      final jsonKey = entry.key;

      // Use proper serialization based on field type
      context.setFieldContext(entry.key, fieldContext ?? "nested");
      final serializeValue = entry.value.fieldType.serialize(
        context,
        fieldName,
        nullable: entry.value.optional,
      );
      context.clearFieldContext();

      if (entry.value.optional) {
        buffer.writeln(
          '      if ($fieldName.isDefined) \'$jsonKey\': ${entry.value.fieldType.serialize(context, "$fieldName.asDefined().value", nullable: false)},',
        );
      } else {
        buffer.writeln('      \'$jsonKey\': $serializeValue,');
      }
    }
    buffer.writeln('    };');
    buffer.writeln('  }');

    buffer.writeln();

    // Add copyWith method
    buffer.writeln('  $className copyWith({');
    for (final entry in value.entries) {
      final fieldName = _dartSafeName(entry.key);
      // Use the dartType method to get proper types including extracted classes
      context.setFieldContext(entry.key, fieldContext ?? "nested");
      final fieldTypeName = entry.value.dartType(context);
      context.clearFieldContext();

      // For copyWith, add ? only if the type is not already nullable
      final copyWithType = fieldTypeName.endsWith('?')
          ? fieldTypeName
          : '$fieldTypeName?';
      buffer.writeln('    $copyWithType $fieldName,');
    }
    buffer.writeln('  }) {');
    buffer.writeln('    return $className(');
    for (final entry in value.entries) {
      final fieldName = _dartSafeName(entry.key);
      buffer.writeln('      $fieldName: $fieldName ?? this.$fieldName,');
    }
    buffer.writeln('    );');
    buffer.writeln('  }');

    buffer.writeln();

    // Add operator == method
    buffer.writeln('  @override');
    buffer.writeln('  bool operator ==(Object other) {');
    buffer.writeln('    if (identical(this, other)) return true;');
    buffer.writeln('    return other is $className &&');
    final entries = value.entries.toList();
    for (int i = 0; i < entries.length; i++) {
      final entry = entries[i];
      final fieldName = _dartSafeName(entry.key);
      final isLast = i == entries.length - 1;
      if (isLast) {
        buffer.writeln('        other.$fieldName == $fieldName;');
      } else {
        buffer.writeln('        other.$fieldName == $fieldName &&');
      }
    }
    buffer.writeln('  }');

    buffer.writeln();

    // Add hashCode method
    buffer.writeln('  @override');
    buffer.writeln('  int get hashCode {');
    buffer.write('    return ');
    for (int i = 0; i < entries.length; i++) {
      final entry = entries[i];
      final fieldName = _dartSafeName(entry.key);
      final isLast = i == entries.length - 1;
      if (isLast) {
        buffer.writeln('$fieldName.hashCode;');
      } else {
        buffer.write('$fieldName.hashCode ^ ');
      }
    }
    buffer.writeln('  }');

    buffer.writeln();

    // Add toString method
    buffer.writeln('  @override');
    buffer.writeln('  String toString() {');
    buffer.writeln('    return toJson().toString();');
    buffer.writeln('  }');

    buffer.writeln('}');

    // Generate imports for used extracted classes and insert them
    String finalContent = buffer.toString();
    if (usedExtractedClasses.isNotEmpty) {
      final imports = StringBuffer();
      for (final usedClass in usedExtractedClasses) {
        final fileName = usedClass.snakeCase;
        imports.writeln('import "$fileName.dart";');
      }

      // Insert imports after the existing imports
      final importInsertPoint =
          finalContent.indexOf('import "../../literals.dart";\n') +
          'import "../../literals.dart";\n'.length;
      finalContent =
          finalContent.substring(0, importInsertPoint) +
          imports.toString() +
          finalContent.substring(importInsertPoint);
    }

    // Save the file to outputs
    final fileName = className.snakeCase;
    final filePath = "src/models/json/$fileName.dart";
    context.clientContext.outputs[filePath] = finalContent;
  }

  /// Helper methods for generating separate model files

  String _getContextAwareDefaultValue(
    FunctionBuildContext context,
    JsType fieldType,
  ) {
    return switch (fieldType) {
      JsString _ => "''",
      JsNumber _ => "0.0",
      JsBigInt _ => "0",
      JsBoolean _ => "false",
      JsArray _ => "const IListConst([])",
      JsObject obj => _getObjectDefaultValue(context, obj),
      ConvexId convexId => "${convexId.typeName}('')",
      _ => "null",
    };
  }

  String _getObjectDefaultValue(FunctionBuildContext context, JsObject obj) {
    // First, check if there's an extracted class for this field
    final currentFieldName = context.getCurrentFieldName();
    final currentFieldContext = context.getCurrentFieldContext();
    if (currentFieldName.isNotEmpty && currentFieldContext.isNotEmpty) {
      final mapping = context.getObjectFieldMapping(
        currentFieldName,
        currentFieldContext,
      );
      final extractedClassName = mapping?.name;
      if (extractedClassName != null) {
        return "$extractedClassName.empty()";
      }
    }

    // Try to get the extracted class name for this object
    final dartType = obj.dartType(context);
    if (dartType.contains('(') && dartType.contains(')')) {
      // It's a record type, create an empty record
      return dartType
          .replaceFirst('({', '(')
          .replaceFirst('})', ')')
          .replaceAllMapped(
            RegExp(r'(\w+)\s+(\w+)'),
            (match) =>
                '${match.group(2)}: ${_getDefaultForSimpleType(match.group(1)!)}',
          );
    } else {
      // It's a class name, use empty constructor
      return "$dartType.empty()";
    }
  }

  String _getDefaultForSimpleType(String typeName) {
    return switch (typeName) {
      'String' => "''",
      'double' => "0.0",
      'int' => "0",
      'bool' => "false",
      _ => "null",
    };
  }

  String _getFromJsonValue(JsType fieldType, String jsonValue) {
    return switch (fieldType) {
      JsString _ => '$jsonValue as String',
      JsNumber _ => '$jsonValue as double',
      JsBigInt _ => '$jsonValue as int',
      JsBoolean _ => '$jsonValue as bool',
      ConvexId convexId => "${convexId.typeName}($jsonValue as String)",
      JsArray array => _getArrayFromJsonValue(array, jsonValue),
      JsObject obj => _getObjectFromJsonValue(obj, jsonValue),
      _ => jsonValue,
    };
  }

  String _getArrayFromJsonValue(JsArray array, String jsonValue) {
    return "($jsonValue as List<dynamic>).map((e) => ${_getFromJsonValue(array.value, 'e')}).toIList()";
  }

  String _getObjectFromJsonValue(JsObject obj, String jsonValue) {
    // For nested objects, assume they have fromJson constructor
    return jsonValue; // This might need more specific handling
  }

  String _dartSafeName(String name) {
    if (name.startsWith("_")) {
      name = "\$$name";
    }
    if (_dartKeywords.contains(name)) {
      name = "\$$name";
    }
    return name;
  }

  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final dot = nullable ? "?." : ".";
    final buffer = StringBuffer("{");
    for (final entry in value.entries) {
      if (entry.value.optional) {
        buffer.write(
          "if ($name$dot${dartSafeName(entry.key)}${dot}isDefined) '${entry.key}': ${entry.value.fieldType.serialize(context, "$name$dot${dartSafeName(entry.key)}${dot}asDefined()${dot}value", nullable: nullable)},",
        );
      } else {
        buffer.write(
          "'${entry.key}': ${entry.value.fieldType.serialize(context, "$name$dot${dartSafeName(entry.key)}", nullable: nullable)},",
        );
      }
    }
    buffer.write("}");
    return "encodeValue($buffer)";
  }

  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    final dot = nullable ? "?." : ".";
    final argName = "on${math.Random().nextInt(1000000)}";
    final buffer = StringBuffer(
      "($name as IMap<String, dynamic>$suffix)${dot}then(($argName) => (",
    );
    for (final entry in value.entries) {
      if (entry.value.optional) {
        buffer.write(
          "${dartSafeName(entry.key)}: $argName.containsKey('${entry.key}') ? Defined(${entry.value.fieldType.deserialize(context, "$argName['${entry.key}']", nullable: false)}) : Undefined<${entry.value.fieldType.dartType(context)}>(),",
        );
      } else {
        buffer.write(
          "${dartSafeName(entry.key)}: ${entry.value.fieldType.deserialize(context, "$argName['${entry.key}']", nullable: false)},",
        );
      }
    }
    buffer.write("))");
    return buffer.toString();
  }

  String _getSeparateFileFromJsonValue(JsType fieldType, String jsonValue) {
    return switch (fieldType) {
      JsString _ => "$jsonValue as String",
      JsNumber _ => "$jsonValue as double",
      JsBigInt _ => "$jsonValue as int",
      JsBoolean _ => "$jsonValue as bool",
      JsArray _ => "$jsonValue as List<dynamic>",
      JsObject _ => "($jsonValue as Map<String, dynamic>).toIMap()",
      ConvexId _ => "$jsonValue as String",
      JsRecord _ => "($jsonValue as Map<String, dynamic>).toIMap()",
      _ => jsonValue,
    };
  }
}

@MappableClass(discriminatorValue: 'array')
class JsArray extends JsType with JsArrayMappable {
  final JsType value;
  const JsArray(this.value, super.type);
  @override
  String dartType(FunctionBuildContext context) {
    return "IList<${value.dartType(context)}>";
  }

  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final dot = nullable ? "?." : ".";
    final argName = "on${math.Random().nextInt(1000000)}";
    return "encodeValue($name${dot}map(($argName) => ${value.serialize(context, argName, nullable: nullable)})${dot}toIList())";
  }

  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    final dot = nullable ? "?." : ".";
    final randName = "on${math.Random().nextInt(1000000)}";
    return "($name as IList<dynamic>$suffix)${dot}map(($randName) => ${value.deserialize(context, randName, nullable: nullable)})${dot}toIList()";
  }
}

@MappableClass(discriminatorValue: 'id')
class ConvexId extends JsType with ConvexIdMappable {
  final String tableName;
  const ConvexId(this.tableName, super.type);

  String get typeName => "${tableName.pascalCase}Id";

  @override
  String dartType(FunctionBuildContext context) {
    context.clientContext.tables.add(tableName);
    return typeName;
  }

  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    return "encodeValue($name)";
  }

  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    if (nullable) {
      return "$name == null ? null : $typeName($name as String)";
    }
    return "$typeName($name as String)";
  }
}

List<String> _dartKeywords = [
  'abstract',
  'as',
  'assert',
  'async',
  'await',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'covariant',
  'default',
  'deferred',
  'do',
  'dynamic',
  'else',
  'enum',
  'export',
  'extends',
  'extension',
  'external',
  'factory',
  'false',
  'final',
  'finally',
  'for',
  'Function',
  'get',
  'hide',
  'if',
  'implements',
  'import',
  'in',
  'interface',
  'is',
  'library',
  'mixin',
  'new',
  'null',
  'on',
  'operator',
  'part',
  'rethrow',
  'return',
  'set',
  'show',
  'static',
  'super',
  'switch',
  'sync',
  'this',
  'throw',
  'true',
  'try',
  'typedef',
  'var',
  'void',
  'while',
  'with',
  'yield',
];
