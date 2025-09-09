// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query10Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i)});
}

Query10Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on544517) => (i: $1Literal.validate(on544517['i'])),
  );
}

typedef Query10Args = ({$1Literal i});
typedef Query10Response = ({$1Literal i});
