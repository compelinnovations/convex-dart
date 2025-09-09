// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query87Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on734108 in args.i.entries)
          on734108.key: encodeValue(encodeValue(on734108.value)),
      }),
    },
  );
}

Query87Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on897345) => (
      i: (on897345['i'] as IMap<String, dynamic>).map(
        (on423211, on84411) => MapEntry(on423211, on84411),
      ),
    ),
  );
}

typedef Query87Args = ({IMap<String, dynamic?> i});
typedef Query87Response = ({IMap<String, dynamic?> i});
