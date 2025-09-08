import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:convex_dart_builder/src/types.dart';
import 'package:faker/faker.dart';

final faker = Faker();
void main(List<String> args) {
  final schema = json.decode(File("lib/schema.json").readAsStringSync());
  FunctionsSpec functionsSpec = FunctionsSpecMapper.fromMap(schema);
  final StringBuffer buffer = StringBuffer("""
import 'dart:convert';
import 'package:api/client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:collection/collection.dart';
${functionsSpec.functions.map((function) => "import 'package:api/src/functions/${function.folderName}/${function.fileName}';").join("\n")}

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
  return """
  test('${function.functionName}', () async {
    final sourceText = r'${json.encode(function.args.fakeValue())}';
    final sourceMap = json.decode(sourceText);
    final args = ${function.argsTypeName}Mapper.fromMap(sourceMap);
    final result = await ${function.functionName}.execute(args);
    final targetMap = result.toMap();
    expect(eq.equals(sourceMap, targetMap), isTrue, reason: 'Expected Source: \$sourceMap to be equal to Target: \$targetMap',
    );
  });
  """;
}

extension on JsType {
  dynamic fakeValue() {
    switch (this) {
      case JsString():
        return faker.lorem.word();
      case JsNumber():
        return faker.randomGenerator.decimal();
      case JsBoolean():
        return faker.randomGenerator.boolean();
      case JsBigInt():
        return faker.randomGenerator.integer(1000000);
      case JsAny():
        return faker.randomGenerator.element([
          faker.lorem.word(),
          faker.randomGenerator.integer(1000000),
          faker.randomGenerator.decimal(),
          faker.randomGenerator.boolean(),
        ]);
      case JsNull():
        return null;
      case JsBytes():
        return Uint8List.fromList([
          for (final i in List.generate(
            10,
            (index) => faker.randomGenerator.integer(255),
          ))
            i,
        ]);
      case JsLiteral obj:
        return obj.value;
      case JsUnion union:
        return faker.randomGenerator.element(union.value).fakeValue();
      case JsRecord record:
        final length = faker.randomGenerator.integer(10);
        final result = <String, dynamic>{};
        for (final i in List.generate(
          length,
          (index) => record.keys.fakeValue(),
        )) {
          final entry = record.values.fakeValue(i);
          if (entry != null) {
            result[entry.key] = entry.value;
          }
        }
        return result;
      case JsObject object:
        final entries = <MapEntry<String, dynamic>>[];
        for (final entry in object.value.entries) {
          final value = entry.value.fakeValue(entry.key);
          if (value != null) {
            entries.add(value);
          }
        }
        return Map.fromEntries(entries);

      case JsArray array:
        return List.generate(
          faker.randomGenerator.integer(10),
          (index) => array.value.fakeValue(),
        );
      case ConvexId id:
        if (id.tableName == "tasks") {
          return "j579e7k3cjcwj3jmzf9be7rva97q5w2c";
        }
        throw UnimplementedError("You must use the tasks table for tests");
    }
  }
}

extension on JsField {
  MapEntry<String, dynamic>? fakeValue(String fieldName) {
    if (optional && faker.randomGenerator.boolean()) {
      return null;
    }
    return MapEntry(fieldName, fieldType.fakeValue());
  }
}
