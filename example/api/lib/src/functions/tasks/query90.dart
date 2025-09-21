// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query90 = QueryOperation<Query90Args, Query90Response>(
  'tasks:query90',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query90Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on533607 in args.i.entries)
          on533607.key: encodeValue(encodeValue(on533607.value)),
      }),
    },
  );
}

Query90Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on483556) => (
      i: (on483556['i'] as IMap<String, dynamic>).map(
        (on243624, on610555) => MapEntry(
          on243624,
          on610555 == null ? null : $TrueLiteral.validate(on610555),
        ),
      ),
    ),
  );
}

typedef Query90Args = ({IMap<String, $TrueLiteral?> i});
typedef Query90Response = ({IMap<String, $TrueLiteral?> i});
