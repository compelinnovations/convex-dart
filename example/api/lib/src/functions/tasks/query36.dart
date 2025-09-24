// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query36Args {
  final IList<double> i;

  const Query36Args({required this.i});

  factory Query36Args.fromJson(Map<String, dynamic> json) {
    return Query36Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query36Args copyWith({IList<double>? i}) {
    return Query36Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query36Args && other.i == i;
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

final query36 = QueryOperation<Query36Args, Query36Response>(
  'tasks:query36',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query36Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on256077) => encodeValue(on256077)).toIList(),
      ),
    },
  );
}

Query36Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on586443) => (
      i: (on586443['i'] as IList<dynamic>)
          .map((on352651) => (on352651 as double))
          .toIList(),
    ),
  );
}

typedef Query36Response = ({IList<double> i});
