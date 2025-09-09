// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query93Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on55199) => encodeValue(on55199),
          (on491492) => encodeValue(on491492),
        ),
      ),
    },
  );
}

Query93Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on756970) => (i: Union2<bool, double>(on756970['i'])),
  );
}

typedef Query93Args = ({Union2<bool, double> i});
typedef Query93Response = ({Union2<bool, double> i});
