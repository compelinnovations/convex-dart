// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query118Args {
  final ({
    IMap<String, Union3<String, double, bool>> config,
    ({bool enabled, dynamic value}) fallback,
  })
  i;

  const Query118Args({required this.i});

  factory Query118Args.fromJson(Map<String, dynamic> json) {
    return Query118Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query118Args copyWith({
    ({
      IMap<String, Union3<String, double, bool>> config,
      ({bool enabled, dynamic value}) fallback,
    })?
    i,
  }) {
    return Query118Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query118Args && other.i == i;
  }

  @override
  int get hashCode {
    return i.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

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
          for (final on62628 in args.i.config.entries)
            on62628.key: encodeValue(
              encodeValue(
                on62628.value.split(
                  (on925066) => encodeValue(on925066),
                  (on177166) => encodeValue(on177166),
                  (on751570) => encodeValue(on751570),
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
    (on967990) => (
      i: (on967990['i'] as IMap<String, dynamic>).then(
        (on40927) => (
          config: (on40927['config'] as IMap<String, dynamic>).map(
            (on510218, on102849) => MapEntry(
              on510218,
              Union3<String, double, bool>(() {
                try {
                  return (on102849 as String);
                } catch (e) {}

                try {
                  return (on102849 as double);
                } catch (e) {}

                try {
                  return (on102849 as bool);
                } catch (e) {}

                throw Exception(
                  (on102849.toString() ?? "null") +
                      r" cannot be deserialized into a Union3<String, double, bool>",
                );
              }()),
            ),
          ),
          fallback: (on40927['fallback'] as IMap<String, dynamic>).then(
            (on463915) => (
              enabled: (on463915['enabled'] as bool),
              value: on463915['value'],
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query118Response = ({
  ({
    IMap<String, Union3<String, double, bool>> config,
    ({bool enabled, dynamic value}) fallback,
  })
  i,
});
