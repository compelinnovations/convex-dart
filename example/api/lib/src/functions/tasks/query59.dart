// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query59Args {
  final IList<double?> i;

  const Query59Args({required this.i});

  factory Query59Args.fromJson(Map<String, dynamic> json) {
    return Query59Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query59Args copyWith({IList<double?>? i}) {
    return Query59Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query59Args && other.i == i;
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

final query59 = QueryOperation<Query59Args, Query59Response>(
  'tasks:query59',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query59Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on414927) => encodeValue(on414927)).toIList(),
      ),
    },
  );
}

Query59Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on518911) => (
      i: (on518911['i'] as IList<dynamic>)
          .map((on867764) => (on867764 as double?))
          .toIList(),
    ),
  );
}

typedef Query59Response = ({IList<double?> i});
