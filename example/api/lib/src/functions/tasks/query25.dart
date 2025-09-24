// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query25Args {
  final double? i;

  const Query25Args({
    required this.i,
  });

  factory Query25Args.fromJson(Map<String, dynamic> json) {
    return Query25Args(
      i: json['i'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'i': i,
    };
  }

  Query25Args copyWith({
    double?? i,
  }) {
    return Query25Args(
      i: i ?? this.i,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query25Args &&
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


final query25 = QueryOperation<Query25Args,Query25Response>('tasks:query25',serialize,deserialize);
BTreeMapStringValue serialize(Query25Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i),});
}


Query25Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then((on484935) => (i: (on484935['i'] as double?),));
}


typedef Query25Response = ({double? i});