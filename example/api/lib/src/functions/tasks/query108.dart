// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query108Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on144923) => encodeValue(on144923),
          (on351761) => encodeValue(on351761),
        ),
      ),
    },
  );
}

Query108Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on365184) => (i: Union2<String, $SpecialLiteral>(on365184['i'])),
  );
}

typedef Query108Args = ({Union2<String, $SpecialLiteral> i});
typedef Query108Response = ({Union2<String, $SpecialLiteral> i});
