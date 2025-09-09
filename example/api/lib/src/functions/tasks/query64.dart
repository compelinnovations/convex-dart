// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query64 = QueryOperation<Query64Args, Query64Response>(
  'tasks:query64',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query64Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on519286) => encodeValue(on519286)).toIList(),
      ),
    },
  );
}

Query64Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on549799) => (
      i: (on549799['i'] as IList<dynamic>)
          .map((on694832) => on694832)
          .toIList(),
    ),
  );
}

typedef Query64Args = ({IList<dynamic?> i});
typedef Query64Response = ({IList<dynamic?> i});
