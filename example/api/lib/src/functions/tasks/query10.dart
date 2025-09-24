// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query10Args {
  final $1Literal i;

  const Query10Args({required this.i});

  factory Query10Args.fromJson(Map<String, dynamic> json) {
    return Query10Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query10Args copyWith({$1Literal? i}) {
    return Query10Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query10Args && other.i == i;
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

final query10 = QueryOperation<Query10Args, Query10Response>(
  'tasks:query10',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query10Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i)});
}

Query10Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on30140) => (i: $1Literal.validate(on30140['i'])),
  );
}

typedef Query10Response = ({$1Literal i});
