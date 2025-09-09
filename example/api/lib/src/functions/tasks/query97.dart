// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query97Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i?.split(
          (on998583) => encodeValue(on998583),
          (on828933) => encodeValue(on828933),
        ),
      ),
    },
  );
}

Query97Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on209294) => (i: Union2<double, bool>(on209294['i'])),
  );
}

typedef Query97Args = ({Union2<double, bool>? i});
typedef Query97Response = ({Union2<double, bool>? i});
