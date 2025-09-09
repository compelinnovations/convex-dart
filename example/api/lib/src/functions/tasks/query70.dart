// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query70Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on333574 in args.i.entries)
          on333574.key: encodeValue(encodeValue(on333574.value)),
      }),
    },
  );
}

Query70Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on151672) => (
      i: (on151672['i'] as IMap<String, dynamic>).map(
        (on883943, on80797) => MapEntry(on883943, (on80797 as double)),
      ),
    ),
  );
}

typedef Query70Args = ({IMap<String, double> i});
typedef Query70Response = ({IMap<String, double> i});
