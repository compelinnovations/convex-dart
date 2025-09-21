// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query59 = QueryOperation<Query59Args, Query59Response>(
  'tasks:query59',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query59Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on707029) => encodeValue(on707029)).toIList(),
      ),
    },
  );
}

Query59Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on504359) => (
      i: (on504359['i'] as IList<dynamic>)
          .map((on245477) => (on245477 as double?))
          .toIList(),
    ),
  );
}

typedef Query59Args = ({IList<double?> i});
typedef Query59Response = ({IList<double?> i});
