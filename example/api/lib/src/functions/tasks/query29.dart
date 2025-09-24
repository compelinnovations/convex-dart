// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query29Args {
  final TasksId? i;

  const Query29Args({
    required this.i,
  });

  factory Query29Args.fromJson(Map<String, dynamic> json) {
    return Query29Args(
      i: json['i'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'i': i,
    };
  }

  Query29Args copyWith({
    TasksId?? i,
  }) {
    return Query29Args(
      i: i ?? this.i,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query29Args &&
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


final query29 = QueryOperation<Query29Args,Query29Response>('tasks:query29',serialize,deserialize);
BTreeMapStringValue serialize(Query29Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i),});
}


Query29Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then((on288669) => (i: on288669['i'] == null ? null : TasksId(on288669['i'] as String),));
}


typedef Query29Response = ({TasksId? i});