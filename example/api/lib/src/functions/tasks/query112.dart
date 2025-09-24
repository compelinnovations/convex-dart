// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query112Args {
  final ({bool completed, TasksId id, String title}) i;

  const Query112Args({required this.i});

  factory Query112Args.fromJson(Map<String, dynamic> json) {
    return Query112Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query112Args copyWith({({bool completed, TasksId id, String title})? i}) {
    return Query112Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query112Args && other.i == i;
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

final query112 = QueryOperation<Query112Args, Query112Response>(
  'tasks:query112',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query112Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'completed': encodeValue(args.i.completed),
        'id': encodeValue(args.i.id),
        'title': encodeValue(args.i.title),
      }),
    },
  );
}

Query112Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on831187) => (
      i: (on831187['i'] as IMap<String, dynamic>).then(
        (on424317) => (
          completed: (on424317['completed'] as bool),
          id: TasksId(on424317['id'] as String),
          title: (on424317['title'] as String),
        ),
      ),
    ),
  );
}

typedef Query112Response = ({({bool completed, TasksId id, String title}) i});
