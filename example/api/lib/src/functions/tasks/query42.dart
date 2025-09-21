// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query42 = QueryOperation<Query42Args, Query42Response>(
  'tasks:query42',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query42Args args) {
  return hashmapToBtreemap(
    hashmap: {'i': encodeValue(args.i.map((on509161) => null).toIList())},
  );
}

Query42Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on179585) => (
      i: (on179585['i'] as IList<dynamic>).map((on419071) => null).toIList(),
    ),
  );
}

typedef Query42Args = ({IList<void> i});
typedef Query42Response = ({IList<void> i});
