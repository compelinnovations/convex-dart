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
          (on845829) => encodeValue({
            'content': encodeValue(on845829.content),
            if (on845829.formatting.isDefined)
              'formatting': encodeValue({
                'bold': encodeValue(on845829.formatting.asDefined().value.bold),
                'color': encodeValue(
                  on845829.formatting.asDefined().value.color.split(
                    (on398717) => encodeValue(on398717),
                    (on541515) => encodeValue(on541515),
                    (on184990) => encodeValue(on184990),
                  ),
                ),
                'italic': encodeValue(
                  on845829.formatting.asDefined().value.italic,
                ),
              }),
            'type': encodeValue(on845829.type),
          }),
          (on492347) => encodeValue({
            if (on492347.alt.isDefined)
              'alt': encodeValue(on492347.alt.asDefined().value),
            'dimensions': encodeValue({
              'height': encodeValue(on492347.dimensions.height),
              'width': encodeValue(on492347.dimensions.width),
            }),
            'type': encodeValue(on492347.type),
            'url': encodeValue(on492347.url),
          }),
          (on495411) => encodeValue({
            'items': encodeValue(
              on495411.items.map((on203283) => encodeValue(on203283)).toIList(),
            ),
            'ordered': encodeValue(on495411.ordered),
            'type': encodeValue(on495411.type),
          }),
        ),
      ),
    },
  );
}

Query123Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on944161) => (
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
              return (on944161['i'] as IMap<String, dynamic>).then(
                (on470759) => (
                  content: (on470759['content'] as String),
                  formatting: on470759.containsKey('formatting')
                      ? Defined(
                          (on470759['formatting'] as IMap<String, dynamic>).then(
                            (on540077) => (
                              bold: (on540077['bold'] as bool),
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
                                    if (map.containsKey(on540077['color'])) {
                                      return map[on540077['color']];
                                    }
                                    throw Exception(
                                      (on540077['color'].toString() ?? "null") +
                                          r" cannot be deserialized into a Union3<$RedLiteral, $BlueLiteral, $GreenLiteral>",
                                    );
                                  }()),
                              italic: (on540077['italic'] as bool),
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
                  type: $TextLiteral.validate(on470759['type']),
                ),
              );
            } catch (e) {}

            try {
              return (on944161['i'] as IMap<String, dynamic>).then(
                (on81885) => (
                  alt: on81885.containsKey('alt')
                      ? Defined((on81885['alt'] as String))
                      : Undefined<String>(),
                  dimensions: (on81885['dimensions'] as IMap<String, dynamic>)
                      .then(
                        (on969347) => (
                          height: (on969347['height'] as double),
                          width: (on969347['width'] as double),
                        ),
                      ),
                  type: $ImageLiteral.validate(on81885['type']),
                  url: (on81885['url'] as String),
                ),
              );
            } catch (e) {}

            try {
              return (on944161['i'] as IMap<String, dynamic>).then(
                (on769327) => (
                  items: (on769327['items'] as IList<dynamic>)
                      .map((on979601) => (on979601 as String))
                      .toIList(),
                  ordered: (on769327['ordered'] as bool),
                  type: $ListLiteral.validate(on769327['type']),
                ),
              );
            } catch (e) {}

            throw Exception(
              (on944161['i'].toString() ?? "null") +
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
