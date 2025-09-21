// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query62 = QueryOperation<Query62Args, Query62Response>(
  'tasks:query62',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query62Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on305249) => encodeValue(on305249)).toIList(),
      ),
    },
  );
}

Query62Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on197585) => (
      i: (on197585['i'] as IList<dynamic>)
          .map((on268809) => (on268809 as Uint8ListWithEquality?))
          .toIList(),
    ),
  );
}

typedef Query62Args = ({IList<Uint8ListWithEquality?> i});
typedef Query62Response = ({IList<Uint8ListWithEquality?> i});
