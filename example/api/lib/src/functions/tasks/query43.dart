// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query43Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on694631) => encodeValue(on694631)).toIList(),
      ),
    },
  );
}

Query43Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on812439) => (
      i: (on812439['i'] as IList<dynamic>)
          .map((on447317) => $HiLiteral.validate(on447317))
          .toIList(),
    ),
  );
}

typedef Query43Args = ({IList<$HiLiteral> i});
typedef Query43Response = ({IList<$HiLiteral> i});
