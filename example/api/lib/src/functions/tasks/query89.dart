// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query89 = QueryOperation<Query89Args, Query89Response>(
  'tasks:query89',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query89Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on343324 in args.i.entries)
          on343324.key: encodeValue(encodeValue(on343324.value)),
      }),
    },
  );
}

Query89Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on825772) => (
      i: (on825772['i'] as IMap<String, dynamic>).map(
        (on897087, on637750) => MapEntry(
          on897087,
          on637750 == null ? null : $1Literal.validate(on637750),
        ),
      ),
    ),
  );
}

typedef Query89Args = ({IMap<String, $1Literal?> i});
typedef Query89Response = ({IMap<String, $1Literal?> i});
