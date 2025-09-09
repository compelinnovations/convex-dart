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
          for (final on999660 in args.i.config.entries)
            on999660.key: encodeValue(
              encodeValue(
                on999660.value.split(
                  (on853776) => encodeValue(on853776),
                  (on229637) => encodeValue(on229637),
                  (on744791) => encodeValue(on744791),
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
    (on467336) => (
      i: (on467336['i'] as IMap<String, dynamic>).then(
        (on323330) => (
          config: (on323330['config'] as IMap<String, dynamic>).map(
            (on295302, on448509) => MapEntry(
              on295302,
              Union3<String, double, bool>(() {
                try {
                  return (on448509 as String);
                } catch (e) {}

                try {
                  return (on448509 as double);
                } catch (e) {}

                try {
                  return (on448509 as bool);
                } catch (e) {}

                throw Exception(
                  (on448509.toString() ?? "null") +
                      r" cannot be deserialized into a Union3<String, double, bool>",
                );
              }()),
            ),
          ),
          fallback: (on323330['fallback'] as IMap<String, dynamic>).then(
            (on508933) => (
              enabled: (on508933['enabled'] as bool),
              value: on508933['value'],
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
