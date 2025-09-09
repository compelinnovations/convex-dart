// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query100 = QueryOperation<Query100Args, Query100Response>(
  'tasks:query100',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query100Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on879655) => encodeValue(on879655),
          (on828731) => encodeValue(on828731),
        ),
      ),
    },
  );
}

Query100Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on796800) => (
      i: Union2<$YesLiteral, $NoLiteral>(() {
        final map = {'yes': $YesLiteral(), 'no': $NoLiteral()};
        if (map.containsKey(on796800['i'])) {
          return map[on796800['i']];
        }
        throw Exception(
          (on796800['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<$YesLiteral, $NoLiteral>",
        );
      }()),
    ),
  );
}

typedef Query100Args = ({Union2<$YesLiteral, $NoLiteral> i});
typedef Query100Response = ({Union2<$YesLiteral, $NoLiteral> i});
