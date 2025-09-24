// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query40Args {
  final IList<TasksId> i;

  const Query40Args({required this.i});

  factory Query40Args.fromJson(Map<String, dynamic> json) {
    return Query40Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query40Args copyWith({IList<TasksId>? i}) {
    return Query40Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query40Args && other.i == i;
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

final query40 = QueryOperation<Query40Args, Query40Response>(
  'tasks:query40',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query40Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on906834) => encodeValue(on906834)).toIList(),
      ),
    },
  );
}

Query40Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on184809) => (
      i: (on184809['i'] as IList<dynamic>)
          .map((on155902) => TasksId(on155902 as String))
          .toIList(),
    ),
  );
}

typedef Query40Response = ({IList<TasksId> i});
