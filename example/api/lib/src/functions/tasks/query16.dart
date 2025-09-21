// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query16 = QueryOperation<Query16Args, Query16Response>(
  'tasks:query16',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query16Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query16Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on20410) => (
      i: on20410.containsKey('i')
          ? Defined((on20410['i'] as int))
          : Undefined<int>(),
    ),
  );
}

typedef Query16Args = ({Optional<int> i});
typedef Query16Response = ({Optional<int> i});
