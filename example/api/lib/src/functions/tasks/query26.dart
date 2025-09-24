// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query26Args {
  final bool? i;

  const Query26Args({
    required this.i,
  });

  factory Query26Args.fromJson(Map<String, dynamic> json) {
    return Query26Args(
      i: json['i'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'i': i,
    };
  }

  Query26Args copyWith({
    bool?? i,
  }) {
    return Query26Args(
      i: i ?? this.i,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query26Args &&
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


final query26 = QueryOperation<Query26Args,Query26Response>('tasks:query26',serialize,deserialize);
BTreeMapStringValue serialize(Query26Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i),});
}


Query26Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then((on447521) => (i: (on447521['i'] as bool?),));
}


typedef Query26Response = ({bool? i});