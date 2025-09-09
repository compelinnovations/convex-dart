// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query102Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on189277) => encodeValue(on189277),
          (on447254) => encodeValue(on447254),
          (on626902) => encodeValue(on626902),
        ),
      ),
    },
  );
}

Query102Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on762593) =>
        (i: Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>(on762593['i'])),
  );
}

typedef Query102Args = ({Union3<$AdminLiteral, $UserLiteral, $GuestLiteral> i});
typedef Query102Response = ({
  Union3<$AdminLiteral, $UserLiteral, $GuestLiteral> i,
});
