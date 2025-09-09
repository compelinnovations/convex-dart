// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query83 = QueryOperation<Query83Args, Query83Response>(
  'tasks:query83',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query83Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on624560 in args.i.entries)
          on624560.key: encodeValue(encodeValue(on624560.value)),
      }),
    },
  );
}

Query83Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on7816) => (
      i: (on7816['i'] as IMap<String, dynamic>).map(
        (on780389, on353246) => MapEntry(on780389, (on353246 as bool?)),
      ),
    ),
  );
}

typedef Query83Args = ({IMap<String, bool?> i});
typedef Query83Response = ({IMap<String, bool?> i});
