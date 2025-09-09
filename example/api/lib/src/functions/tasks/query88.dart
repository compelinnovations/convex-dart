// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query88 = QueryOperation<Query88Args, Query88Response>(
  'tasks:query88',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query88Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on986889 in args.i.entries)
          on986889.key: encodeValue(encodeValue(on986889.value)),
      }),
    },
  );
}

Query88Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on955282) => (
      i: (on955282['i'] as IMap<String, dynamic>).map(
        (on447632, on287775) => MapEntry(
          on447632,
          on287775 == null ? null : $HiLiteral.validate(on287775),
        ),
      ),
    ),
  );
}

typedef Query88Args = ({IMap<String, $HiLiteral?> i});
typedef Query88Response = ({IMap<String, $HiLiteral?> i});
