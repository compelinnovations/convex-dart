// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query35Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on134187) => encodeValue(on134187)).toIList(),
      ),
    },
  );
}

Query35Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on652607) => (
      i: (on652607['i'] as IList<dynamic>)
          .map((on40837) => (on40837 as String))
          .toIList(),
    ),
  );
}

typedef Query35Args = ({IList<String> i});
typedef Query35Response = ({IList<String> i});
