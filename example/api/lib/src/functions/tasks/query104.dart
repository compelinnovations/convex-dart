// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query104 = QueryOperation<Query104Args, Query104Response>(
  'tasks:query104',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query104Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i?.split(
          (on264597) => encodeValue(on264597),
          (on931413) => encodeValue(on931413),
          (on391551) => encodeValue(on391551),
        ),
      ),
    },
  );
}

Query104Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on326717) => (
      i: Union3<String, double, bool>(() {
        try {
          return (on326717['i'] as String?);
        } catch (e) {}

        try {
          return (on326717['i'] as double?);
        } catch (e) {}

        try {
          return (on326717['i'] as bool?);
        } catch (e) {}

        if (on326717['i'] == null) {
          return null;
        }

        throw Exception(
          (on326717['i']?.toString() ?? "null") +
              r" cannot be deserialized into a Union3<String, double, bool>",
        );
      }()),
    ),
  );
}

typedef Query104Args = ({Union3<String, double, bool>? i});
typedef Query104Response = ({Union3<String, double, bool>? i});
