// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query41Args {
  final IList<dynamic> i;

  const Query41Args({required this.i});

  factory Query41Args.fromJson(Map<String, dynamic> json) {
    return Query41Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query41Args copyWith({IList<dynamic>? i}) {
    return Query41Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query41Args && other.i == i;
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

final query41 = QueryOperation<Query41Args, Query41Response>(
  'tasks:query41',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query41Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on452991) => encodeValue(on452991)).toIList(),
      ),
    },
  );
}

Query41Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on802220) => (
      i: (on802220['i'] as IList<dynamic>)
          .map((on101307) => on101307)
          .toIList(),
    ),
  );
}

typedef Query41Response = ({IList<dynamic> i});
