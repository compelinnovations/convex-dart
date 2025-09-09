// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query106Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on702609) => encodeValue(on702609),
          (on377437) => encodeValue(on377437),
        ),
      ),
    },
  );
}

Query106Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on251192) => (i: Union2<$TrueLiteral, $FalseLiteral>(on251192['i'])),
  );
}

typedef Query106Args = ({Union2<$TrueLiteral, $FalseLiteral> i});
typedef Query106Response = ({Union2<$TrueLiteral, $FalseLiteral> i});
