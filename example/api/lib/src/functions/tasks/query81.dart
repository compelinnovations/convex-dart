// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query81Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on234773 in args.i.entries)
          on234773.key: encodeValue(encodeValue(on234773.value)),
      }),
    },
  );
}

Query81Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on257406) => (
      i: (on257406['i'] as IMap<String, dynamic>).map(
        (on957280, on479872) => MapEntry(on957280, (on479872 as String?)),
      ),
    ),
  );
}

typedef Query81Args = ({IMap<String, String?> i});
typedef Query81Response = ({IMap<String, String?> i});
