// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query44Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on588998) => encodeValue(on588998)).toIList(),
      ),
    },
  );
}

Query44Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on780562) => (
      i: (on780562['i'] as IList<dynamic>)
          .map((on74060) => $1Literal.validate(on74060))
          .toIList(),
    ),
  );
}

typedef Query44Args = ({IList<$1Literal> i});
typedef Query44Response = ({IList<$1Literal> i});
