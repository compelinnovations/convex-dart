// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query89Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on993240 in args.i.entries)
          on993240.key: encodeValue(encodeValue(on993240.value)),
      }),
    },
  );
}

Query89Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on679894) => (
      i: (on679894['i'] as IMap<String, dynamic>).map(
        (on602807, on500102) => MapEntry(
          on602807,
          on500102 == null ? null : $1Literal.validate(on500102),
        ),
      ),
    ),
  );
}

typedef Query89Args = ({IMap<String, $1Literal?> i});
typedef Query89Response = ({IMap<String, $1Literal?> i});
