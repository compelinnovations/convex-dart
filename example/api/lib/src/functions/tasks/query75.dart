// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query75Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on465044 in args.i.entries)
          on465044.key: encodeValue(encodeValue(on465044.value)),
      }),
    },
  );
}

Query75Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on270671) => (
      i: (on270671['i'] as IMap<String, dynamic>).map(
        (on969552, on574130) => MapEntry(on969552, on574130),
      ),
    ),
  );
}

typedef Query75Args = ({IMap<String, dynamic> i});
typedef Query75Response = ({IMap<String, dynamic> i});
