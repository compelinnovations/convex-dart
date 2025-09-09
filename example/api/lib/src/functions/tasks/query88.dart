// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query88Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on761828 in args.i.entries)
          on761828.key: encodeValue(encodeValue(on761828.value)),
      }),
    },
  );
}

Query88Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on962816) => (
      i: (on962816['i'] as IMap<String, dynamic>).map(
        (on195928, on750298) => MapEntry(
          on195928,
          on750298 == null ? null : $HiLiteral.validate(on750298),
        ),
      ),
    ),
  );
}

typedef Query88Args = ({IMap<String, $HiLiteral?> i});
typedef Query88Response = ({IMap<String, $HiLiteral?> i});
