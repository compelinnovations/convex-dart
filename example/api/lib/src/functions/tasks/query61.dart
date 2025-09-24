// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query61Args {
  final IList<int?> i;

  const Query61Args({required this.i});

  factory Query61Args.fromJson(Map<String, dynamic> json) {
    return Query61Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query61Args copyWith({IList<int?>? i}) {
    return Query61Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query61Args && other.i == i;
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

final query61 = QueryOperation<Query61Args, Query61Response>(
  'tasks:query61',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query61Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on525908) => encodeValue(on525908)).toIList(),
      ),
    },
  );
}

Query61Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on73876) => (
      i: (on73876['i'] as IList<dynamic>)
          .map((on665079) => (on665079 as int?))
          .toIList(),
    ),
  );
}

typedef Query61Response = ({IList<int?> i});
