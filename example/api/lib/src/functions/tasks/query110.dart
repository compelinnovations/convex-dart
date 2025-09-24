// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query110Args {
  final $MixedLiteral? i;

  const Query110Args({
    required this.i,
  });

  factory Query110Args.fromJson(Map<String, dynamic> json) {
    return Query110Args(
      i: json['i'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'i': i,
    };
  }

  Query110Args copyWith({
    $MixedLiteral?? i,
  }) {
    return Query110Args(
      i: i ?? this.i,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query110Args &&
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


final query110 = QueryOperation<Query110Args,Query110Response>('tasks:query110',serialize,deserialize);
BTreeMapStringValue serialize(Query110Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i),});
}


Query110Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then((on73334) => (i: on73334['i'] == null ? null : $MixedLiteral.validate(on73334['i']),));
}


typedef Query110Response = ({$MixedLiteral? i});