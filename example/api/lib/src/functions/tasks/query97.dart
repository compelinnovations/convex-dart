// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query97 = QueryOperation<Query97Args, Query97Response>(
  'tasks:query97',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query97Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i?.split(
          (on72594) => encodeValue(on72594),
          (on508716) => encodeValue(on508716),
        ),
      ),
    },
  );
}

Query97Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on346337) => (
      i: Union2<double, bool>(() {
        try {
          return (on346337['i'] as double?);
        } catch (e) {}

        try {
          return (on346337['i'] as bool?);
        } catch (e) {}

        if (on346337['i'] == null) {
          return null;
        }

        throw Exception(
          (on346337['i']?.toString() ?? "null") +
              r" cannot be deserialized into a Union2<double, bool>",
        );
      }()),
    ),
  );
}

typedef Query97Args = ({Union2<double, bool>? i});
typedef Query97Response = ({Union2<double, bool>? i});
