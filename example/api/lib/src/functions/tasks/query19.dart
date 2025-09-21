// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query19 = QueryOperation<Query19Args, Query19Response>(
  'tasks:query19',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query19Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query19Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on732956) => (
      i: on732956.containsKey('i')
          ? Defined(on732956['i'])
          : Undefined<dynamic>(),
    ),
  );
}

typedef Query19Args = ({Optional<dynamic> i});
typedef Query19Response = ({Optional<dynamic> i});
