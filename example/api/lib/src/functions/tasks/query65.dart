// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query65Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on215736) => encodeValue(on215736)).toIList(),
      ),
    },
  );
}

Query65Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on366543) => (
      i: (on366543['i'] as IList<dynamic>)
          .map(
            (on320794) =>
                on320794 == null ? null : $HiLiteral.validate(on320794),
          )
          .toIList(),
    ),
  );
}

typedef Query65Args = ({IList<$HiLiteral?> i});
typedef Query65Response = ({IList<$HiLiteral?> i});
