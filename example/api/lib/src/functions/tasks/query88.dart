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
        for (final on153357 in args.i.entries)
          on153357.key: encodeValue(encodeValue(on153357.value)),
      }),
    },
  );
}

Query88Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on827058) => (
      i: (on827058['i'] as IMap<String, dynamic>).map(
        (on591868, on751037) => MapEntry(
          on591868,
          on751037 == null ? null : $HiLiteral.validate(on751037),
        ),
      ),
    ),
  );
}

typedef Query88Args = ({IMap<String, $HiLiteral?> i});
typedef Query88Response = ({IMap<String, $HiLiteral?> i});
