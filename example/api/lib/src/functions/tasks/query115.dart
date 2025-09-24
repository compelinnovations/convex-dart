// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query115Args {
  final ({
    IList<Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>> categories,
    IList<String> tags,
  })
  i;

  const Query115Args({required this.i});

  factory Query115Args.fromJson(Map<String, dynamic> json) {
    return Query115Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query115Args copyWith({
    ({
      IList<Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>> categories,
      IList<String> tags,
    })?
    i,
  }) {
    return Query115Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query115Args && other.i == i;
  }

  @override
  int get hashCode {
    return i.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

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
                (on65130) => encodeValue(
                  on65130.split(
                    (on373484) => encodeValue(on373484),
                    (on157840) => encodeValue(on157840),
                    (on865078) => encodeValue(on865078),
                  ),
                ),
              )
              .toIList(),
        ),
        'tags': encodeValue(
          args.i.tags.map((on715650) => encodeValue(on715650)).toIList(),
        ),
      }),
    },
  );
}

Query115Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on973633) => (
      i: (on973633['i'] as IMap<String, dynamic>).then(
        (on680095) => (
          categories: (on680095['categories'] as IList<dynamic>)
              .map(
                (
                  on202290,
                ) => Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>(() {
                  final map = {
                    'work': $WorkLiteral(),
                    'personal': $PersonalLiteral(),
                    'urgent': $UrgentLiteral(),
                  };
                  if (map.containsKey(on202290)) {
                    return map[on202290];
                  }
                  throw Exception(
                    (on202290.toString() ?? "null") +
                        r" cannot be deserialized into a Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>",
                  );
                }()),
              )
              .toIList(),
          tags: (on680095['tags'] as IList<dynamic>)
              .map((on377484) => (on377484 as String))
              .toIList(),
        ),
      ),
    ),
  );
}

typedef Query115Response = ({
  ({
    IList<Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>> categories,
    IList<String> tags,
  })
  i,
});
