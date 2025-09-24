// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query33Args {
  final $TrueLiteral? i;

  const Query33Args({
    required this.i,
  });

  factory Query33Args.fromJson(Map<String, dynamic> json) {
    return Query33Args(
      i: json['i'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'i': i,
    };
  }

  Query33Args copyWith({
    $TrueLiteral?? i,
  }) {
    return Query33Args(
      i: i ?? this.i,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query33Args &&
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


final query33 = QueryOperation<Query33Args,Query33Response>('tasks:query33',serialize,deserialize);
BTreeMapStringValue serialize(Query33Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i),});
}


Query33Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then((on362202) => (i: on362202['i'] == null ? null : $TrueLiteral.validate(on362202['i']),));
}


typedef Query33Response = ({$TrueLiteral? i});