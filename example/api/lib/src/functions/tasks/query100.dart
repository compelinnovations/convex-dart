// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query100Args {
  final Union2<$YesLiteral, $NoLiteral> i;

  const Query100Args({required this.i});

  factory Query100Args.fromJson(Map<String, dynamic> json) {
    return Query100Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query100Args copyWith({Union2<$YesLiteral, $NoLiteral>? i}) {
    return Query100Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query100Args && other.i == i;
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

final query100 = QueryOperation<Query100Args, Query100Response>(
  'tasks:query100',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query100Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on757858) => encodeValue(on757858),
          (on793344) => encodeValue(on793344),
        ),
      ),
    },
  );
}

Query100Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on2031) => (
      i: Union2<$YesLiteral, $NoLiteral>(() {
        final map = {'yes': $YesLiteral(), 'no': $NoLiteral()};
        if (map.containsKey(on2031['i'])) {
          return map[on2031['i']];
        }
        throw Exception(
          (on2031['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<$YesLiteral, $NoLiteral>",
        );
      }()),
    ),
  );
}

typedef Query100Response = ({Union2<$YesLiteral, $NoLiteral> i});
