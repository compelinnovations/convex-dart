// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query103Args {
  final Union2<int, double> i;

  const Query103Args({required this.i});

  factory Query103Args.fromJson(Map<String, dynamic> json) {
    return Query103Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query103Args copyWith({Union2<int, double>? i}) {
    return Query103Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query103Args && other.i == i;
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

final query103 = QueryOperation<Query103Args, Query103Response>(
  'tasks:query103',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query103Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on27784) => encodeValue(on27784),
          (on454698) => encodeValue(on454698),
        ),
      ),
    },
  );
}

Query103Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on601630) => (
      i: Union2<int, double>(() {
        try {
          return (on601630['i'] as int);
        } catch (e) {}

        try {
          return (on601630['i'] as double);
        } catch (e) {}

        throw Exception(
          (on601630['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<int, double>",
        );
      }()),
    ),
  );
}

typedef Query103Response = ({Union2<int, double> i});
