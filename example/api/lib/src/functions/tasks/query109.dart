// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query109Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on590084) => encodeValue(on590084),
          (on486673) => encodeValue(on486673),
        ),
      ),
    },
  );
}

Query109Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on416912) => (i: Union2<double, $42Literal>(on416912['i'])),
  );
}

typedef Query109Args = ({Union2<double, $42Literal> i});
typedef Query109Response = ({Union2<double, $42Literal> i});
