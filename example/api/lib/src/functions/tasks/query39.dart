// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query39Args {
  final IList<Uint8ListWithEquality> i;

  const Query39Args({required this.i});

  factory Query39Args.fromJson(Map<String, dynamic> json) {
    return Query39Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query39Args copyWith({IList<Uint8ListWithEquality>? i}) {
    return Query39Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query39Args && other.i == i;
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

final query39 = QueryOperation<Query39Args, Query39Response>(
  'tasks:query39',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query39Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on944040) => encodeValue(on944040)).toIList(),
      ),
    },
  );
}

Query39Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on566956) => (
      i: (on566956['i'] as IList<dynamic>)
          .map((on949188) => (on949188 as Uint8ListWithEquality))
          .toIList(),
    ),
  );
}

typedef Query39Response = ({IList<Uint8ListWithEquality> i});
