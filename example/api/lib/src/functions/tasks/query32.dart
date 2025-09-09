// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query32 = QueryOperation<Query32Args, Query32Response>(
  'tasks:query32',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query32Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i)});
}

Query32Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on802184) =>
        (i: on802184['i'] == null ? null : $1Literal.validate(on802184['i'])),
  );
}

typedef Query32Args = ({$1Literal? i});
typedef Query32Response = ({$1Literal? i});
