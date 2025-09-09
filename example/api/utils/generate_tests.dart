import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:recase/recase.dart';
import 'package:convex_dart_builder/src/types.dart';
import 'package:faker/faker.dart';

final faker = Faker();
void main(List<String> args) {
  final schema = json.decode(File("lib/schema.json").readAsStringSync());
  FunctionsSpec functionsSpec = FunctionsSpecMapper.fromMap(schema);
  final StringBuffer buffer = StringBuffer("""
import 'dart:convert';
import 'package:api/client.dart';
import 'dart:typed_data';
import 'package:convex_dart/convex_dart.dart';
import 'package:convex_dart/src/rust/dart_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:collection/collection.dart';
import 'package:convex_dart/src/rust/dart_value/conversion.dart';
${functionsSpec.functions.map((function) => "import 'package:api/src/functions/${function.folderName}/${function.fileName}' as ${function.folderName}${function.functionName.pascalCase};").join("\n")}

final eq = DeepCollectionEquality.unordered();

void main() {
  setUpAll(() async {
    await ConvexClient.init();
  });
  ${functionsSpec.functions.map(buildTest).join("\n")}

}
""");
  File("test/query_test.dart").writeAsStringSync(buffer.toString());
}

String buildTest(FunctionSpec function) {
  final prefix = function.folderName + function.functionName.pascalCase;
  final fakeValues = List.generate(10, (index) => function.args.fakeValue());
  return """
  test('${function.functionName}', () async {
    final datas = <${function.argsTypeName}>[${fakeValues.join(",")}];
    for (final data in datas) {
      final serialized = $prefix.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = $prefix.deserialize(value1);
      expect(deserialized, data);
    }
  });
  """;
}

extension on JsType {
  dynamic fakeValue() {
    switch (this) {
      case JsString():
        return "'${faker.lorem.word()}'";
      case JsNumber():
        return faker.randomGenerator.decimal().toString();
      case JsBoolean():
        return faker.randomGenerator.boolean().toString();
      case JsBigInt():
        return faker.randomGenerator.integer(1000000).toString();
      case JsAny():
        return faker.randomGenerator.element([
          "'${faker.lorem.word()}'",
          faker.randomGenerator.integer(1000000).toString(),
          faker.randomGenerator.decimal().toString(),
          faker.randomGenerator.boolean().toString(),
        ]);
      case JsNull():
        return "null";
      case JsBytes():
        final list = List.generate(
          10,
          (index) => faker.randomGenerator.integer(255),
        );
        return "Uint8ListWithEquality.fromList([${list.map((e) => e.toString()).join(",")}])";
      case JsLiteral obj:
        return "${obj.literalTypeName}()";
      case JsUnion union:
        final realTypes = union.value.where((e) => e is! JsNull).toList();
        if (realTypes.length == 1) {
          if (faker.randomGenerator.boolean()) {
            return "null";
          } else {
            return realTypes[0].fakeValue();
          }
        } else {
          final randomIndex = faker.randomGenerator.integer(
            realTypes.length - 1,
          );
          final genericTypes = realTypes
              .map(
                (e) => e.dartType(FunctionBuildContext(ClientBuildContext())),
              )
              .join(",");
          return "Union${realTypes.length}<$genericTypes>.in${randomIndex + 1}(${realTypes[randomIndex].fakeValue()})";
        }

      case JsRecord record:
        final length = faker.randomGenerator.integer(10);
        final valueType = record.values.fieldType.dartType(
          FunctionBuildContext(ClientBuildContext()),
        );
        final buffer = StringBuffer("<String, $valueType>{");
        for (final _ in List.generate(length, (index) => index)) {
          final fakeKey = record.keys.fakeValue();
          final fakeValue = record.values.fieldType.fakeValue();
          buffer.write("$fakeKey: $fakeValue,");
        }
        buffer.write("}.lock");
        return buffer.toString();
      case JsObject object:
        final buffer = StringBuffer("(");
        for (final entry in object.value.entries) {
          if (entry.value.optional) {
            if (faker.randomGenerator.boolean()) {
              buffer.write("${entry.key}: Undefined(),");
            } else {
              buffer.write(
                "${entry.key}: Defined(${entry.value.fieldType.fakeValue()}),",
              );
            }
          } else {
            buffer.write("${entry.key}: ${entry.value.fieldType.fakeValue()},");
          }
        }
        buffer.write(")");
        return buffer.toString();

      case JsArray array:
        final type = array.value.dartType(
          FunctionBuildContext(ClientBuildContext()),
        );
        final buffer = StringBuffer("<$type>[");
        for (final i in List.generate(
          faker.randomGenerator.integer(10),
          (index) => array.value.fakeValue(),
        )) {
          buffer.write("$i,");
        }
        buffer.write("].lock");
        return buffer.toString();
      case ConvexId id:
        if (id.tableName == "tasks") {
          return "${id.typeName}('j579e7k3cjcwj3jmzf9be7rva97q5w2c')";
        }
        throw UnimplementedError("You must use the tasks table for tests");
    }
  }
}

enum Hi {
  hi(1);

  final dynamic value;
  const Hi(this.value);
}
