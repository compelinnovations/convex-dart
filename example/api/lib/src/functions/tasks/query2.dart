// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query2Args {
  final double i;

  const Query2Args({required this.i});

  factory Query2Args.fromJson(Map<String, dynamic> json) {
    return Query2Args(i: json['i'] as double);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query2Args copyWith({double? i}) {
    return Query2Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query2Args && other.i == i;
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

final query2 = QueryOperation<Query2Args, Query2Response>(
  'tasks:query2',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query2Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i)});
}

Query2Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on914111) => (i: (on914111['i'] as double)),
  );
}

typedef Query2Response = ({double i});
