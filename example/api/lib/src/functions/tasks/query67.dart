// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query67 = QueryOperation<Query67Args, Query67Response>(
  'tasks:query67',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query67Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(args.i.map((on95948) => encodeValue(on95948)).toIList()),
    },
  );
}

Query67Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on320114) => (
      i: (on320114['i'] as IList<dynamic>)
          .map(
            (on919490) =>
                on919490 == null ? null : $TrueLiteral.validate(on919490),
          )
          .toIList(),
    ),
  );
}

typedef Query67Args = ({IList<$TrueLiteral?> i});
typedef Query67Response = ({IList<$TrueLiteral?> i});
