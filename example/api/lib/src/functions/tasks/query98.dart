// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query98 = QueryOperation<Query98Args, Query98Response>(
  'tasks:query98',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query98Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on442568) => encodeValue(on442568),
          (on531465) => encodeValue(on531465),
        ),
      ),
    },
  );
}

Query98Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on901546) => (
      i: Union2<Uint8ListWithEquality, String>(() {
        try {
          return (on901546['i'] as Uint8ListWithEquality);
        } catch (e) {}

        try {
          return (on901546['i'] as String);
        } catch (e) {}

        throw Exception(
          (on901546['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<Uint8ListWithEquality, String>",
        );
      }()),
    ),
  );
}

typedef Query98Args = ({Union2<Uint8ListWithEquality, String> i});
typedef Query98Response = ({Union2<Uint8ListWithEquality, String> i});
