// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query107Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i?.split(
          (on119315) => encodeValue(on119315),
          (on756117) => encodeValue(on756117),
        ),
      ),
    },
  );
}

Query107Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on504523) => (i: Union2<Uint8ListWithEquality, int>(on504523['i'])),
  );
}

typedef Query107Args = ({Union2<Uint8ListWithEquality, int>? i});
typedef Query107Response = ({Union2<Uint8ListWithEquality, int>? i});
