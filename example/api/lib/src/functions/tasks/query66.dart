// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query66Args {
  final IList<$1Literal?> i;

  const Query66Args({required this.i});

  factory Query66Args.fromJson(Map<String, dynamic> json) {
    return Query66Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query66Args copyWith({IList<$1Literal?>? i}) {
    return Query66Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query66Args && other.i == i;
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

final query66 = QueryOperation<Query66Args, Query66Response>(
  'tasks:query66',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query66Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on581502) => encodeValue(on581502)).toIList(),
      ),
    },
  );
}

Query66Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on189428) => (
      i: (on189428['i'] as IList<dynamic>)
          .map(
            (on720992) =>
                on720992 == null ? null : $1Literal.validate(on720992),
          )
          .toIList(),
    ),
  );
}

typedef Query66Response = ({IList<$1Literal?> i});
