// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query22 = QueryOperation<Query22Args, Query22Response>(
  'tasks:query22',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query22Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query22Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on191231) => (
      i: on191231.containsKey('i')
          ? Defined($TrueLiteral.validate(on191231['i']))
          : Undefined<$TrueLiteral>(),
    ),
  );
}

typedef Query22Args = ({Optional<$TrueLiteral> i});
typedef Query22Response = ({Optional<$TrueLiteral> i});
