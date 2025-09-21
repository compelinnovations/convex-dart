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
        for (final on217581 in args.i.entries)
          on217581.key: encodeValue(encodeValue(on217581.value)),
      }),
    },
  );
}

Query73Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on947380) => (
      i: (on947380['i'] as IMap<String, dynamic>).map(
        (on166670, on611223) =>
            MapEntry(on166670, (on611223 as Uint8ListWithEquality)),
      ),
    ),
  );
}

typedef Query73Args = ({IMap<String, Uint8ListWithEquality> i});
typedef Query73Response = ({IMap<String, Uint8ListWithEquality> i});
