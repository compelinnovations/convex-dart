// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query120Args {
  final ({
    IList<
      ({
        String id,
        IMap<String, dynamic> metadata,
        String name,
        double? price,
        Optional<double> quantity,
      })
    >
    items,
    double total,
  })
  i;

  const Query120Args({required this.i});

  factory Query120Args.fromJson(Map<String, dynamic> json) {
    return Query120Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query120Args copyWith({
    ({
      IList<
        ({
          String id,
          IMap<String, dynamic> metadata,
          String name,
          double? price,
          Optional<double> quantity,
        })
      >
      items,
      double total,
    })?
    i,
  }) {
    return Query120Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query120Args && other.i == i;
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

final query120 = QueryOperation<Query120Args, Query120Response>(
  'tasks:query120',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query120Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'items': encodeValue(
          args.i.items
              .map(
                (on487570) => encodeValue({
                  'id': encodeValue(on487570.id),
                  'metadata': encodeValue({
                    for (final on853105 in on487570.metadata.entries)
                      on853105.key: encodeValue(encodeValue(on853105.value)),
                  }),
                  'name': encodeValue(on487570.name),
                  'price': encodeValue(on487570.price),
                  if (on487570.quantity.isDefined)
                    'quantity': encodeValue(
                      on487570.quantity.asDefined().value,
                    ),
                }),
              )
              .toIList(),
        ),
        'total': encodeValue(args.i.total),
      }),
    },
  );
}

Query120Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on12732) => (
      i: (on12732['i'] as IMap<String, dynamic>).then(
        (on797846) => (
          items: (on797846['items'] as IList<dynamic>)
              .map(
                (on706946) => (on706946 as IMap<String, dynamic>).then(
                  (on98440) => (
                    id: (on98440['id'] as String),
                    metadata: (on98440['metadata'] as IMap<String, dynamic>)
                        .map(
                          (on920972, on974828) => MapEntry(on920972, on974828),
                        ),
                    name: (on98440['name'] as String),
                    price: (on98440['price'] as double?),
                    quantity: on98440.containsKey('quantity')
                        ? Defined((on98440['quantity'] as double))
                        : Undefined<double>(),
                  ),
                ),
              )
              .toIList(),
          total: (on797846['total'] as double),
        ),
      ),
    ),
  );
}

typedef Query120Response = ({
  ({
    IList<
      ({
        String id,
        IMap<String, dynamic> metadata,
        String name,
        double? price,
        Optional<double> quantity,
      })
    >
    items,
    double total,
  })
  i,
});
