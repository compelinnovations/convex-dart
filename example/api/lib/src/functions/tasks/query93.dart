// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query93Args {
  final Union2<bool, double> i;

  const Query93Args({required this.i});

  factory Query93Args.fromJson(Map<String, dynamic> json) {
    return Query93Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query93Args copyWith({Union2<bool, double>? i}) {
    return Query93Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query93Args && other.i == i;
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

final query93 = QueryOperation<Query93Args, Query93Response>(
  'tasks:query93',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query93Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on667585) => encodeValue(on667585),
          (on992031) => encodeValue(on992031),
        ),
      ),
    },
  );
}

Query93Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on324525) => (
      i: Union2<bool, double>(() {
        try {
          return (on324525['i'] as bool);
        } catch (e) {}

        try {
          return (on324525['i'] as double);
        } catch (e) {}

        throw Exception(
          (on324525['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<bool, double>",
        );
      }()),
    ),
  );
}

typedef Query93Response = ({Union2<bool, double> i});
