// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query104Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i?.split(
          (on345201) => encodeValue(on345201),
          (on487064) => encodeValue(on487064),
          (on965795) => encodeValue(on965795),
        ),
      ),
    },
  );
}

Query104Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on198135) => (i: Union3<String, double, bool>(on198135['i'])),
  );
}

typedef Query104Args = ({Union3<String, double, bool>? i});
typedef Query104Response = ({Union3<String, double, bool>? i});
