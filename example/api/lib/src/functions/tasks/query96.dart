// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query96Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i)});
}

Query96Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on810268) => (i: (on810268['i'] as String?)),
  );
}

typedef Query96Args = ({String? i});
typedef Query96Response = ({String? i});
