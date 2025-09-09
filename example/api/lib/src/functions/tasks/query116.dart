// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query116 = QueryOperation<Query116Args, Query116Response>(
  'tasks:query116',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query116Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'data': encodeValue({
          'type': encodeValue(
            args.i.data.type.split(
              (on177488) => encodeValue(on177488),
              (on160859) => encodeValue(on160859),
              (on6960) => encodeValue(on6960),
            ),
          ),
          'value': encodeValue(args.i.data.value),
        }),
        'metadata': encodeValue({
          for (final on957183 in args.i.metadata.entries)
            on957183.key: encodeValue(encodeValue(on957183.value)),
        }),
      }),
    },
  );
}

Query116Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on945935) => (
      i: (on945935['i'] as IMap<String, dynamic>).then(
        (on562485) => (
          data: (on562485['data'] as IMap<String, dynamic>).then(
            (on248007) => (
              type: Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>(() {
                final map = {
                  'text': $TextLiteral(),
                  'number': $NumberLiteral(),
                  'boolean': $BooleanLiteral(),
                };
                if (map.containsKey(on248007['type'])) {
                  return map[on248007['type']];
                }
                throw Exception(
                  (on248007['type'].toString() ?? "null") +
                      r" cannot be deserialized into a Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>",
                );
              }()),
              value: on248007['value'],
            ),
          ),
          metadata: (on562485['metadata'] as IMap<String, dynamic>).map(
            (on561554, on451060) => MapEntry(on561554, on451060),
          ),
        ),
      ),
    ),
  );
}

typedef Query116Args = ({
  ({
    ({
      Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral> type,
      dynamic value,
    })
    data,
    IMap<String, dynamic> metadata,
  })
  i,
});
typedef Query116Response = ({
  ({
    ({
      Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral> type,
      dynamic value,
    })
    data,
    IMap<String, dynamic> metadata,
  })
  i,
});
