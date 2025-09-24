// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query122Args {
  final IMap<
    String,
    ({
      bool required,
      Union3<
        ({Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral> primitive}),
        ({IMap<String, String> fields}),
        ({String elementType})
      >
      schema,
      Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral> type,
    })
  >
  i;

  const Query122Args({required this.i});

  factory Query122Args.fromJson(Map<String, dynamic> json) {
    return Query122Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query122Args copyWith({
    IMap<
      String,
      ({
        bool required,
        Union3<
          ({Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral> primitive}),
          ({IMap<String, String> fields}),
          ({String elementType})
        >
        schema,
        Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral> type,
      })
    >?
    i,
  }) {
    return Query122Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query122Args && other.i == i;
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

final query122 = QueryOperation<Query122Args, Query122Response>(
  'tasks:query122',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query122Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on683647 in args.i.entries)
          on683647.key: encodeValue(
            encodeValue({
              'required': encodeValue(on683647.value.required),
              'schema': encodeValue(
                on683647.value.schema.split(
                  (on94265) => encodeValue({
                    'primitive': encodeValue(
                      on94265.primitive.split(
                        (on994878) => encodeValue(on994878),
                        (on488761) => encodeValue(on488761),
                        (on779903) => encodeValue(on779903),
                      ),
                    ),
                  }),
                  (on721804) => encodeValue({
                    'fields': encodeValue({
                      for (final on199821 in on721804.fields.entries)
                        on199821.key: encodeValue(encodeValue(on199821.value)),
                    }),
                  }),
                  (on318148) => encodeValue({
                    'elementType': encodeValue(on318148.elementType),
                  }),
                ),
              ),
              'type': encodeValue(
                on683647.value.type.split(
                  (on439659) => encodeValue(on439659),
                  (on891302) => encodeValue(on891302),
                  (on485490) => encodeValue(on485490),
                ),
              ),
            }),
          ),
      }),
    },
  );
}

Query122Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on788073) => (
      i: (on788073['i'] as IMap<String, dynamic>).map(
        (on359651, on217730) => MapEntry(
          on359651,
          (on217730 as IMap<String, dynamic>).then(
            (on766361) => (
              required: (on766361['required'] as bool),
              schema:
                  Union3<
                    ({
                      Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral>
                      primitive,
                    }),
                    ({IMap<String, String> fields}),
                    ({String elementType})
                  >(() {
                    try {
                      return (on766361['schema'] as IMap<String, dynamic>).then(
                        (on679813) => (
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >(() {
                                final map = {
                                  'string': $StringLiteral(),
                                  'number': $NumberLiteral(),
                                  'boolean': $BooleanLiteral(),
                                };
                                if (map.containsKey(on679813['primitive'])) {
                                  return map[on679813['primitive']];
                                }
                                throw Exception(
                                  (on679813['primitive'].toString() ?? "null") +
                                      r" cannot be deserialized into a Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral>",
                                );
                              }()),
                        ),
                      );
                    } catch (e) {}

                    try {
                      return (on766361['schema'] as IMap<String, dynamic>).then(
                        (on498997) => (
                          fields: (on498997['fields'] as IMap<String, dynamic>)
                              .map(
                                (on432722, on344376) =>
                                    MapEntry(on432722, (on344376 as String)),
                              ),
                        ),
                      );
                    } catch (e) {}

                    try {
                      return (on766361['schema'] as IMap<String, dynamic>).then(
                        (on707540) =>
                            (elementType: (on707540['elementType'] as String)),
                      );
                    } catch (e) {}

                    throw Exception(
                      (on766361['schema'].toString() ?? "null") +
                          r" cannot be deserialized into a Union3<({Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral> primitive}), ({IMap<String, String> fields}), ({String elementType})>",
                    );
                  }()),
              type: Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral>(() {
                final map = {
                  'primitive': $PrimitiveLiteral(),
                  'object': $ObjectLiteral(),
                  'array': $ArrayLiteral(),
                };
                if (map.containsKey(on766361['type'])) {
                  return map[on766361['type']];
                }
                throw Exception(
                  (on766361['type'].toString() ?? "null") +
                      r" cannot be deserialized into a Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral>",
                );
              }()),
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query122Response = ({
  IMap<
    String,
    ({
      bool required,
      Union3<
        ({Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral> primitive}),
        ({IMap<String, String> fields}),
        ({String elementType})
      >
      schema,
      Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral> type,
    })
  >
  i,
});
