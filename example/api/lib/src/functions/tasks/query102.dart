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
          (on756566) => encodeValue(on756566),
          (on458293) => encodeValue(on458293),
          (on974575) => encodeValue(on974575),
        ),
      ),
    },
  );
}

Query102Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on863393) => (
      i: Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>(() {
        final map = {
          'admin': $AdminLiteral(),
          'user': $UserLiteral(),
          'guest': $GuestLiteral(),
        };
        if (map.containsKey(on863393['i'])) {
          return map[on863393['i']];
        }
        throw Exception(
          (on863393['i'].toString() ?? "null") +
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
