// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final arrayReturn = QueryOperation<void, ArrayReturnResponse>(
  'primitive_returns:arrayReturn',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(void args) {
  return hashmapToBtreemap(hashmap: {});
}

ArrayReturnResponse deserialize(DartValue map) {
  return (
    body: (decodeValue(map) as IList<dynamic>)
        .map((on624390) => (on624390 as String))
        .toIList(),
  );
}

typedef ArrayReturnResponse = ({IList<String> body});
