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
            (on222886) => encodeValue({
              'content': encodeValue(on222886.content),
              'type': encodeValue(on222886.type),
            }),
            (on804662) => encodeValue({
              'content': encodeValue(on804662.content),
              'type': encodeValue(on804662.type),
            }),
            (on190252) => encodeValue({
              'content': encodeValue(on190252.content),
              'type': encodeValue(on190252.type),
            }),
          ),
        ),
      }),
    },
  );
}

Query119Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on358148) => (
      i: (on358148['i'] as IMap<String, dynamic>).then(
        (on849135) => (
          data:
              Union3<
                ({String content, $TextLiteral type}),
                ({double content, $NumberLiteral type}),
                ({bool content, $BooleanLiteral type})
              >(() {
                try {
                  return (on849135['data'] as IMap<String, dynamic>).then(
                    (on967705) => (
                      content: (on967705['content'] as String),
                      type: $TextLiteral.validate(on967705['type']),
                    ),
                  );
                } catch (e) {}

                try {
                  return (on849135['data'] as IMap<String, dynamic>).then(
                    (on574020) => (
                      content: (on574020['content'] as double),
                      type: $NumberLiteral.validate(on574020['type']),
                    ),
                  );
                } catch (e) {}

                try {
                  return (on849135['data'] as IMap<String, dynamic>).then(
                    (on32128) => (
                      content: (on32128['content'] as bool),
                      type: $BooleanLiteral.validate(on32128['type']),
                    ),
                  );
                } catch (e) {}

                throw Exception(
                  (on849135['data'].toString() ?? "null") +
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
