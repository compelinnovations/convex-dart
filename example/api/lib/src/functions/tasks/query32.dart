// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query32Args {
  final $1Literal? i;

  const Query32Args({
    required this.i,
  });

  factory Query32Args.fromJson(Map<String, dynamic> json) {
    return Query32Args(
      i: json['i'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'i': i,
    };
  }

  Query32Args copyWith({
    $1Literal?? i,
  }) {
    return Query32Args(
      i: i ?? this.i,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query32Args &&
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


final query32 = QueryOperation<Query32Args,Query32Response>('tasks:query32',serialize,deserialize);
BTreeMapStringValue serialize(Query32Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i),});
}


Query32Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then((on123071) => (i: on123071['i'] == null ? null : $1Literal.validate(on123071['i']),));
}


typedef Query32Response = ({$1Literal? i});