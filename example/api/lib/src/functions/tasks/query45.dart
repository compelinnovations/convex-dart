// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query45Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on236526) => encodeValue(on236526)).toIList(),
      ),
    },
  );
}

Query45Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on275786) => (
      i: (on275786['i'] as IList<dynamic>)
          .map((on372389) => $TrueLiteral.validate(on372389))
          .toIList(),
    ),
  );
}

typedef Query45Args = ({IList<$TrueLiteral> i});
typedef Query45Response = ({IList<$TrueLiteral> i});
