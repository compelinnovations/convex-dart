// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query85Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on770973 in args.i.entries)
          on770973.key: encodeValue(encodeValue(on770973.value)),
      }),
    },
  );
}

Query85Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on358329) => (
      i: (on358329['i'] as IMap<String, dynamic>).map(
        (on259495, on424062) =>
            MapEntry(on259495, (on424062 as Uint8ListWithEquality?)),
      ),
    ),
  );
}

typedef Query85Args = ({IMap<String, Uint8ListWithEquality?> i});
typedef Query85Response = ({IMap<String, Uint8ListWithEquality?> i});
