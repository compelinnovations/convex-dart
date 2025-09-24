// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query31Args {
  final $HiLiteral? i;

  const Query31Args({
    required this.i,
  });

  factory Query31Args.fromJson(Map<String, dynamic> json) {
    return Query31Args(
      i: json['i'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'i': i,
    };
  }

  Query31Args copyWith({
    $HiLiteral?? i,
  }) {
    return Query31Args(
      i: i ?? this.i,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query31Args &&
        other.i == i;
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


final query31 = QueryOperation<Query31Args,Query31Response>('tasks:query31',serialize,deserialize);
BTreeMapStringValue serialize(Query31Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i),});
}


Query31Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then((on310102) => (i: on310102['i'] == null ? null : $HiLiteral.validate(on310102['i']),));
}


typedef Query31Response = ({$HiLiteral? i});