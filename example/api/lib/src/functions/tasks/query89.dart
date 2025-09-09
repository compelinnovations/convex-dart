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
        for (final on457828 in args.i.entries)
          on457828.key: encodeValue(encodeValue(on457828.value)),
      }),
    },
  );
}

Query89Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on211830) => (
      i: (on211830['i'] as IMap<String, dynamic>).map(
        (on979272, on420671) => MapEntry(
          on979272,
          on420671 == null ? null : $1Literal.validate(on420671),
        ),
      ),
    ),
  );
}

typedef Query89Args = ({IMap<String, $1Literal?> i});
typedef Query89Response = ({IMap<String, $1Literal?> i});
