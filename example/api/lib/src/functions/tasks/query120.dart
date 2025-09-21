// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

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
                (on352144) => encodeValue({
                  'id': encodeValue(on352144.id),
                  'metadata': encodeValue({
                    for (final on370032 in on352144.metadata.entries)
                      on370032.key: encodeValue(encodeValue(on370032.value)),
                  }),
                  'name': encodeValue(on352144.name),
                  'price': encodeValue(on352144.price),
                  if (on352144.quantity.isDefined)
                    'quantity': encodeValue(
                      on352144.quantity.asDefined().value,
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
    (on441172) => (
      i: (on441172['i'] as IMap<String, dynamic>).then(
        (on95245) => (
          items: (on95245['items'] as IList<dynamic>)
              .map(
                (on548026) => (on548026 as IMap<String, dynamic>).then(
                  (on203406) => (
                    id: (on203406['id'] as String),
                    metadata: (on203406['metadata'] as IMap<String, dynamic>)
                        .map(
                          (on214897, on264105) => MapEntry(on214897, on264105),
                        ),
                    name: (on203406['name'] as String),
                    price: (on203406['price'] as double?),
                    quantity: on203406.containsKey('quantity')
                        ? Defined((on203406['quantity'] as double))
                        : Undefined<double>(),
                  ),
                ),
              )
              .toIList(),
          total: (on95245['total'] as double),
        ),
      ),
    ),
  );
}

typedef Query120Args = ({
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
