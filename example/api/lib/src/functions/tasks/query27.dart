// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query27Args {
  final int? i;

  const Query27Args({
    required this.i,
  });

  factory Query27Args.fromJson(Map<String, dynamic> json) {
    return Query27Args(
      i: json['i'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'i': i,
    };
  }

  Query27Args copyWith({
    int?? i,
  }) {
    return Query27Args(
      i: i ?? this.i,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query27Args &&
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


final query27 = QueryOperation<Query27Args,Query27Response>('tasks:query27',serialize,deserialize);
BTreeMapStringValue serialize(Query27Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i),});
}


Query27Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then((on398593) => (i: (on398593['i'] as int?),));
}


typedef Query27Response = ({int? i});