// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query18 = QueryOperation<Query18Args, Query18Response>(
  'tasks:query18',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query18Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query18Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on669341) => (
      i: on669341.containsKey('i')
          ? Defined(TasksId(on669341['i'] as String))
          : Undefined<TasksId>(),
    ),
  );
}

typedef Query18Args = ({Optional<TasksId> i});
typedef Query18Response = ({Optional<TasksId> i});
