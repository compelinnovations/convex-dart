// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query18Args {
  final Optional<TasksId> i;

  const Query18Args({this.i});

  factory Query18Args.fromJson(Map<String, dynamic> json) {
    return Query18Args(i: json['i'] != null ? json['i'] : const Undefined());
  }

  Map<String, dynamic> toJson() {
    return {if (i.isDefined) 'i': i.asDefined().value};
  }

  Query18Args copyWith({Optional<TasksId>? i}) {
    return Query18Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query18Args && other.i == i;
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

final query18 = QueryOperation<Query18Args, Query18Response>(
  'tasks:query18',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query18Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query18Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on890370) => (
      i: on890370.containsKey('i')
          ? Defined(TasksId(on890370['i'] as String))
          : Undefined<TasksId>(),
    ),
  );
}

typedef Query18Response = ({Optional<TasksId> i});
