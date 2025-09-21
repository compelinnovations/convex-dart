// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query122 = QueryOperation<Query122Args, Query122Response>(
  'tasks:query122',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query122Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on46043 in args.i.entries)
          on46043.key: encodeValue(
            encodeValue({
              'required': encodeValue(on46043.value.required),
              'schema': encodeValue(
                on46043.value.schema.split(
                  (on79238) => encodeValue({
                    'primitive': encodeValue(
                      on79238.primitive.split(
                        (on87920) => encodeValue(on87920),
                        (on854430) => encodeValue(on854430),
                        (on376709) => encodeValue(on376709),
                      ),
                    ),
                  }),
                  (on667758) => encodeValue({
                    'fields': encodeValue({
                      for (final on627376 in on667758.fields.entries)
                        on627376.key: encodeValue(encodeValue(on627376.value)),
                    }),
                  }),
                  (on940556) => encodeValue({
                    'elementType': encodeValue(on940556.elementType),
                  }),
                ),
              ),
              'type': encodeValue(
                on46043.value.type.split(
                  (on239886) => encodeValue(on239886),
                  (on479829) => encodeValue(on479829),
                  (on659191) => encodeValue(on659191),
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
    (on677891) => (
      i: (on677891['i'] as IMap<String, dynamic>).map(
        (on903375, on320611) => MapEntry(
          on903375,
          (on320611 as IMap<String, dynamic>).then(
            (on204900) => (
              required: (on204900['required'] as bool),
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
                      return (on204900['schema'] as IMap<String, dynamic>).then(
                        (on816265) => (
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
                                if (map.containsKey(on816265['primitive'])) {
                                  return map[on816265['primitive']];
                                }
                                throw Exception(
                                  (on816265['primitive'].toString() ?? "null") +
                                      r" cannot be deserialized into a Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral>",
                                );
                              }()),
                        ),
                      );
                    } catch (e) {}

                    try {
                      return (on204900['schema'] as IMap<String, dynamic>).then(
                        (on889262) => (
                          fields: (on889262['fields'] as IMap<String, dynamic>)
                              .map(
                                (on154369, on432011) =>
                                    MapEntry(on154369, (on432011 as String)),
                              ),
                        ),
                      );
                    } catch (e) {}

                    try {
                      return (on204900['schema'] as IMap<String, dynamic>).then(
                        (on983283) =>
                            (elementType: (on983283['elementType'] as String)),
                      );
                    } catch (e) {}

                    throw Exception(
                      (on204900['schema'].toString() ?? "null") +
                          r" cannot be deserialized into a Union3<({Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral> primitive}), ({IMap<String, String> fields}), ({String elementType})>",
                    );
                  }()),
              type: Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral>(() {
                final map = {
                  'primitive': $PrimitiveLiteral(),
                  'object': $ObjectLiteral(),
                  'array': $ArrayLiteral(),
                };
                if (map.containsKey(on204900['type'])) {
                  return map[on204900['type']];
                }
                throw Exception(
                  (on204900['type'].toString() ?? "null") +
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

typedef Query122Args = ({
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
