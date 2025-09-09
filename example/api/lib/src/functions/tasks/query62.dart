// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query62Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on755704) => encodeValue(on755704)).toIList(),
      ),
    },
  );
}

Query62Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on471265) => (
      i: (on471265['i'] as IList<dynamic>)
          .map((on522816) => (on522816 as Uint8ListWithEquality?))
          .toIList(),
    ),
  );
}

typedef Query62Args = ({IList<Uint8ListWithEquality?> i});
typedef Query62Response = ({IList<Uint8ListWithEquality?> i});
