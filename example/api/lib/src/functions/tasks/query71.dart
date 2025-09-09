// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query71Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on861400 in args.i.entries)
          on861400.key: encodeValue(encodeValue(on861400.value)),
      }),
    },
  );
}

Query71Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on33540) => (
      i: (on33540['i'] as IMap<String, dynamic>).map(
        (on835652, on749313) => MapEntry(on835652, (on749313 as bool)),
      ),
    ),
  );
}

typedef Query71Args = ({IMap<String, bool> i});
typedef Query71Response = ({IMap<String, bool> i});
