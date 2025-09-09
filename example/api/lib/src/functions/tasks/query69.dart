// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query69 = QueryOperation<Query69Args, Query69Response>(
  'tasks:query69',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query69Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on153073 in args.i.entries)
          on153073.key: encodeValue(encodeValue(on153073.value)),
      }),
    },
  );
}

Query69Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on36197) => (
      i: (on36197['i'] as IMap<String, dynamic>).map(
        (on641525, on171171) => MapEntry(on641525, (on171171 as String)),
      ),
    ),
  );
}

typedef Query69Args = ({IMap<String, String> i});
typedef Query69Response = ({IMap<String, String> i});
