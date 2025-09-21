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
        for (final on283834 in args.i.entries)
          on283834.key: encodeValue(encodeValue(on283834.value)),
      }),
    },
  );
}

Query86Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on108772) => (
      i: (on108772['i'] as IMap<String, dynamic>).map(
        (on445501, on79241) => MapEntry(
          on445501,
          on79241 == null ? null : TasksId(on79241 as String),
        ),
      ),
    ),
  );
}

typedef Query86Args = ({IMap<String, TasksId?> i});
typedef Query86Response = ({IMap<String, TasksId?> i});
