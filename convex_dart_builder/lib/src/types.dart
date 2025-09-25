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
    final moduleName = parts[0]; // e.g., "fieldAgentAuth" or "fieldAgentCashCount"
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

class ClientBuildContext {
  final Map<String, String> outputs = {};
  final Set<JsLiteral> literals = {};
  final Set<String> tables = {};
  final Map<String, dynamic>? mappingData;
  final Map<String, dynamic>? objectBoxFunctionsData;

  ClientBuildContext({this.mappingData, this.objectBoxFunctionsData});
}

class FunctionBuildContext {
  final StringBuffer headerBuffer = StringBuffer();
  final StringBuffer functionBuffer = StringBuffer();
  final StringBuffer typedefBuffer = StringBuffer();
  final StringBuffer classBuffer = StringBuffer();

  final ClientBuildContext clientContext;
  FunctionBuildContext(this.clientContext);

  void generateClassDefinition(String className, JsObject obj) {
    if (obj.value.isEmpty) {
      return; // Skip empty objects
    }

    classBuffer.writeln('class $className {');

    // Add fields
    for (final entry in obj.value.entries) {
      final fieldType = entry.value.dartType(this);
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
        // Required fields need proper default values
        final defaultValue = _getDefaultValueForType(entry.value.fieldType);
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

      if (entry.value.optional) {
        classBuffer.writeln(
          '      $fieldName: json[\'$jsonKey\'] != null ? Defined(${_generateFromJsonValue(fieldType, "json['$jsonKey']")}) : const Undefined(),',
        );
      } else {
        classBuffer.writeln(
          '      $fieldName: ${_generateFromJsonValue(fieldType, "json['$jsonKey']")},',
        );
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
      final fieldType = entry.value.dartType(this);
      final fieldName = _dartSafeName(entry.key);
      classBuffer.writeln('    $fieldType? $fieldName,');
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

  String _generateFromJsonValue(JsType fieldType, String jsonValue) {
    return switch (fieldType) {
      JsString _ => '$jsonValue as String',
      JsNumber _ => '$jsonValue as double',
      JsBigInt _ => '$jsonValue as int',
      JsBoolean _ => '$jsonValue as bool',
      JsArray array => _generateArrayFromJson(array, jsonValue),
      JsObject obj => _generateObjectFromJson(obj, jsonValue),
      JsUnion union => _generateUnionFromJson(union, jsonValue),
      ConvexId convexId => "${convexId.typeName}($jsonValue as String)",
      JsLiteral literal => _generateLiteralFromJson(literal, jsonValue),
      _ => jsonValue, // fallback for complex types
    };
  }

  String _generateObjectFromJson(JsObject obj, String jsonValue) {
    // For record types, we need to reconstruct them properly
    if (obj.value.isEmpty) {
      return "null";
    }

    // For now, keep it simple and let the type system handle it
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
        final functionContext = FunctionBuildContext(context);
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
          final returnsSchema = function.returns;

          if (returnsSchema is JsObject) {
            print(
              "DEBUG: Response schema structure for $responseTypeName: ${returnsSchema.value.keys}",
            );
            final responseModelCode = _buildResponseJsonModel(
              function,
              responseTypeName,
              returnsSchema.value,
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
              "DEBUG: Cannot generate response JSON model: ${responseTypeName.snakeCase}.dart (returns is not a JsObject)",
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

  /// Generate possible HTTP endpoint key for a function
  String _generateHttpEndpointKey(FunctionSpec function) {
    // Convert new flat structure: "app/fieldAgentAuth.js:functionName" to "POST:/api/run/app/fieldAgentAuth/functionName"
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

        // Direct mapping: module name is already the category in the new structure
        return "POST:/api/run/app/$moduleName/$functionName";
      }
    }
    return '';
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
            ClientBuildContext(
              mappingData: context?.mappingData,
              objectBoxFunctionsData: context?.objectBoxFunctionsData,
            ),
          );

          // Build the temporary function
          tempFunction.build(functionContext);

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
      ClientBuildContext(mappingData: null, objectBoxFunctionsData: null),
    );

    // Build the temporary function to generate the class
    tempFunction.build(functionContext);

    // Return just the JSON model with correct headers
    return """// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

${functionContext.classBuffer.toString()}""";
  }

  String _buildObjectBoxModel(
    FunctionSpec function,
    ClientBuildContext context,
    String typeName,
  ) {
    final className = typeName;
    final boxClassName = "${className}Box";
    final obj = function.args as JsObject;

    final buffer = StringBuffer("""
import 'package:objectbox/objectbox.dart';""");

    // Check if we need dart:convert import
    final needsJsonConvert = obj.value.entries.any(
      (entry) => _isComplexType(entry.value.fieldType),
    );
    if (needsJsonConvert) {
      buffer.writeln("import 'dart:convert';");
    }

    buffer.write("""

@Entity()
class $boxClassName {
  @Id()
  int id = 0;

""");

    // Generate fields
    for (final entry in obj.value.entries) {
      final fieldName = _dartSafeName(entry.key);
      final fieldType = _convertToObjectBoxType(entry.value.fieldType);
      final isOptional = entry.value.optional;

      if (fieldName.contains("At") || fieldName.contains("Date")) {
        buffer.writeln('  @Property(type: PropertyType.dateNano)');
        // For date fields, use int for nanoseconds storage
        buffer.writeln('  int${isOptional ? "?" : ""} $fieldName;');
      } else {
        buffer.writeln('  $fieldType${isOptional ? "?" : ""} $fieldName;');
      }
    }

    buffer.writeln();

    // Generate constructor
    buffer.writeln('  $boxClassName({');
    buffer.writeln('    this.id = 0,');
    for (final entry in obj.value.entries) {
      final fieldName = _dartSafeName(entry.key);
      if (entry.value.optional) {
        buffer.writeln('    this.$fieldName,');
      } else {
        buffer.writeln('    required this.$fieldName,');
      }
    }
    buffer.writeln('  });');

    buffer.writeln();

    // Generate fromMap factory
    buffer.writeln(
      '  factory $boxClassName.fromMap(Map<String, dynamic> map) {',
    );
    buffer.writeln('    return $boxClassName(');
    buffer.writeln('      id: 0,');
    for (final entry in obj.value.entries) {
      final fieldName = _dartSafeName(entry.key);
      final mapKey = entry.key;
      final fieldType = _convertToObjectBoxType(entry.value.fieldType);

      if (_isComplexType(entry.value.fieldType)) {
        buffer.writeln('      $fieldName: jsonEncode(map[\'$mapKey\']),');
      } else if (fieldName.contains("At") || fieldName.contains("Date")) {
        if (entry.value.optional) {
          buffer.writeln(
            '      $fieldName: (map[\'$mapKey\'] as double?)?.round(),',
          );
        } else {
          buffer.writeln(
            '      $fieldName: (map[\'$mapKey\'] as double).round(),',
          );
        }
      } else if (fieldType == "String" && !entry.value.optional) {
        buffer.writeln(
          '      $fieldName: map[\'$mapKey\']?.toString() ?? \'\',',
        );
      } else {
        buffer.writeln('      $fieldName: map[\'$mapKey\'],');
      }
    }
    buffer.writeln('    );');
    buffer.writeln('  }');

    buffer.writeln();

    // Generate toMap method
    buffer.writeln('  Map<String, dynamic> toMap() {');
    buffer.writeln('    return {');
    for (final entry in obj.value.entries) {
      final fieldName = _dartSafeName(entry.key);
      final mapKey = entry.key;

      if (_isComplexType(entry.value.fieldType)) {
        if (entry.value.optional) {
          buffer.writeln(
            '      \'$mapKey\': $fieldName != null ? jsonDecode($fieldName!) : null,',
          );
        } else {
          buffer.writeln('      \'$mapKey\': jsonDecode($fieldName),');
        }
      } else if (fieldName.contains("At") || fieldName.contains("Date")) {
        if (entry.value.optional) {
          buffer.writeln('      \'$mapKey\': $fieldName?.toDouble(),');
        } else {
          buffer.writeln('      \'$mapKey\': $fieldName.toDouble(),');
        }
      } else {
        buffer.writeln('      \'$mapKey\': $fieldName,');
      }
    }
    buffer.writeln('    };');
    buffer.writeln('  }');
    buffer.writeln('}');

    return buffer.toString();
  }

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

class $repoClassName {
  final Box<$boxClassName> _box;

  $repoClassName(this._box);

  // Create from map
  int createFromMap(Map<String, dynamic> map) {
    final boxModel = $boxClassName.fromMap(map);
    return _box.put(boxModel);
  }

  // Read as map
  Map<String, dynamic>? getAsMap(int id) {
    final boxModel = _box.get(id);
    return boxModel?.toMap();
  }

  // Read Box
  $boxClassName? getBox(int id) {
   return _box.get(id);
  }

  // Removes all records.
  void removeAll() => _box.removeAll();

  // Bulk insert from maps
  void putManyFromMaps(List<Map<String, dynamic>> maps) {
    final entities = maps.map((map) => $boxClassName.fromMap(map)).toList();
    _box.putMany(entities);
  }

  // Bulk delete by a list of DB IDs.
  void removeMany(List<int> ids) => _box.removeMany(ids);

  List<Map<String, dynamic>> getAllAsMaps() {
    return _box.getAll().map((boxModel) => boxModel.toMap()).toList();
  }

  List<$boxClassName> getAllBox() {
    return _box.getAll();
  }

  // Update from map
  void updateFromMap(Map<String, dynamic> map, int id) {
    final boxModel = $boxClassName.fromMap(map)..id = id;
    _box.put(boxModel);
  }

  // Delete
  bool delete(int id) {
    return _box.remove(id);
  }
}
""";
  }

  String _convertToObjectBoxType(JsType dartType) {
    return switch (dartType) {
      JsString _ => "String",
      JsNumber _ => "double",
      JsBigInt _ => "int",
      JsBoolean _ => "bool",
      JsArray _ => "String", // Store arrays as JSON strings
      JsObject _ => "String", // Store objects as JSON strings
      JsUnion _ => "String", // Store unions as strings
      ConvexId _ => "String", // Store IDs as strings
      JsLiteral _ => "String", // Store literals as strings
      _ => "String", // Fallback to String
    };
  }

  bool _isComplexType(JsType dartType) {
    return switch (dartType) {
      JsObject _ => true,
      JsArray _ => true,
      JsUnion _ => true,
      _ => false,
    };
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
      final httpEndpointKey = _generateHttpEndpointKeyFromString(functionKey);

      // Try multiple possible keys to handle both old and new formats
      final possibleKeys = [
        httpEndpointKey,           // New format: POST:/api/run/app/fieldAgentAuth/getMe
        functionKey,               // Current format: fieldAgents:getMyFieldAgentProfile
        function.convexFunctionIdentifier, // Alternative format
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
        context.generateClassDefinition(effectiveArgsTypeName, obj);
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
    context.typedefBuffer.write(
      "typedef $returnsTypeName = ${returnsObject.dartType(context)};",
    );

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
    // A union may not contain a String type and a ConvexId type
    // We have no way to differentiate between the two
    // So we need to throw an error
    if (value.any((e) => e is JsString) && value.any((e) => e is ConvexId)) {
      throw UnimplementedError(
        "A union may not contain a String type and a ConvexId type. If you are seeing this, please file an issue on GitHub.",
      );
    }

    final realTypes = value.where((e) => e is! JsNull).toList();
    // Ensure we don't have a union between literal and a non-literal type
    if (realTypes.any((e) => e is JsLiteral) &&
        realTypes.any((e) => e is! JsLiteral)) {
      throw UnimplementedError(
        "A union may not contain a literal type and a non-literal type. If you are seeing this, please file an issue on GitHub.",
      );
    }
    final containsNull = value.any((e) => e is JsNull);

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
    // Do we need to cast?

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
    return "({${value.entries.map((entry) => "${entry.value.dartType(context)} ${dartSafeName(entry.key)}").join(",")}})";
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
