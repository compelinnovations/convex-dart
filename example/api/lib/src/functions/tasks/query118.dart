// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query118Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'config': encodeValue({
          for (final on467506 in args.i.config.entries)
            on467506.key: encodeValue(
              encodeValue(
                on467506.value.split(
                  (on73610) => encodeValue(on73610),
                  (on784757) => encodeValue(on784757),
                  (on525937) => encodeValue(on525937),
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
    (on213925) => (
      i: (on213925['i'] as IMap<String, dynamic>).then(
        (on526128) => (
          config: (on526128['config'] as IMap<String, dynamic>).map(
            (on592919, on963007) =>
                MapEntry(on592919, Union3<String, double, bool>(on963007)),
          ),
          fallback: (on526128['fallback'] as IMap<String, dynamic>).then(
            (on482982) => (
              enabled: (on482982['enabled'] as bool),
              value: on482982['value'],
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
