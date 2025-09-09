// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query10 = QueryOperation<Query10Args, Query10Response>(
  'tasks:query10',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query10Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i)});
}

Query10Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on443715) => (i: $1Literal.validate(on443715['i'])),
  );
}

typedef Query10Args = ({$1Literal i});
typedef Query10Response = ({$1Literal i});
