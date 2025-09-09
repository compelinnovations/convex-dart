// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query66Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on142791) => encodeValue(on142791)).toIList(),
      ),
    },
  );
}

Query66Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on970123) => (
      i: (on970123['i'] as IList<dynamic>)
          .map(
            (on317617) =>
                on317617 == null ? null : $1Literal.validate(on317617),
          )
          .toIList(),
    ),
  );
}

typedef Query66Args = ({IList<$1Literal?> i});
typedef Query66Response = ({IList<$1Literal?> i});
