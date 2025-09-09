// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query63 = QueryOperation<Query63Args, Query63Response>(
  'tasks:query63',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query63Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on657279) => encodeValue(on657279)).toIList(),
      ),
    },
  );
}

Query63Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on113900) => (
      i: (on113900['i'] as IList<dynamic>)
          .map(
            (on735135) => on735135 == null ? null : TasksId(on735135 as String),
          )
          .toIList(),
    ),
  );
}

typedef Query63Args = ({IList<TasksId?> i});
typedef Query63Response = ({IList<TasksId?> i});
