// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query4Args {
  final int i;

  const Query4Args({required this.i});

  factory Query4Args.fromJson(Map<String, dynamic> json) {
    return Query4Args(i: json['i'] as int);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query4Args copyWith({int? i}) {
    return Query4Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query4Args && other.i == i;
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

final query4 = QueryOperation<Query4Args, Query4Response>(
  'tasks:query4',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query4Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i)});
}

Query4Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on227232) => (i: (on227232['i'] as int)),
  );
}

typedef Query4Response = ({int i});
