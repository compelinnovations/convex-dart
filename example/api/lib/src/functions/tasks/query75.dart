// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query75 = QueryOperation<Query75Args, Query75Response>(
  'tasks:query75',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query75Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on570131 in args.i.entries)
          on570131.key: encodeValue(encodeValue(on570131.value)),
      }),
    },
  );
}

Query75Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on239648) => (
      i: (on239648['i'] as IMap<String, dynamic>).map(
        (on951900, on811183) => MapEntry(on951900, on811183),
      ),
    ),
  );
}

typedef Query75Args = ({IMap<String, dynamic> i});
typedef Query75Response = ({IMap<String, dynamic> i});
