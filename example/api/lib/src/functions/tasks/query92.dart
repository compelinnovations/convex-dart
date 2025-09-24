// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query92Args {
  final Union2<String, double> i;

  const Query92Args({required this.i});

  factory Query92Args.fromJson(Map<String, dynamic> json) {
    return Query92Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query92Args copyWith({Union2<String, double>? i}) {
    return Query92Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query92Args && other.i == i;
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
          (on61020) => encodeValue(on61020),
          (on96741) => encodeValue(on96741),
        ),
      ),
    },
  );
}

Query92Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on18115) => (
      i: Union2<String, double>(() {
        try {
          return (on18115['i'] as String);
        } catch (e) {}

        try {
          return (on18115['i'] as double);
        } catch (e) {}

        throw Exception(
          (on18115['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<String, double>",
        );
      }()),
    ),
  );
}

typedef Query92Response = ({Union2<String, double> i});
