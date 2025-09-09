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
                (on377517) => encodeValue({
                  'id': encodeValue(on377517.id),
                  'metadata': encodeValue({
                    for (final on442536 in on377517.metadata.entries)
                      on442536.key: encodeValue(encodeValue(on442536.value)),
                  }),
                  'name': encodeValue(on377517.name),
                  'price': encodeValue(on377517.price),
                  if (on377517.quantity.isDefined)
                    'quantity': encodeValue(
                      on377517.quantity.asDefined().value,
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
    (on410591) => (
      i: (on410591['i'] as IMap<String, dynamic>).then(
        (on425118) => (
          items: (on425118['items'] as IList<dynamic>)
              .map(
                (on608213) => (on608213 as IMap<String, dynamic>).then(
                  (on725496) => (
                    id: (on725496['id'] as String),
                    metadata: (on725496['metadata'] as IMap<String, dynamic>)
                        .map(
                          (on694448, on342282) => MapEntry(on694448, on342282),
                        ),
                    name: (on725496['name'] as String),
                    price: (on725496['price'] as double?),
                    quantity: on725496.containsKey('quantity')
                        ? Defined((on725496['quantity'] as double))
                        : Undefined<double>(),
                  ),
                ),
              )
              .toIList(),
          total: (on425118['total'] as double),
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
