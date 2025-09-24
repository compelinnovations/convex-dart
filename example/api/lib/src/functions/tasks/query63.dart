// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query63Args {
  final IList<TasksId?> i;

  const Query63Args({required this.i});

  factory Query63Args.fromJson(Map<String, dynamic> json) {
    return Query63Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query63Args copyWith({IList<TasksId?>? i}) {
    return Query63Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query63Args && other.i == i;
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

final query63 = QueryOperation<Query63Args, Query63Response>(
  'tasks:query63',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query63Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on121319) => encodeValue(on121319)).toIList(),
      ),
    },
  );
}

Query63Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on947962) => (
      i: (on947962['i'] as IList<dynamic>)
          .map(
            (on258084) => on258084 == null ? null : TasksId(on258084 as String),
          )
          .toIList(),
    ),
  );
}

typedef Query63Response = ({IList<TasksId?> i});
