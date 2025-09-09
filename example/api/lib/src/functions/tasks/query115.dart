// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query115Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'categories': encodeValue(
          args.i.categories
              .map(
                (on924199) => encodeValue(
                  on924199.split(
                    (on78914) => encodeValue(on78914),
                    (on870618) => encodeValue(on870618),
                    (on885514) => encodeValue(on885514),
                  ),
                ),
              )
              .toIList(),
        ),
        'tags': encodeValue(
          args.i.tags.map((on540138) => encodeValue(on540138)).toIList(),
        ),
      }),
    },
  );
}

Query115Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on172292) => (
      i: (on172292['i'] as IMap<String, dynamic>).then(
        (on810135) => (
          categories: (on810135['categories'] as IList<dynamic>)
              .map(
                (on583967) =>
                    Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>(
                      on583967,
                    ),
              )
              .toIList(),
          tags: (on810135['tags'] as IList<dynamic>)
              .map((on550625) => (on550625 as String))
              .toIList(),
        ),
      ),
    ),
  );
}

typedef Query115Args = ({
  ({
    IList<Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>> categories,
    IList<String> tags,
  })
  i,
});
typedef Query115Response = ({
  ({
    IList<Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>> categories,
    IList<String> tags,
  })
  i,
});
