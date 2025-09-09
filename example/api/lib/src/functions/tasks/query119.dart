// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query119Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'data': encodeValue(
          args.i.data.split(
            (on249314) => encodeValue({
              'content': encodeValue(on249314.content),
              'type': encodeValue(on249314.type),
            }),
            (on138813) => encodeValue({
              'content': encodeValue(on138813.content),
              'type': encodeValue(on138813.type),
            }),
            (on3789) => encodeValue({
              'content': encodeValue(on3789.content),
              'type': encodeValue(on3789.type),
            }),
          ),
        ),
      }),
    },
  );
}

Query119Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on101157) => (
      i: (on101157['i'] as IMap<String, dynamic>).then(
        (on150964) => (
          data:
              Union3<
                ({String content, $TextLiteral type}),
                ({double content, $NumberLiteral type}),
                ({bool content, $BooleanLiteral type})
              >(on150964['data']),
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
