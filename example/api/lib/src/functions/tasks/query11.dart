// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query11Args {
  final $TrueLiteral i;

  const Query11Args({required this.i});

  factory Query11Args.fromJson(Map<String, dynamic> json) {
    return Query11Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query11Args copyWith({$TrueLiteral? i}) {
    return Query11Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query11Args && other.i == i;
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

final query11 = QueryOperation<Query11Args, Query11Response>(
  'tasks:query11',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query11Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i)});
}

Query11Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on806259) => (i: $TrueLiteral.validate(on806259['i'])),
  );
}

typedef Query11Response = ({$TrueLiteral i});
