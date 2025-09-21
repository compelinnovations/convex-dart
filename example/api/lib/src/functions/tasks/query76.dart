// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query76 = QueryOperation<Query76Args, Query76Response>(
  'tasks:query76',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query76Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on204060 in args.i.entries) on204060.key: encodeValue(null),
      }),
    },
  );
}

Query76Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on676857) => (
      i: (on676857['i'] as IMap<String, dynamic>).map(
        (on711914, on679841) => MapEntry(on711914, null),
      ),
    ),
  );
}

typedef Query76Args = ({IMap<String, void> i});
typedef Query76Response = ({IMap<String, void> i});
