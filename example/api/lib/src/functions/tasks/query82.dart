// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query82Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on242957 in args.i.entries)
          on242957.key: encodeValue(encodeValue(on242957.value)),
      }),
    },
  );
}

Query82Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on226776) => (
      i: (on226776['i'] as IMap<String, dynamic>).map(
        (on15045, on965222) => MapEntry(on15045, (on965222 as double?)),
      ),
    ),
  );
}

typedef Query82Args = ({IMap<String, double?> i});
typedef Query82Response = ({IMap<String, double?> i});
