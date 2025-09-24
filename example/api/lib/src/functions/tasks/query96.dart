// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query96Args {
  final String? i;

  const Query96Args({
    required this.i,
  });

  factory Query96Args.fromJson(Map<String, dynamic> json) {
    return Query96Args(
      i: json['i'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'i': i,
    };
  }

  Query96Args copyWith({
    String?? i,
  }) {
    return Query96Args(
      i: i ?? this.i,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query96Args &&
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


final query96 = QueryOperation<Query96Args,Query96Response>('tasks:query96',serialize,deserialize);
BTreeMapStringValue serialize(Query96Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i),});
}


Query96Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then((on808341) => (i: (on808341['i'] as String?),));
}


typedef Query96Response = ({String? i});