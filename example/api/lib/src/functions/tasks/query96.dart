// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query96 = QueryOperation<Query96Args, Query96Response>(
  'tasks:query96',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query96Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i)});
}

Query96Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on469873) => (i: (on469873['i'] as String?)),
  );
}

typedef Query96Args = ({String? i});
typedef Query96Response = ({String? i});
