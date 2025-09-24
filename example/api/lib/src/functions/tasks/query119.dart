// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query119Args {
  final ({
    Union3<
      ({String content, $TextLiteral type}),
      ({double content, $NumberLiteral type}),
      ({bool content, $BooleanLiteral type})
    >
    data,
  })
  i;

  const Query119Args({required this.i});

  factory Query119Args.fromJson(Map<String, dynamic> json) {
    return Query119Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query119Args copyWith({
    ({
      Union3<
        ({String content, $TextLiteral type}),
        ({double content, $NumberLiteral type}),
        ({bool content, $BooleanLiteral type})
      >
      data,
    })?
    i,
  }) {
    return Query119Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query119Args && other.i == i;
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

final query119 = QueryOperation<Query119Args, Query119Response>(
  'tasks:query119',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query119Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'data': encodeValue(
          args.i.data.split(
            (on803735) => encodeValue({
              'content': encodeValue(on803735.content),
              'type': encodeValue(on803735.type),
            }),
            (on878810) => encodeValue({
              'content': encodeValue(on878810.content),
              'type': encodeValue(on878810.type),
            }),
            (on373701) => encodeValue({
              'content': encodeValue(on373701.content),
              'type': encodeValue(on373701.type),
            }),
          ),
        ),
      }),
    },
  );
}

Query119Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on198652) => (
      i: (on198652['i'] as IMap<String, dynamic>).then(
        (on79902) => (
          data:
              Union3<
                ({String content, $TextLiteral type}),
                ({double content, $NumberLiteral type}),
                ({bool content, $BooleanLiteral type})
              >(() {
                try {
                  return (on79902['data'] as IMap<String, dynamic>).then(
                    (on332821) => (
                      content: (on332821['content'] as String),
                      type: $TextLiteral.validate(on332821['type']),
                    ),
                  );
                } catch (e) {}

                try {
                  return (on79902['data'] as IMap<String, dynamic>).then(
                    (on893226) => (
                      content: (on893226['content'] as double),
                      type: $NumberLiteral.validate(on893226['type']),
                    ),
                  );
                } catch (e) {}

                try {
                  return (on79902['data'] as IMap<String, dynamic>).then(
                    (on385064) => (
                      content: (on385064['content'] as bool),
                      type: $BooleanLiteral.validate(on385064['type']),
                    ),
                  );
                } catch (e) {}

                throw Exception(
                  (on79902['data'].toString() ?? "null") +
                      r" cannot be deserialized into a Union3<({String content,$TextLiteral type}), ({double content,$NumberLiteral type}), ({bool content,$BooleanLiteral type})>",
                );
              }()),
        ),
      ),
    ),
  );
}

typedef Query119Response = ({
  ({
    Union3<
      ({String content, $TextLiteral type}),
      ({double content, $NumberLiteral type}),
      ({bool content, $BooleanLiteral type})
    >
    data,
  })
  i,
});
