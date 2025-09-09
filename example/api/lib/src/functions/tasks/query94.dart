// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query94Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on325483) => encodeValue(on325483),
          (on383946) => encodeValue(on383946),
        ),
      ),
    },
  );
}

Query94Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on423038) => (i: Union2<String, bool>(on423038['i'])),
  );
}

typedef Query94Args = ({Union2<String, bool> i});
typedef Query94Response = ({Union2<String, bool> i});
