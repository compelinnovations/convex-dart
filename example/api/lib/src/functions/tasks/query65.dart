// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query65 = QueryOperation<Query65Args, Query65Response>(
  'tasks:query65',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query65Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on514036) => encodeValue(on514036)).toIList(),
      ),
    },
  );
}

Query65Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on995395) => (
      i: (on995395['i'] as IList<dynamic>)
          .map(
            (on273294) =>
                on273294 == null ? null : $HiLiteral.validate(on273294),
          )
          .toIList(),
    ),
  );
}

typedef Query65Args = ({IList<$HiLiteral?> i});
typedef Query65Response = ({IList<$HiLiteral?> i});
