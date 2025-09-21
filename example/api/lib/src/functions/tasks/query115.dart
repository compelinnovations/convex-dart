// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query115 = QueryOperation<Query115Args, Query115Response>(
  'tasks:query115',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query115Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'categories': encodeValue(
          args.i.categories
              .map(
                (on817225) => encodeValue(
                  on817225.split(
                    (on540137) => encodeValue(on540137),
                    (on242494) => encodeValue(on242494),
                    (on795961) => encodeValue(on795961),
                  ),
                ),
              )
              .toIList(),
        ),
        'tags': encodeValue(
          args.i.tags.map((on110672) => encodeValue(on110672)).toIList(),
        ),
      }),
    },
  );
}

Query115Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on715751) => (
      i: (on715751['i'] as IMap<String, dynamic>).then(
        (on46794) => (
          categories: (on46794['categories'] as IList<dynamic>)
              .map(
                (
                  on752260,
                ) => Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>(() {
                  final map = {
                    'work': $WorkLiteral(),
                    'personal': $PersonalLiteral(),
                    'urgent': $UrgentLiteral(),
                  };
                  if (map.containsKey(on752260)) {
                    return map[on752260];
                  }
                  throw Exception(
                    (on752260.toString() ?? "null") +
                        r" cannot be deserialized into a Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>",
                  );
                }()),
              )
              .toIList(),
          tags: (on46794['tags'] as IList<dynamic>)
              .map((on841272) => (on841272 as String))
              .toIList(),
        ),
      ),
    ),
  );
}

typedef Query115Args = ({
  ({
    IList<Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>> categories,
    IList<String> tags,
  })
  i,
});
typedef Query115Response = ({
  ({
    IList<Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>> categories,
    IList<String> tags,
  })
  i,
});
