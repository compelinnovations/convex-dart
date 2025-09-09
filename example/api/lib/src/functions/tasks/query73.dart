// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query73Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on5655 in args.i.entries)
          on5655.key: encodeValue(encodeValue(on5655.value)),
      }),
    },
  );
}

Query73Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on943335) => (
      i: (on943335['i'] as IMap<String, dynamic>).map(
        (on492202, on536136) =>
            MapEntry(on492202, (on536136 as Uint8ListWithEquality)),
      ),
    ),
  );
}

typedef Query73Args = ({IMap<String, Uint8ListWithEquality> i});
typedef Query73Response = ({IMap<String, Uint8ListWithEquality> i});
