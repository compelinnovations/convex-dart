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
                (on801690) => encodeValue(
                  on801690.split(
                    (on568385) => encodeValue(on568385),
                    (on32142) => encodeValue(on32142),
                    (on671097) => encodeValue(on671097),
                  ),
                ),
              )
              .toIList(),
        ),
        'tags': encodeValue(
          args.i.tags.map((on845710) => encodeValue(on845710)).toIList(),
        ),
      }),
    },
  );
}

Query115Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on87642) => (
      i: (on87642['i'] as IMap<String, dynamic>).then(
        (on669531) => (
          categories: (on669531['categories'] as IList<dynamic>)
              .map(
                (
                  on837789,
                ) => Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>(() {
                  final map = {
                    'work': $WorkLiteral(),
                    'personal': $PersonalLiteral(),
                    'urgent': $UrgentLiteral(),
                  };
                  if (map.containsKey(on837789)) {
                    return map[on837789];
                  }
                  throw Exception(
                    (on837789.toString() ?? "null") +
                        r" cannot be deserialized into a Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>",
                  );
                }()),
              )
              .toIList(),
          tags: (on669531['tags'] as IList<dynamic>)
              .map((on320205) => (on320205 as String))
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
