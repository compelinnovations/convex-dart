// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query5Args {
  final Uint8ListWithEquality i;

  const Query5Args({required this.i});

  factory Query5Args.fromJson(Map<String, dynamic> json) {
    return Query5Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query5Args copyWith({Uint8ListWithEquality? i}) {
    return Query5Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query5Args && other.i == i;
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

final query5 = QueryOperation<Query5Args, Query5Response>(
  'tasks:query5',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query5Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i)});
}

Query5Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on35187) => (i: (on35187['i'] as Uint8ListWithEquality)),
  );
}

typedef Query5Response = ({Uint8ListWithEquality i});
