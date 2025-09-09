// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query37Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on998452) => encodeValue(on998452)).toIList(),
      ),
    },
  );
}

Query37Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on187308) => (
      i: (on187308['i'] as IList<dynamic>)
          .map((on594089) => (on594089 as bool))
          .toIList(),
    ),
  );
}

typedef Query37Args = ({IList<bool> i});
typedef Query37Response = ({IList<bool> i});
