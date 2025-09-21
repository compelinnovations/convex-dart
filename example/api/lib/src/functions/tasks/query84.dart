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
        for (final on732842 in args.i.entries)
          on732842.key: encodeValue(encodeValue(on732842.value)),
      }),
    },
  );
}

Query84Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on464346) => (
      i: (on464346['i'] as IMap<String, dynamic>).map(
        (on837632, on513938) => MapEntry(on837632, (on513938 as int?)),
      ),
    ),
  );
}

typedef Query84Args = ({IMap<String, int?> i});
typedef Query84Response = ({IMap<String, int?> i});
