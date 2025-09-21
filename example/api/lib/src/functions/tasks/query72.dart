// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query72 = QueryOperation<Query72Args, Query72Response>(
  'tasks:query72',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query72Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on59326 in args.i.entries)
          on59326.key: encodeValue(encodeValue(on59326.value)),
      }),
    },
  );
}

Query72Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on534646) => (
      i: (on534646['i'] as IMap<String, dynamic>).map(
        (on786746, on187576) => MapEntry(on786746, (on187576 as int)),
      ),
    ),
  );
}

typedef Query72Args = ({IMap<String, int> i});
typedef Query72Response = ({IMap<String, int> i});
