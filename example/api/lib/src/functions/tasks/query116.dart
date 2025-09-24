// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query116Args {
  final ({
    ({
      Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral> type,
      dynamic value,
    })
    data,
    IMap<String, dynamic> metadata,
  })
  i;

  const Query116Args({required this.i});

  factory Query116Args.fromJson(Map<String, dynamic> json) {
    return Query116Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query116Args copyWith({
    ({
      ({
        Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral> type,
        dynamic value,
      })
      data,
      IMap<String, dynamic> metadata,
    })?
    i,
  }) {
    return Query116Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query116Args && other.i == i;
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
              (on708681) => encodeValue(on708681),
              (on979831) => encodeValue(on979831),
              (on569569) => encodeValue(on569569),
            ),
          ),
          'value': encodeValue(args.i.data.value),
        }),
        'metadata': encodeValue({
          for (final on635044 in args.i.metadata.entries)
            on635044.key: encodeValue(encodeValue(on635044.value)),
        }),
      }),
    },
  );
}

Query116Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on652012) => (
      i: (on652012['i'] as IMap<String, dynamic>).then(
        (on322292) => (
          data: (on322292['data'] as IMap<String, dynamic>).then(
            (on376376) => (
              type: Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>(() {
                final map = {
                  'text': $TextLiteral(),
                  'number': $NumberLiteral(),
                  'boolean': $BooleanLiteral(),
                };
                if (map.containsKey(on376376['type'])) {
                  return map[on376376['type']];
                }
                throw Exception(
                  (on376376['type'].toString() ?? "null") +
                      r" cannot be deserialized into a Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>",
                );
              }()),
              value: on376376['value'],
            ),
          ),
          metadata: (on322292['metadata'] as IMap<String, dynamic>).map(
            (on784601, on690254) => MapEntry(on784601, on690254),
          ),
        ),
      ),
    ),
  );
}

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
