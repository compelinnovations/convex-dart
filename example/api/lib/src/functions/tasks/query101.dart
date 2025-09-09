// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query101 = QueryOperation<Query101Args, Query101Response>(
  'tasks:query101',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query101Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on686935) => encodeValue(on686935),
          (on69641) => encodeValue(on69641),
          (on822259) => encodeValue(on822259),
        ),
      ),
    },
  );
}

Query101Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on984382) => (
      i: Union3<$1Literal, $2Literal, $3Literal>(() {
        final map = {1.0: $1Literal(), 2.0: $2Literal(), 3.0: $3Literal()};
        if (map.containsKey(on984382['i'])) {
          return map[on984382['i']];
        }
        throw Exception(
          (on984382['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union3<$1Literal, $2Literal, $3Literal>",
        );
      }()),
    ),
  );
}

typedef Query101Args = ({Union3<$1Literal, $2Literal, $3Literal> i});
typedef Query101Response = ({Union3<$1Literal, $2Literal, $3Literal> i});
