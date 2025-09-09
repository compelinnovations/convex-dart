// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query38Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on440002) => encodeValue(on440002)).toIList(),
      ),
    },
  );
}

Query38Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on631597) => (
      i: (on631597['i'] as IList<dynamic>)
          .map((on729876) => (on729876 as int))
          .toIList(),
    ),
  );
}

typedef Query38Args = ({IList<int> i});
typedef Query38Response = ({IList<int> i});
