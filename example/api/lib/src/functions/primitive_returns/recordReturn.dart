// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final recordReturn = QueryOperation<void, RecordReturnResponse>(
  'primitive_returns:recordReturn',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(void args) {
  return hashmapToBtreemap(hashmap: {});
}

RecordReturnResponse deserialize(DartValue map) {
  return (
    body: (decodeValue(map) as IMap<String, dynamic>).map(
      (on137504, on470875) => MapEntry(on137504, (on470875 as String)),
    ),
  );
}

typedef RecordReturnResponse = ({IMap<String, String> body});
