// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query101Args {
  final Union3<$1Literal, $2Literal, $3Literal> i;

  const Query101Args({required this.i});

  factory Query101Args.fromJson(Map<String, dynamic> json) {
    return Query101Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query101Args copyWith({Union3<$1Literal, $2Literal, $3Literal>? i}) {
    return Query101Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query101Args && other.i == i;
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

final query101 = QueryOperation<Query101Args, Query101Response>(
  'tasks:query101',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query101Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on786057) => encodeValue(on786057),
          (on931219) => encodeValue(on931219),
          (on587792) => encodeValue(on587792),
        ),
      ),
    },
  );
}

Query101Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on18369) => (
      i: Union3<$1Literal, $2Literal, $3Literal>(() {
        final map = {1.0: $1Literal(), 2.0: $2Literal(), 3.0: $3Literal()};
        if (map.containsKey(on18369['i'])) {
          return map[on18369['i']];
        }
        throw Exception(
          (on18369['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union3<$1Literal, $2Literal, $3Literal>",
        );
      }()),
    ),
  );
}

typedef Query101Response = ({Union3<$1Literal, $2Literal, $3Literal> i});
