// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query73 = QueryOperation<Query73Args, Query73Response>(
  'tasks:query73',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query73Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on400098 in args.i.entries)
          on400098.key: encodeValue(encodeValue(on400098.value)),
      }),
    },
  );
}

Query73Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on944810) => (
      i: (on944810['i'] as IMap<String, dynamic>).map(
        (on32860, on677622) =>
            MapEntry(on32860, (on677622 as Uint8ListWithEquality)),
      ),
    ),
  );
}

typedef Query73Args = ({IMap<String, Uint8ListWithEquality> i});
typedef Query73Response = ({IMap<String, Uint8ListWithEquality> i});
