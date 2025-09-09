// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query76Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on132673 in args.i.entries) on132673.key: encodeValue(null),
      }),
    },
  );
}

Query76Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on41300) => (
      i: (on41300['i'] as IMap<String, dynamic>).map(
        (on747405, on472507) => MapEntry(on747405, null),
      ),
    ),
  );
}

typedef Query76Args = ({IMap<String, void> i});
typedef Query76Response = ({IMap<String, void> i});
