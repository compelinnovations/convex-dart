// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query74 = QueryOperation<Query74Args, Query74Response>(
  'tasks:query74',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query74Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on421651 in args.i.entries)
          on421651.key: encodeValue(encodeValue(on421651.value)),
      }),
    },
  );
}

Query74Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on237665) => (
      i: (on237665['i'] as IMap<String, dynamic>).map(
        (on472729, on374358) => MapEntry(on472729, TasksId(on374358 as String)),
      ),
    ),
  );
}

typedef Query74Args = ({IMap<String, TasksId> i});
typedef Query74Response = ({IMap<String, TasksId> i});
