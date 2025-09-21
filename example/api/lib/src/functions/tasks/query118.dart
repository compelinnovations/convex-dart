// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query118 = QueryOperation<Query118Args, Query118Response>(
  'tasks:query118',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query118Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'config': encodeValue({
          for (final on665296 in args.i.config.entries)
            on665296.key: encodeValue(
              encodeValue(
                on665296.value.split(
                  (on224716) => encodeValue(on224716),
                  (on206628) => encodeValue(on206628),
                  (on927425) => encodeValue(on927425),
                ),
              ),
            ),
        }),
        'fallback': encodeValue({
          'enabled': encodeValue(args.i.fallback.enabled),
          'value': encodeValue(args.i.fallback.value),
        }),
      }),
    },
  );
}

Query118Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on583567) => (
      i: (on583567['i'] as IMap<String, dynamic>).then(
        (on34275) => (
          config: (on34275['config'] as IMap<String, dynamic>).map(
            (on663930, on606942) => MapEntry(
              on663930,
              Union3<String, double, bool>(() {
                try {
                  return (on606942 as String);
                } catch (e) {}

                try {
                  return (on606942 as double);
                } catch (e) {}

                try {
                  return (on606942 as bool);
                } catch (e) {}

                throw Exception(
                  (on606942.toString() ?? "null") +
                      r" cannot be deserialized into a Union3<String, double, bool>",
                );
              }()),
            ),
          ),
          fallback: (on34275['fallback'] as IMap<String, dynamic>).then(
            (on173588) => (
              enabled: (on173588['enabled'] as bool),
              value: on173588['value'],
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query118Args = ({
  ({
    IMap<String, Union3<String, double, bool>> config,
    ({bool enabled, dynamic value}) fallback,
  })
  i,
});
typedef Query118Response = ({
  ({
    IMap<String, Union3<String, double, bool>> config,
    ({bool enabled, dynamic value}) fallback,
  })
  i,
});
