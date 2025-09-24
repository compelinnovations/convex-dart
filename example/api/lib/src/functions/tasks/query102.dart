// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query102Args {
  final Union3<$AdminLiteral, $UserLiteral, $GuestLiteral> i;

  const Query102Args({required this.i});

  factory Query102Args.fromJson(Map<String, dynamic> json) {
    return Query102Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query102Args copyWith({
    Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>? i,
  }) {
    return Query102Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query102Args && other.i == i;
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

final query102 = QueryOperation<Query102Args, Query102Response>(
  'tasks:query102',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query102Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on41539) => encodeValue(on41539),
          (on548994) => encodeValue(on548994),
          (on614129) => encodeValue(on614129),
        ),
      ),
    },
  );
}

Query102Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on379447) => (
      i: Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>(() {
        final map = {
          'admin': $AdminLiteral(),
          'user': $UserLiteral(),
          'guest': $GuestLiteral(),
        };
        if (map.containsKey(on379447['i'])) {
          return map[on379447['i']];
        }
        throw Exception(
          (on379447['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>",
        );
      }()),
    ),
  );
}

typedef Query102Response = ({
  Union3<$AdminLiteral, $UserLiteral, $GuestLiteral> i,
});
