// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query86 = QueryOperation<Query86Args, Query86Response>(
  'tasks:query86',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query86Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on588124 in args.i.entries)
          on588124.key: encodeValue(encodeValue(on588124.value)),
      }),
    },
  );
}

Query86Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on684484) => (
      i: (on684484['i'] as IMap<String, dynamic>).map(
        (on535169, on531334) => MapEntry(
          on535169,
          on531334 == null ? null : TasksId(on531334 as String),
        ),
      ),
    ),
  );
}

typedef Query86Args = ({IMap<String, TasksId?> i});
typedef Query86Response = ({IMap<String, TasksId?> i});
