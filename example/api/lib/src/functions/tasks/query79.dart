// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query79Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on495544 in args.i.entries)
          on495544.key: encodeValue(encodeValue(on495544.value)),
      }),
    },
  );
}

Query79Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on359688) => (
      i: (on359688['i'] as IMap<String, dynamic>).map(
        (on152714, on563689) =>
            MapEntry(on152714, $TrueLiteral.validate(on563689)),
      ),
    ),
  );
}

typedef Query79Args = ({IMap<String, $TrueLiteral> i});
typedef Query79Response = ({IMap<String, $TrueLiteral> i});
