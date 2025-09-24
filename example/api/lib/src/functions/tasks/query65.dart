// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query65Args {
  final IList<$HiLiteral?> i;

  const Query65Args({required this.i});

  factory Query65Args.fromJson(Map<String, dynamic> json) {
    return Query65Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query65Args copyWith({IList<$HiLiteral?>? i}) {
    return Query65Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query65Args && other.i == i;
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

final query65 = QueryOperation<Query65Args, Query65Response>(
  'tasks:query65',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query65Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on554436) => encodeValue(on554436)).toIList(),
      ),
    },
  );
}

Query65Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on92336) => (
      i: (on92336['i'] as IList<dynamic>)
          .map(
            (on531143) =>
                on531143 == null ? null : $HiLiteral.validate(on531143),
          )
          .toIList(),
    ),
  );
}

typedef Query65Response = ({IList<$HiLiteral?> i});
