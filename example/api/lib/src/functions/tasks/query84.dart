// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query84Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on742952 in args.i.entries)
          on742952.key: encodeValue(encodeValue(on742952.value)),
      }),
    },
  );
}

Query84Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on41547) => (
      i: (on41547['i'] as IMap<String, dynamic>).map(
        (on312236, on511208) => MapEntry(on312236, (on511208 as int?)),
      ),
    ),
  );
}

typedef Query84Args = ({IMap<String, int?> i});
typedef Query84Response = ({IMap<String, int?> i});
