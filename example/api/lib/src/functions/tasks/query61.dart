// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query61 = QueryOperation<Query61Args, Query61Response>(
  'tasks:query61',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query61Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on468874) => encodeValue(on468874)).toIList(),
      ),
    },
  );
}

Query61Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on648975) => (
      i: (on648975['i'] as IList<dynamic>)
          .map((on424627) => (on424627 as int?))
          .toIList(),
    ),
  );
}

typedef Query61Args = ({IList<int?> i});
typedef Query61Response = ({IList<int?> i});
