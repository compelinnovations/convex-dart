// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query14 = QueryOperation<Query14Args, Query14Response>(
  'tasks:query14',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query14Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query14Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on148617) => (
      i: on148617.containsKey('i')
          ? Defined((on148617['i'] as double))
          : Undefined<double>(),
    ),
  );
}

typedef Query14Args = ({Optional<double> i});
typedef Query14Response = ({Optional<double> i});
