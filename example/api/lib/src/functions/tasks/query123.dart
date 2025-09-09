// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query123Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on604452) => encodeValue({
            'content': encodeValue(on604452.content),
            if (on604452.formatting.isDefined)
              'formatting': encodeValue({
                'bold': encodeValue(on604452.formatting.asDefined().value.bold),
                'color': encodeValue(
                  on604452.formatting.asDefined().value.color.split(
                    (on948559) => encodeValue(on948559),
                    (on569997) => encodeValue(on569997),
                    (on787731) => encodeValue(on787731),
                  ),
                ),
                'italic': encodeValue(
                  on604452.formatting.asDefined().value.italic,
                ),
              }),
            'type': encodeValue(on604452.type),
          }),
          (on794195) => encodeValue({
            if (on794195.alt.isDefined)
              'alt': encodeValue(on794195.alt.asDefined().value),
            'dimensions': encodeValue({
              'height': encodeValue(on794195.dimensions.height),
              'width': encodeValue(on794195.dimensions.width),
            }),
            'type': encodeValue(on794195.type),
            'url': encodeValue(on794195.url),
          }),
          (on700472) => encodeValue({
            'items': encodeValue(
              on700472.items.map((on628912) => encodeValue(on628912)).toIList(),
            ),
            'ordered': encodeValue(on700472.ordered),
            'type': encodeValue(on700472.type),
          }),
        ),
      ),
    },
  );
}

Query123Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on877964) => (
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
          >(on877964['i']),
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
