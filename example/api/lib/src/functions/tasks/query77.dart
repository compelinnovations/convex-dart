// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query77Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on27136 in args.i.entries)
          on27136.key: encodeValue(encodeValue(on27136.value)),
      }),
    },
  );
}

Query77Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on760202) => (
      i: (on760202['i'] as IMap<String, dynamic>).map(
        (on931926, on128399) =>
            MapEntry(on931926, $HiLiteral.validate(on128399)),
      ),
    ),
  );
}

typedef Query77Args = ({IMap<String, $HiLiteral> i});
typedef Query77Response = ({IMap<String, $HiLiteral> i});
