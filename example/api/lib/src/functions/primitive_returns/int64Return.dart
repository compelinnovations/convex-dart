// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final int64Return = QueryOperation<void, Int64ReturnResponse>(
  'primitive_returns:int64Return',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(void args) {
  return hashmapToBtreemap(hashmap: {});
}

Int64ReturnResponse deserialize(DartValue map) {
  return (body: (decodeValue(map) as int));
}

typedef Int64ReturnResponse = ({int body});
