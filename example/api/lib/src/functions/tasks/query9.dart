// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query9Args {
  final $HiLiteral i;

  const Query9Args({required this.i});

  factory Query9Args.fromJson(Map<String, dynamic> json) {
    return Query9Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query9Args copyWith({$HiLiteral? i}) {
    return Query9Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query9Args && other.i == i;
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

final query9 = QueryOperation<Query9Args, Query9Response>(
  'tasks:query9',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query9Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i)});
}

Query9Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on599617) => (i: $HiLiteral.validate(on599617['i'])),
  );
}

typedef Query9Response = ({$HiLiteral i});
