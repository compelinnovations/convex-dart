// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query95 = QueryOperation<Query95Args, Query95Response>(
  'tasks:query95',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query95Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on498513) => encodeValue(on498513),
          (on516059) => encodeValue(on516059),
          (on164995) => encodeValue(on164995),
        ),
      ),
    },
  );
}

Query95Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on445822) => (
      i: Union3<String, double, bool>(() {
        try {
          return (on445822['i'] as String);
        } catch (e) {}

        try {
          return (on445822['i'] as double);
        } catch (e) {}

        try {
          return (on445822['i'] as bool);
        } catch (e) {}

        throw Exception(
          (on445822['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union3<String, double, bool>",
        );
      }()),
    ),
  );
}

typedef Query95Args = ({Union3<String, double, bool> i});
typedef Query95Response = ({Union3<String, double, bool> i});
