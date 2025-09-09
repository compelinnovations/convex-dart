// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query92 = QueryOperation<Query92Args, Query92Response>(
  'tasks:query92',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query92Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on902066) => encodeValue(on902066),
          (on996146) => encodeValue(on996146),
        ),
      ),
    },
  );
}

Query92Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on742713) => (
      i: Union2<String, double>(() {
        try {
          return (on742713['i'] as String);
        } catch (e) {}

        try {
          return (on742713['i'] as double);
        } catch (e) {}

        throw Exception(
          (on742713['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<String, double>",
        );
      }()),
    ),
  );
}

typedef Query92Args = ({Union2<String, double> i});
typedef Query92Response = ({Union2<String, double> i});
