// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query1Args {
  final String i;

  const Query1Args({required this.i});

  factory Query1Args.fromJson(Map<String, dynamic> json) {
    return Query1Args(i: json['i'] as String);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query1Args copyWith({String? i}) {
    return Query1Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query1Args && other.i == i;
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

final query1 = QueryOperation<Query1Args, Query1Response>(
  'tasks:query1',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query1Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i)});
}

Query1Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on979313) => (i: (on979313['i'] as String)),
  );
}

typedef Query1Response = ({String i});
