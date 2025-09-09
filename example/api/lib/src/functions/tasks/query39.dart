// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query39 = QueryOperation<Query39Args, Query39Response>(
  'tasks:query39',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query39Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on864981) => encodeValue(on864981)).toIList(),
      ),
    },
  );
}

Query39Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on560428) => (
      i: (on560428['i'] as IList<dynamic>)
          .map((on671849) => (on671849 as Uint8ListWithEquality))
          .toIList(),
    ),
  );
}

typedef Query39Args = ({IList<Uint8ListWithEquality> i});
typedef Query39Response = ({IList<Uint8ListWithEquality> i});
