// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query83Args {
  final IMap<String, bool?> i;

  const Query83Args({required this.i});

  factory Query83Args.fromJson(Map<String, dynamic> json) {
    return Query83Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query83Args copyWith({IMap<String, bool?>? i}) {
    return Query83Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query83Args && other.i == i;
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

final query83 = QueryOperation<Query83Args, Query83Response>(
  'tasks:query83',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query83Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on202657 in args.i.entries)
          on202657.key: encodeValue(encodeValue(on202657.value)),
      }),
    },
  );
}

Query83Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on228493) => (
      i: (on228493['i'] as IMap<String, dynamic>).map(
        (on795716, on711828) => MapEntry(on795716, (on711828 as bool?)),
      ),
    ),
  );
}

typedef Query83Response = ({IMap<String, bool?> i});
