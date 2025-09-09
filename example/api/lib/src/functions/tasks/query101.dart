// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query101Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on84164) => encodeValue(on84164),
          (on958185) => encodeValue(on958185),
          (on180225) => encodeValue(on180225),
        ),
      ),
    },
  );
}

Query101Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on354552) => (i: Union3<$1Literal, $2Literal, $3Literal>(on354552['i'])),
  );
}

typedef Query101Args = ({Union3<$1Literal, $2Literal, $3Literal> i});
typedef Query101Response = ({Union3<$1Literal, $2Literal, $3Literal> i});
