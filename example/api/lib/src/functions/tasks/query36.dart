// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query36 = QueryOperation<Query36Args, Query36Response>(
  'tasks:query36',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query36Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on790614) => encodeValue(on790614)).toIList(),
      ),
    },
  );
}

Query36Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on984490) => (
      i: (on984490['i'] as IList<dynamic>)
          .map((on268164) => (on268164 as double))
          .toIList(),
    ),
  );
}

typedef Query36Args = ({IList<double> i});
typedef Query36Response = ({IList<double> i});
