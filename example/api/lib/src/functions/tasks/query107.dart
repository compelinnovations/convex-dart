// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query107 = QueryOperation<Query107Args, Query107Response>(
  'tasks:query107',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query107Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i?.split(
          (on863855) => encodeValue(on863855),
          (on335827) => encodeValue(on335827),
        ),
      ),
    },
  );
}

Query107Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on761053) => (
      i: Union2<Uint8ListWithEquality, int>(() {
        try {
          return (on761053['i'] as Uint8ListWithEquality?);
        } catch (e) {}

        try {
          return (on761053['i'] as int?);
        } catch (e) {}

        if (on761053['i'] == null) {
          return null;
        }

        throw Exception(
          (on761053['i']?.toString() ?? "null") +
              r" cannot be deserialized into a Union2<Uint8ListWithEquality, int>",
        );
      }()),
    ),
  );
}

typedef Query107Args = ({Union2<Uint8ListWithEquality, int>? i});
typedef Query107Response = ({Union2<Uint8ListWithEquality, int>? i});
