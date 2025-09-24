// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query24Args {
  final String? i;

  const Query24Args({
    required this.i,
  });

  factory Query24Args.fromJson(Map<String, dynamic> json) {
    return Query24Args(
      i: json['i'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'i': i,
    };
  }

  Query24Args copyWith({
    String?? i,
  }) {
    return Query24Args(
      i: i ?? this.i,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query24Args &&
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


final query24 = QueryOperation<Query24Args,Query24Response>('tasks:query24',serialize,deserialize);
BTreeMapStringValue serialize(Query24Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i),});
}


Query24Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then((on138729) => (i: (on138729['i'] as String?),));
}


typedef Query24Response = ({String? i});