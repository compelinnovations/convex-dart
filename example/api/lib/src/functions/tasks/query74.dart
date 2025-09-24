// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query74Args {
  final IMap<String, TasksId> i;

  const Query74Args({required this.i});

  factory Query74Args.fromJson(Map<String, dynamic> json) {
    return Query74Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query74Args copyWith({IMap<String, TasksId>? i}) {
    return Query74Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query74Args && other.i == i;
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

final query74 = QueryOperation<Query74Args, Query74Response>(
  'tasks:query74',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query74Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on724912 in args.i.entries)
          on724912.key: encodeValue(encodeValue(on724912.value)),
      }),
    },
  );
}

Query74Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on305629) => (
      i: (on305629['i'] as IMap<String, dynamic>).map(
        (on775501, on330212) => MapEntry(on775501, TasksId(on330212 as String)),
      ),
    ),
  );
}

typedef Query74Response = ({IMap<String, TasksId> i});
