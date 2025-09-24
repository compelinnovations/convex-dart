// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query28Args {
  final Uint8ListWithEquality? i;

  const Query28Args({
    required this.i,
  });

  factory Query28Args.fromJson(Map<String, dynamic> json) {
    return Query28Args(
      i: json['i'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'i': i,
    };
  }

  Query28Args copyWith({
    Uint8ListWithEquality?? i,
  }) {
    return Query28Args(
      i: i ?? this.i,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query28Args &&
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


final query28 = QueryOperation<Query28Args,Query28Response>('tasks:query28',serialize,deserialize);
BTreeMapStringValue serialize(Query28Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i),});
}


Query28Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then((on476560) => (i: (on476560['i'] as Uint8ListWithEquality?),));
}


typedef Query28Response = ({Uint8ListWithEquality? i});