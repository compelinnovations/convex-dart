// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query78 = QueryOperation<Query78Args, Query78Response>(
  'tasks:query78',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query78Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on101977 in args.i.entries)
          on101977.key: encodeValue(encodeValue(on101977.value)),
      }),
    },
  );
}

Query78Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on826996) => (
      i: (on826996['i'] as IMap<String, dynamic>).map(
        (on969592, on212088) =>
            MapEntry(on969592, $1Literal.validate(on212088)),
      ),
    ),
  );
}

typedef Query78Args = ({IMap<String, $1Literal> i});
typedef Query78Response = ({IMap<String, $1Literal> i});
