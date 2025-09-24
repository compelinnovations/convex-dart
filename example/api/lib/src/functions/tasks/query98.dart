// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query98Args {
  final Union2<Uint8ListWithEquality, String> i;

  const Query98Args({required this.i});

  factory Query98Args.fromJson(Map<String, dynamic> json) {
    return Query98Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query98Args copyWith({Union2<Uint8ListWithEquality, String>? i}) {
    return Query98Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query98Args && other.i == i;
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
          (on496760) => encodeValue(on496760),
          (on547945) => encodeValue(on547945),
        ),
      ),
    },
  );
}

Query98Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on789364) => (
      i: Union2<Uint8ListWithEquality, String>(() {
        try {
          return (on789364['i'] as Uint8ListWithEquality);
        } catch (e) {}

        try {
          return (on789364['i'] as String);
        } catch (e) {}

        throw Exception(
          (on789364['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<Uint8ListWithEquality, String>",
        );
      }()),
    ),
  );
}

typedef Query98Response = ({Union2<Uint8ListWithEquality, String> i});
