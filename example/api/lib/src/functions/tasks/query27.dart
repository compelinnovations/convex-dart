// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query27 = QueryOperation<Query27Args, Query27Response>(
  'tasks:query27',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query27Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i)});
}

Query27Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on723028) => (i: (on723028['i'] as int?)),
  );
}

typedef Query27Args = ({int? i});
typedef Query27Response = ({int? i});
