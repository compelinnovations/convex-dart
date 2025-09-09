// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query84 = QueryOperation<Query84Args, Query84Response>(
  'tasks:query84',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query84Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on383018 in args.i.entries)
          on383018.key: encodeValue(encodeValue(on383018.value)),
      }),
    },
  );
}

Query84Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on747041) => (
      i: (on747041['i'] as IMap<String, dynamic>).map(
        (on9694, on99279) => MapEntry(on9694, (on99279 as int?)),
      ),
    ),
  );
}

typedef Query84Args = ({IMap<String, int?> i});
typedef Query84Response = ({IMap<String, int?> i});
