// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query42Args {
  final IList<void> i;

  const Query42Args({required this.i});

  factory Query42Args.fromJson(Map<String, dynamic> json) {
    return Query42Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query42Args copyWith({IList<void>? i}) {
    return Query42Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query42Args && other.i == i;
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

final query42 = QueryOperation<Query42Args, Query42Response>(
  'tasks:query42',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query42Args args) {
  return hashmapToBtreemap(
    hashmap: {'i': encodeValue(args.i.map((on828477) => null).toIList())},
  );
}

Query42Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on117666) => (
      i: (on117666['i'] as IList<dynamic>).map((on405699) => null).toIList(),
    ),
  );
}

typedef Query42Response = ({IList<void> i});
