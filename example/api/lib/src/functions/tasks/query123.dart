// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query123Args {
  final Union3<
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
  i;

  const Query123Args({required this.i});

  factory Query123Args.fromJson(Map<String, dynamic> json) {
    return Query123Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query123Args copyWith({
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
    >?
    i,
  }) {
    return Query123Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query123Args && other.i == i;
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
          (on818352) => encodeValue({
            'content': encodeValue(on818352.content),
            if (on818352.formatting.isDefined)
              'formatting': encodeValue({
                'bold': encodeValue(on818352.formatting.asDefined().value.bold),
                'color': encodeValue(
                  on818352.formatting.asDefined().value.color.split(
                    (on848241) => encodeValue(on848241),
                    (on239004) => encodeValue(on239004),
                    (on896065) => encodeValue(on896065),
                  ),
                ),
                'italic': encodeValue(
                  on818352.formatting.asDefined().value.italic,
                ),
              }),
            'type': encodeValue(on818352.type),
          }),
          (on727369) => encodeValue({
            if (on727369.alt.isDefined)
              'alt': encodeValue(on727369.alt.asDefined().value),
            'dimensions': encodeValue({
              'height': encodeValue(on727369.dimensions.height),
              'width': encodeValue(on727369.dimensions.width),
            }),
            'type': encodeValue(on727369.type),
            'url': encodeValue(on727369.url),
          }),
          (on572346) => encodeValue({
            'items': encodeValue(
              on572346.items.map((on230880) => encodeValue(on230880)).toIList(),
            ),
            'ordered': encodeValue(on572346.ordered),
            'type': encodeValue(on572346.type),
          }),
        ),
      ),
    },
  );
}

Query123Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on118560) => (
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
              return (on118560['i'] as IMap<String, dynamic>).then(
                (on133841) => (
                  content: (on133841['content'] as String),
                  formatting: on133841.containsKey('formatting')
                      ? Defined(
                          (on133841['formatting'] as IMap<String, dynamic>).then(
                            (on361260) => (
                              bold: (on361260['bold'] as bool),
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
                                    if (map.containsKey(on361260['color'])) {
                                      return map[on361260['color']];
                                    }
                                    throw Exception(
                                      (on361260['color'].toString() ?? "null") +
                                          r" cannot be deserialized into a Union3<$RedLiteral, $BlueLiteral, $GreenLiteral>",
                                    );
                                  }()),
                              italic: (on361260['italic'] as bool),
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
                  type: $TextLiteral.validate(on133841['type']),
                ),
              );
            } catch (e) {}

            try {
              return (on118560['i'] as IMap<String, dynamic>).then(
                (on43615) => (
                  alt: on43615.containsKey('alt')
                      ? Defined((on43615['alt'] as String))
                      : Undefined<String>(),
                  dimensions: (on43615['dimensions'] as IMap<String, dynamic>)
                      .then(
                        (on725587) => (
                          height: (on725587['height'] as double),
                          width: (on725587['width'] as double),
                        ),
                      ),
                  type: $ImageLiteral.validate(on43615['type']),
                  url: (on43615['url'] as String),
                ),
              );
            } catch (e) {}

            try {
              return (on118560['i'] as IMap<String, dynamic>).then(
                (on319990) => (
                  items: (on319990['items'] as IList<dynamic>)
                      .map((on232804) => (on232804 as String))
                      .toIList(),
                  ordered: (on319990['ordered'] as bool),
                  type: $ListLiteral.validate(on319990['type']),
                ),
              );
            } catch (e) {}

            throw Exception(
              (on118560['i'].toString() ?? "null") +
                  r" cannot be deserialized into a Union3<({String content,Optional<({bool bold,Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,bool italic})> formatting,$TextLiteral type}), ({Optional<String> alt,({double height,double width}) dimensions,$ImageLiteral type,String url}), ({IList<String> items,bool ordered,$ListLiteral type})>",
            );
          }()),
    ),
  );
}

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
