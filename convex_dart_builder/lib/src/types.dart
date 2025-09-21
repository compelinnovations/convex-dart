import 'package:dart_mappable/dart_mappable.dart';
import 'package:recase/recase.dart';
import 'package:path/path.dart' as path;
import 'package:collection/collection.dart';
import 'package:dart_style/dart_style.dart';
import 'dart:math';
part 'types.mapper.dart';

final deepEqual = DeepCollectionEquality.unordered();
final formatter = DartFormatter(
  languageVersion: DartFormatter.latestLanguageVersion,
);
final random = Random();

class ClientBuildContext {
  final Map<String, String> outputs = {};
  final Set<JsLiteral> literals = {};
  final Set<String> tables = {};
  ClientBuildContext();
}

class FunctionBuildContext {
  final StringBuffer headerBuffer = StringBuffer();
  final StringBuffer functionBuffer = StringBuffer();
  final StringBuffer typedefBuffer = StringBuffer();

  final ClientBuildContext clientContext;
  FunctionBuildContext(this.clientContext);
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
    // Creat the entrypoint file
    _buildEntrypoint(context, successFunctions);
    // Format the code
    for (final entry in context.outputs.entries) {
      try {
        context.outputs[entry.key] = formatter.format(entry.value);
      } catch (e) {}
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
// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
""");

    switch (args) {
      case JsAny():
        break;
      case JsObject obj:
        context.typedefBuffer.write(
          "typedef $argsTypeName = ${obj.dartType(context)};",
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
    context.typedefBuffer.write(
      "typedef $returnsTypeName = ${returnsObject.dartType(context)};",
    );

    final opperationType = switch (functionType) {
      FunctionType.query => "QueryOperation",
      FunctionType.mutation => "MutationOperation",
      FunctionType.action => "ActionOperation",
    };

    context.functionBuffer.writeln(
      "final $functionName = $opperationType<$argsTypeName,$returnsTypeName>('$convexFunctionIdentifier',serialize,deserialize);",
    );

    String serializeCode;
    if (args is JsAny) {
      serializeCode = "{}";
    } else {
      serializeCode = args.serialize(context, "args", nullable: false);
      // Remove the "encodeValue(" and ")"
      serializeCode = serializeCode.substring(12, serializeCode.length - 1);
    }

    String deserializeCode = returns.deserialize(
      context,
      "decodeValue(map)",
      nullable: false,
    );
    if (returns is! JsObject) {
      deserializeCode = "(body: $deserializeCode)";
    }

    context.functionBuffer.writeln("""
BTreeMapStringValue serialize($argsTypeName args) {
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
        final argName = "on${random.nextInt(1000000)}";
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
      return realTypes[0].deserialize(context, name, nullable: true);
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
    final argName = "on${random.nextInt(1000000)}";
    final buffer = StringBuffer(
      "($name as IMap<String, dynamic>$suffix)${dot}then(($argName) => (",
    );
    for (final entry in value.entries) {
      if (entry.value.optional) {
        buffer.write(
          "${dartSafeName(entry.key)}: $argName${dot}containsKey('${entry.key}') ? Defined(${entry.value.fieldType.deserialize(context, "$argName['${entry.key}']", nullable: nullable)}) : Undefined<${entry.value.fieldType.dartType(context)}>(),",
        );
      } else {
        buffer.write(
          "${dartSafeName(entry.key)}: ${entry.value.fieldType.deserialize(context, "$argName['${entry.key}']", nullable: nullable)},",
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
    final argName = "on${random.nextInt(1000000)}";
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
    final randName = "on${random.nextInt(1000000)}";
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
