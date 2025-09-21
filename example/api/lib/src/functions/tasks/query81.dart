// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query81 = QueryOperation<Query81Args, Query81Response>(
  'tasks:query81',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query81Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on715760 in args.i.entries)
          on715760.key: encodeValue(encodeValue(on715760.value)),
      }),
    },
  );
}

Query81Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on669831) => (
      i: (on669831['i'] as IMap<String, dynamic>).map(
        (on397497, on318581) => MapEntry(on397497, (on318581 as String?)),
      ),
    ),
  );
}

typedef Query81Args = ({IMap<String, String?> i});
typedef Query81Response = ({IMap<String, String?> i});
