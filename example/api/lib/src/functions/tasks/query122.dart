// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query122Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on136243 in args.i.entries)
          on136243.key: encodeValue(
            encodeValue({
              'required': encodeValue(on136243.value.required),
              'schema': encodeValue(
                on136243.value.schema.split(
                  (on961176) => encodeValue({
                    'primitive': encodeValue(
                      on961176.primitive.split(
                        (on44754) => encodeValue(on44754),
                        (on363658) => encodeValue(on363658),
                        (on479811) => encodeValue(on479811),
                      ),
                    ),
                  }),
                  (on679545) => encodeValue({
                    'fields': encodeValue({
                      for (final on216726 in on679545.fields.entries)
                        on216726.key: encodeValue(encodeValue(on216726.value)),
                    }),
                  }),
                  (on308468) => encodeValue({
                    'elementType': encodeValue(on308468.elementType),
                  }),
                ),
              ),
              'type': encodeValue(
                on136243.value.type.split(
                  (on337144) => encodeValue(on337144),
                  (on471836) => encodeValue(on471836),
                  (on757103) => encodeValue(on757103),
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
    (on215904) => (
      i: (on215904['i'] as IMap<String, dynamic>).map(
        (on176679, on375638) => MapEntry(
          on176679,
          (on375638 as IMap<String, dynamic>).then(
            (on162751) => (
              required: (on162751['required'] as bool),
              schema:
                  Union3<
                    ({
                      Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral>
                      primitive,
                    }),
                    ({IMap<String, String> fields}),
                    ({String elementType})
                  >(on162751['schema']),
              type: Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral>(
                on162751['type'],
              ),
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
