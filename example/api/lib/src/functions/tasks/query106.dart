// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query106Args {
  final Union2<$TrueLiteral, $FalseLiteral> i;

  const Query106Args({required this.i});

  factory Query106Args.fromJson(Map<String, dynamic> json) {
    return Query106Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query106Args copyWith({Union2<$TrueLiteral, $FalseLiteral>? i}) {
    return Query106Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query106Args && other.i == i;
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

final query106 = QueryOperation<Query106Args, Query106Response>(
  'tasks:query106',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query106Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on330863) => encodeValue(on330863),
          (on401505) => encodeValue(on401505),
        ),
      ),
    },
  );
}

Query106Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on638340) => (
      i: Union2<$TrueLiteral, $FalseLiteral>(() {
        final map = {true: $TrueLiteral(), false: $FalseLiteral()};
        if (map.containsKey(on638340['i'])) {
          return map[on638340['i']];
        }
        throw Exception(
          (on638340['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<$TrueLiteral, $FalseLiteral>",
        );
      }()),
    ),
  );
}

typedef Query106Response = ({Union2<$TrueLiteral, $FalseLiteral> i});
