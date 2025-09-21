// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query43 = QueryOperation<Query43Args, Query43Response>(
  'tasks:query43',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query43Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on559398) => encodeValue(on559398)).toIList(),
      ),
    },
  );
}

Query43Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on385919) => (
      i: (on385919['i'] as IList<dynamic>)
          .map((on756241) => $HiLiteral.validate(on756241))
          .toIList(),
    ),
  );
}

typedef Query43Args = ({IList<$HiLiteral> i});
typedef Query43Response = ({IList<$HiLiteral> i});
