// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query111Args {
  final ({double age, String name}) i;

  const Query111Args({required this.i});

  factory Query111Args.fromJson(Map<String, dynamic> json) {
    return Query111Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query111Args copyWith({({double age, String name})? i}) {
    return Query111Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query111Args && other.i == i;
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

final query111 = QueryOperation<Query111Args, Query111Response>(
  'tasks:query111',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query111Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'age': encodeValue(args.i.age),
        'name': encodeValue(args.i.name),
      }),
    },
  );
}

Query111Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on254677) => (
      i: (on254677['i'] as IMap<String, dynamic>).then(
        (on252008) => (
          age: (on252008['age'] as double),
          name: (on252008['name'] as String),
        ),
      ),
    ),
  );
}

typedef Query111Response = ({({double age, String name}) i});
