// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query79 = QueryOperation<Query79Args, Query79Response>(
  'tasks:query79',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query79Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on587435 in args.i.entries)
          on587435.key: encodeValue(encodeValue(on587435.value)),
      }),
    },
  );
}

Query79Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on292890) => (
      i: (on292890['i'] as IMap<String, dynamic>).map(
        (on467316, on331147) =>
            MapEntry(on467316, $TrueLiteral.validate(on331147)),
      ),
    ),
  );
}

typedef Query79Args = ({IMap<String, $TrueLiteral> i});
typedef Query79Response = ({IMap<String, $TrueLiteral> i});
