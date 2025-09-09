// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query77 = QueryOperation<Query77Args, Query77Response>(
  'tasks:query77',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query77Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on930108 in args.i.entries)
          on930108.key: encodeValue(encodeValue(on930108.value)),
      }),
    },
  );
}

Query77Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on696886) => (
      i: (on696886['i'] as IMap<String, dynamic>).map(
        (on288840, on347268) =>
            MapEntry(on288840, $HiLiteral.validate(on347268)),
      ),
    ),
  );
}

typedef Query77Args = ({IMap<String, $HiLiteral> i});
typedef Query77Response = ({IMap<String, $HiLiteral> i});
