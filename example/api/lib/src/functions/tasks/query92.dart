// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query92Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on24225) => encodeValue(on24225),
          (on936877) => encodeValue(on936877),
        ),
      ),
    },
  );
}

Query92Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on521897) => (i: Union2<String, double>(on521897['i'])),
  );
}

typedef Query92Args = ({Union2<String, double> i});
typedef Query92Response = ({Union2<String, double> i});
