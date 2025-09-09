// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query58 = QueryOperation<Query58Args, Query58Response>(
  'tasks:query58',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query58Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(args.i.map((on50407) => encodeValue(on50407)).toIList()),
    },
  );
}

Query58Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on600287) => (
      i: (on600287['i'] as IList<dynamic>)
          .map((on453851) => (on453851 as String?))
          .toIList(),
    ),
  );
}

typedef Query58Args = ({IList<String?> i});
typedef Query58Response = ({IList<String?> i});
