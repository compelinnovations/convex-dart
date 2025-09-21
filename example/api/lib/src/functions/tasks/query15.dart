// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query15 = QueryOperation<Query15Args, Query15Response>(
  'tasks:query15',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query15Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query15Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on853672) => (
      i: on853672.containsKey('i')
          ? Defined((on853672['i'] as bool))
          : Undefined<bool>(),
    ),
  );
}

typedef Query15Args = ({Optional<bool> i});
typedef Query15Response = ({Optional<bool> i});
