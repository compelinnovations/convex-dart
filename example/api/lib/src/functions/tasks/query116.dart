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
              (on942094) => encodeValue(on942094),
              (on357751) => encodeValue(on357751),
              (on883) => encodeValue(on883),
            ),
          ),
          'value': encodeValue(args.i.data.value),
        }),
        'metadata': encodeValue({
          for (final on998635 in args.i.metadata.entries)
            on998635.key: encodeValue(encodeValue(on998635.value)),
        }),
      }),
    },
  );
}

Query116Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on978892) => (
      i: (on978892['i'] as IMap<String, dynamic>).then(
        (on834603) => (
          data: (on834603['data'] as IMap<String, dynamic>).then(
            (on194053) => (
              type: Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>(() {
                final map = {
                  'text': $TextLiteral(),
                  'number': $NumberLiteral(),
                  'boolean': $BooleanLiteral(),
                };
                if (map.containsKey(on194053['type'])) {
                  return map[on194053['type']];
                }
                throw Exception(
                  (on194053['type'].toString() ?? "null") +
                      r" cannot be deserialized into a Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>",
                );
              }()),
              value: on194053['value'],
            ),
          ),
          metadata: (on834603['metadata'] as IMap<String, dynamic>).map(
            (on531827, on409634) => MapEntry(on531827, on409634),
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
