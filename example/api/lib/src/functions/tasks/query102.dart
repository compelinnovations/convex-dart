// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query102 = QueryOperation<Query102Args, Query102Response>(
  'tasks:query102',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query102Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on440912) => encodeValue(on440912),
          (on610185) => encodeValue(on610185),
          (on292558) => encodeValue(on292558),
        ),
      ),
    },
  );
}

Query102Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on103195) => (
      i: Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>(() {
        final map = {
          'admin': $AdminLiteral(),
          'user': $UserLiteral(),
          'guest': $GuestLiteral(),
        };
        if (map.containsKey(on103195['i'])) {
          return map[on103195['i']];
        }
        throw Exception(
          (on103195['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>",
        );
      }()),
    ),
  );
}

typedef Query102Args = ({Union3<$AdminLiteral, $UserLiteral, $GuestLiteral> i});
typedef Query102Response = ({
  Union3<$AdminLiteral, $UserLiteral, $GuestLiteral> i,
});
