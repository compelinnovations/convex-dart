// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query123 = QueryOperation<Query123Args, Query123Response>(
  'tasks:query123',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query123Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on791147) => encodeValue({
            'content': encodeValue(on791147.content),
            if (on791147.formatting.isDefined)
              'formatting': encodeValue({
                'bold': encodeValue(on791147.formatting.asDefined().value.bold),
                'color': encodeValue(
                  on791147.formatting.asDefined().value.color.split(
                    (on922753) => encodeValue(on922753),
                    (on411553) => encodeValue(on411553),
                    (on143031) => encodeValue(on143031),
                  ),
                ),
                'italic': encodeValue(
                  on791147.formatting.asDefined().value.italic,
                ),
              }),
            'type': encodeValue(on791147.type),
          }),
          (on116456) => encodeValue({
            if (on116456.alt.isDefined)
              'alt': encodeValue(on116456.alt.asDefined().value),
            'dimensions': encodeValue({
              'height': encodeValue(on116456.dimensions.height),
              'width': encodeValue(on116456.dimensions.width),
            }),
            'type': encodeValue(on116456.type),
            'url': encodeValue(on116456.url),
          }),
          (on831254) => encodeValue({
            'items': encodeValue(
              on831254.items.map((on538236) => encodeValue(on538236)).toIList(),
            ),
            'ordered': encodeValue(on831254.ordered),
            'type': encodeValue(on831254.type),
          }),
        ),
      ),
    },
  );
}

Query123Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on207735) => (
      i:
          Union3<
            ({
              String content,
              Optional<
                ({
                  bool bold,
                  Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,
                  bool italic,
                })
              >
              formatting,
              $TextLiteral type,
            }),
            ({
              Optional<String> alt,
              ({double height, double width}) dimensions,
              $ImageLiteral type,
              String url,
            }),
            ({IList<String> items, bool ordered, $ListLiteral type})
          >(() {
            try {
              return (on207735['i'] as IMap<String, dynamic>).then(
                (on241239) => (
                  content: (on241239['content'] as String),
                  formatting: on241239.containsKey('formatting')
                      ? Defined(
                          (on241239['formatting'] as IMap<String, dynamic>).then(
                            (on554363) => (
                              bold: (on554363['bold'] as bool),
                              color:
                                  Union3<
                                    $RedLiteral,
                                    $BlueLiteral,
                                    $GreenLiteral
                                  >(() {
                                    final map = {
                                      'red': $RedLiteral(),
                                      'blue': $BlueLiteral(),
                                      'green': $GreenLiteral(),
                                    };
                                    if (map.containsKey(on554363['color'])) {
                                      return map[on554363['color']];
                                    }
                                    throw Exception(
                                      (on554363['color'].toString() ?? "null") +
                                          r" cannot be deserialized into a Union3<$RedLiteral, $BlueLiteral, $GreenLiteral>",
                                    );
                                  }()),
                              italic: (on554363['italic'] as bool),
                            ),
                          ),
                        )
                      : Undefined<
                          ({
                            bool bold,
                            Union3<$RedLiteral, $BlueLiteral, $GreenLiteral>
                            color,
                            bool italic,
                          })
                        >(),
                  type: $TextLiteral.validate(on241239['type']),
                ),
              );
            } catch (e) {}

            try {
              return (on207735['i'] as IMap<String, dynamic>).then(
                (on35410) => (
                  alt: on35410.containsKey('alt')
                      ? Defined((on35410['alt'] as String))
                      : Undefined<String>(),
                  dimensions: (on35410['dimensions'] as IMap<String, dynamic>)
                      .then(
                        (on668693) => (
                          height: (on668693['height'] as double),
                          width: (on668693['width'] as double),
                        ),
                      ),
                  type: $ImageLiteral.validate(on35410['type']),
                  url: (on35410['url'] as String),
                ),
              );
            } catch (e) {}

            try {
              return (on207735['i'] as IMap<String, dynamic>).then(
                (on631117) => (
                  items: (on631117['items'] as IList<dynamic>)
                      .map((on866886) => (on866886 as String))
                      .toIList(),
                  ordered: (on631117['ordered'] as bool),
                  type: $ListLiteral.validate(on631117['type']),
                ),
              );
            } catch (e) {}

            throw Exception(
              (on207735['i'].toString() ?? "null") +
                  r" cannot be deserialized into a Union3<({String content,Optional<({bool bold,Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,bool italic})> formatting,$TextLiteral type}), ({Optional<String> alt,({double height,double width}) dimensions,$ImageLiteral type,String url}), ({IList<String> items,bool ordered,$ListLiteral type})>",
            );
          }()),
    ),
  );
}

typedef Query123Args = ({
  Union3<
    ({
      String content,
      Optional<
        ({
          bool bold,
          Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,
          bool italic,
        })
      >
      formatting,
      $TextLiteral type,
    }),
    ({
      Optional<String> alt,
      ({double height, double width}) dimensions,
      $ImageLiteral type,
      String url,
    }),
    ({IList<String> items, bool ordered, $ListLiteral type})
  >
  i,
});
typedef Query123Response = ({
  Union3<
    ({
      String content,
      Optional<
        ({
          bool bold,
          Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,
          bool italic,
        })
      >
      formatting,
      $TextLiteral type,
    }),
    ({
      Optional<String> alt,
      ({double height, double width}) dimensions,
      $ImageLiteral type,
      String url,
    }),
    ({IList<String> items, bool ordered, $ListLiteral type})
  >
  i,
});
