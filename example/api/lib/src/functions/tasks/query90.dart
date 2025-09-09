// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query90Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on618978 in args.i.entries)
          on618978.key: encodeValue(encodeValue(on618978.value)),
      }),
    },
  );
}

Query90Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on289763) => (
      i: (on289763['i'] as IMap<String, dynamic>).map(
        (on717439, on793966) => MapEntry(
          on717439,
          on793966 == null ? null : $TrueLiteral.validate(on793966),
        ),
      ),
    ),
  );
}

typedef Query90Args = ({IMap<String, $TrueLiteral?> i});
typedef Query90Response = ({IMap<String, $TrueLiteral?> i});
