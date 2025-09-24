// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query30Args {
  final dynamic? i;

  const Query30Args({
    required this.i,
  });

  factory Query30Args.fromJson(Map<String, dynamic> json) {
    return Query30Args(
      i: json['i'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'i': i,
    };
  }

  Query30Args copyWith({
    dynamic?? i,
  }) {
    return Query30Args(
      i: i ?? this.i,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query30Args &&
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


final query30 = QueryOperation<Query30Args,Query30Response>('tasks:query30',serialize,deserialize);
BTreeMapStringValue serialize(Query30Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i),});
}


Query30Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then((on792773) => (i: on792773['i'],));
}


typedef Query30Response = ({dynamic? i});