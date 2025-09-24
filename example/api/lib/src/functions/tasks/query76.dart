// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query76Args {
  final IMap<String, void> i;

  const Query76Args({required this.i});

  factory Query76Args.fromJson(Map<String, dynamic> json) {
    return Query76Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query76Args copyWith({IMap<String, void>? i}) {
    return Query76Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query76Args && other.i == i;
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

final query76 = QueryOperation<Query76Args, Query76Response>(
  'tasks:query76',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query76Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on781018 in args.i.entries) on781018.key: encodeValue(null),
      }),
    },
  );
}

Query76Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on758474) => (
      i: (on758474['i'] as IMap<String, dynamic>).map(
        (on788843, on623868) => MapEntry(on788843, null),
      ),
    ),
  );
}

typedef Query76Response = ({IMap<String, void> i});
