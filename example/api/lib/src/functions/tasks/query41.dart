// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query41Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on400240) => encodeValue(on400240)).toIList(),
      ),
    },
  );
}

Query41Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on132151) => (
      i: (on132151['i'] as IList<dynamic>)
          .map((on304333) => on304333)
          .toIList(),
    ),
  );
}

typedef Query41Args = ({IList<dynamic> i});
typedef Query41Response = ({IList<dynamic> i});
