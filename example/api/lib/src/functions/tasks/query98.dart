// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query98Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on336317) => encodeValue(on336317),
          (on583705) => encodeValue(on583705),
        ),
      ),
    },
  );
}

Query98Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on683092) => (i: Union2<Uint8ListWithEquality, String>(on683092['i'])),
  );
}

typedef Query98Args = ({Union2<Uint8ListWithEquality, String> i});
typedef Query98Response = ({Union2<Uint8ListWithEquality, String> i});
