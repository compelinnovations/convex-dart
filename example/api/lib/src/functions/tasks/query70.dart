// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query70 = QueryOperation<Query70Args, Query70Response>(
  'tasks:query70',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query70Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on876459 in args.i.entries)
          on876459.key: encodeValue(encodeValue(on876459.value)),
      }),
    },
  );
}

Query70Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on278736) => (
      i: (on278736['i'] as IMap<String, dynamic>).map(
        (on353057, on336437) => MapEntry(on353057, (on336437 as double)),
      ),
    ),
  );
}

typedef Query70Args = ({IMap<String, double> i});
typedef Query70Response = ({IMap<String, double> i});
