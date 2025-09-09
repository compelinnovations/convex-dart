// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query95Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on594815) => encodeValue(on594815),
          (on773130) => encodeValue(on773130),
          (on115381) => encodeValue(on115381),
        ),
      ),
    },
  );
}

Query95Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on781659) => (i: Union3<String, double, bool>(on781659['i'])),
  );
}

typedef Query95Args = ({Union3<String, double, bool> i});
typedef Query95Response = ({Union3<String, double, bool> i});
