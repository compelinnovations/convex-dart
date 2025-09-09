// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query69Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on251483 in args.i.entries)
          on251483.key: encodeValue(encodeValue(on251483.value)),
      }),
    },
  );
}

Query69Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on7397) => (
      i: (on7397['i'] as IMap<String, dynamic>).map(
        (on43131, on472235) => MapEntry(on43131, (on472235 as String)),
      ),
    ),
  );
}

typedef Query69Args = ({IMap<String, String> i});
typedef Query69Response = ({IMap<String, String> i});
