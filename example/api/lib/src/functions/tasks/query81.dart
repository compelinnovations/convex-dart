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
        for (final on664908 in args.i.entries)
          on664908.key: encodeValue(encodeValue(on664908.value)),
      }),
    },
  );
}

Query81Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on432777) => (
      i: (on432777['i'] as IMap<String, dynamic>).map(
        (on925551, on219482) => MapEntry(on925551, (on219482 as String?)),
      ),
    ),
  );
}

typedef Query81Args = ({IMap<String, String?> i});
typedef Query81Response = ({IMap<String, String?> i});
