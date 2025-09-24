// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query72Args {
  final IMap<String, int> i;

  const Query72Args({required this.i});

  factory Query72Args.fromJson(Map<String, dynamic> json) {
    return Query72Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query72Args copyWith({IMap<String, int>? i}) {
    return Query72Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query72Args && other.i == i;
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

final query72 = QueryOperation<Query72Args, Query72Response>(
  'tasks:query72',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query72Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on215601 in args.i.entries)
          on215601.key: encodeValue(encodeValue(on215601.value)),
      }),
    },
  );
}

Query72Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on811893) => (
      i: (on811893['i'] as IMap<String, dynamic>).map(
        (on519498, on540464) => MapEntry(on519498, (on540464 as int)),
      ),
    ),
  );
}

typedef Query72Response = ({IMap<String, int> i});
