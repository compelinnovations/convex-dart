// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query11 = QueryOperation<Query11Args, Query11Response>(
  'tasks:query11',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query11Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i)});
}

Query11Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on60966) => (i: $TrueLiteral.validate(on60966['i'])),
  );
}

typedef Query11Args = ({$TrueLiteral i});
typedef Query11Response = ({$TrueLiteral i});
