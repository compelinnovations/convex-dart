// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query95Args {
  final Union3<String, double, bool> i;

  const Query95Args({required this.i});

  factory Query95Args.fromJson(Map<String, dynamic> json) {
    return Query95Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query95Args copyWith({Union3<String, double, bool>? i}) {
    return Query95Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query95Args && other.i == i;
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
          (on229429) => encodeValue(on229429),
          (on113304) => encodeValue(on113304),
          (on661462) => encodeValue(on661462),
        ),
      ),
    },
  );
}

Query95Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on401897) => (
      i: Union3<String, double, bool>(() {
        try {
          return (on401897['i'] as String);
        } catch (e) {}

        try {
          return (on401897['i'] as double);
        } catch (e) {}

        try {
          return (on401897['i'] as bool);
        } catch (e) {}

        throw Exception(
          (on401897['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union3<String, double, bool>",
        );
      }()),
    ),
  );
}

typedef Query95Response = ({Union3<String, double, bool> i});
