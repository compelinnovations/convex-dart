// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query119 = QueryOperation<Query119Args, Query119Response>(
  'tasks:query119',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query119Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'data': encodeValue(
          args.i.data.split(
            (on628860) => encodeValue({
              'content': encodeValue(on628860.content),
              'type': encodeValue(on628860.type),
            }),
            (on448062) => encodeValue({
              'content': encodeValue(on448062.content),
              'type': encodeValue(on448062.type),
            }),
            (on606499) => encodeValue({
              'content': encodeValue(on606499.content),
              'type': encodeValue(on606499.type),
            }),
          ),
        ),
      }),
    },
  );
}

Query119Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on448660) => (
      i: (on448660['i'] as IMap<String, dynamic>).then(
        (on340689) => (
          data:
              Union3<
                ({String content, $TextLiteral type}),
                ({double content, $NumberLiteral type}),
                ({bool content, $BooleanLiteral type})
              >(() {
                try {
                  return (on340689['data'] as IMap<String, dynamic>).then(
                    (on118990) => (
                      content: (on118990['content'] as String),
                      type: $TextLiteral.validate(on118990['type']),
                    ),
                  );
                } catch (e) {}

                try {
                  return (on340689['data'] as IMap<String, dynamic>).then(
                    (on401310) => (
                      content: (on401310['content'] as double),
                      type: $NumberLiteral.validate(on401310['type']),
                    ),
                  );
                } catch (e) {}

                try {
                  return (on340689['data'] as IMap<String, dynamic>).then(
                    (on390901) => (
                      content: (on390901['content'] as bool),
                      type: $BooleanLiteral.validate(on390901['type']),
                    ),
                  );
                } catch (e) {}

                throw Exception(
                  (on340689['data'].toString() ?? "null") +
                      r" cannot be deserialized into a Union3<({String content,$TextLiteral type}), ({double content,$NumberLiteral type}), ({bool content,$BooleanLiteral type})>",
                );
              }()),
        ),
      ),
    ),
  );
}

typedef Query119Args = ({
  ({
    Union3<
      ({String content, $TextLiteral type}),
      ({double content, $NumberLiteral type}),
      ({bool content, $BooleanLiteral type})
    >
    data,
  })
  i,
});
typedef Query119Response = ({
  ({
    Union3<
      ({String content, $TextLiteral type}),
      ({double content, $NumberLiteral type}),
      ({bool content, $BooleanLiteral type})
    >
    data,
  })
  i,
});
