// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query40Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on883815) => encodeValue(on883815)).toIList(),
      ),
    },
  );
}

Query40Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on31032) => (
      i: (on31032['i'] as IList<dynamic>)
          .map((on983034) => TasksId(on983034 as String))
          .toIList(),
    ),
  );
}

typedef Query40Args = ({IList<TasksId> i});
typedef Query40Response = ({IList<TasksId> i});
