// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query120Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'items': encodeValue(
          args.i.items
              .map(
                (on12308) => encodeValue({
                  'id': encodeValue(on12308.id),
                  'metadata': encodeValue({
                    for (final on289223 in on12308.metadata.entries)
                      on289223.key: encodeValue(encodeValue(on289223.value)),
                  }),
                  'name': encodeValue(on12308.name),
                  'price': encodeValue(on12308.price),
                  if (on12308.quantity.isDefined)
                    'quantity': encodeValue(on12308.quantity.asDefined().value),
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
    (on429365) => (
      i: (on429365['i'] as IMap<String, dynamic>).then(
        (on242399) => (
          items: (on242399['items'] as IList<dynamic>)
              .map(
                (on550584) => (on550584 as IMap<String, dynamic>).then(
                  (on473355) => (
                    id: (on473355['id'] as String),
                    metadata: (on473355['metadata'] as IMap<String, dynamic>)
                        .map(
                          (on929601, on828203) => MapEntry(on929601, on828203),
                        ),
                    name: (on473355['name'] as String),
                    price: (on473355['price'] as double?),
                    quantity: on473355.containsKey('quantity')
                        ? Defined((on473355['quantity'] as double))
                        : Undefined<double>(),
                  ),
                ),
              )
              .toIList(),
          total: (on242399['total'] as double),
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
