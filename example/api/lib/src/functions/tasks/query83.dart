// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query83Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on470619 in args.i.entries)
          on470619.key: encodeValue(encodeValue(on470619.value)),
      }),
    },
  );
}

Query83Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on408314) => (
      i: (on408314['i'] as IMap<String, dynamic>).map(
        (on575389, on180887) => MapEntry(on575389, (on180887 as bool?)),
      ),
    ),
  );
}

typedef Query83Args = ({IMap<String, bool?> i});
typedef Query83Response = ({IMap<String, bool?> i});
