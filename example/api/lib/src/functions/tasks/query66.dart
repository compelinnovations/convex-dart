// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query66 = QueryOperation<Query66Args, Query66Response>(
  'tasks:query66',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query66Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on331780) => encodeValue(on331780)).toIList(),
      ),
    },
  );
}

Query66Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on25964) => (
      i: (on25964['i'] as IList<dynamic>)
          .map(
            (on668745) =>
                on668745 == null ? null : $1Literal.validate(on668745),
          )
          .toIList(),
    ),
  );
}

typedef Query66Args = ({IList<$1Literal?> i});
typedef Query66Response = ({IList<$1Literal?> i});
