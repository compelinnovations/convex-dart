// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query106 = QueryOperation<Query106Args, Query106Response>(
  'tasks:query106',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query106Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on585173) => encodeValue(on585173),
          (on436078) => encodeValue(on436078),
        ),
      ),
    },
  );
}

Query106Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on307193) => (
      i: Union2<$TrueLiteral, $FalseLiteral>(() {
        final map = {true: $TrueLiteral(), false: $FalseLiteral()};
        if (map.containsKey(on307193['i'])) {
          return map[on307193['i']];
        }
        throw Exception(
          (on307193['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<$TrueLiteral, $FalseLiteral>",
        );
      }()),
    ),
  );
}

typedef Query106Args = ({Union2<$TrueLiteral, $FalseLiteral> i});
typedef Query106Response = ({Union2<$TrueLiteral, $FalseLiteral> i});
