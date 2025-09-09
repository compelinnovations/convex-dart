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
        for (final on281595 in args.i.entries)
          on281595.key: encodeValue(encodeValue(on281595.value)),
      }),
    },
  );
}

Query90Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on32528) => (
      i: (on32528['i'] as IMap<String, dynamic>).map(
        (on208519, on368173) => MapEntry(
          on208519,
          on368173 == null ? null : $TrueLiteral.validate(on368173),
        ),
      ),
    ),
  );
}

typedef Query90Args = ({IMap<String, $TrueLiteral?> i});
typedef Query90Response = ({IMap<String, $TrueLiteral?> i});
