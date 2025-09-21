// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query44 = QueryOperation<Query44Args, Query44Response>(
  'tasks:query44',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query44Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(args.i.map((on6213) => encodeValue(on6213)).toIList()),
    },
  );
}

Query44Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on106071) => (
      i: (on106071['i'] as IList<dynamic>)
          .map((on751138) => $1Literal.validate(on751138))
          .toIList(),
    ),
  );
}

typedef Query44Args = ({IList<$1Literal> i});
typedef Query44Response = ({IList<$1Literal> i});
