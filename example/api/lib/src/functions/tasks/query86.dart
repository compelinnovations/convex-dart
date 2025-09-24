// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query86Args {
  final IMap<String, TasksId?> i;

  const Query86Args({required this.i});

  factory Query86Args.fromJson(Map<String, dynamic> json) {
    return Query86Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query86Args copyWith({IMap<String, TasksId?>? i}) {
    return Query86Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query86Args && other.i == i;
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

final query86 = QueryOperation<Query86Args, Query86Response>(
  'tasks:query86',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query86Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on419459 in args.i.entries)
          on419459.key: encodeValue(encodeValue(on419459.value)),
      }),
    },
  );
}

Query86Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on502801) => (
      i: (on502801['i'] as IMap<String, dynamic>).map(
        (on210358, on351382) => MapEntry(
          on210358,
          on351382 == null ? null : TasksId(on351382 as String),
        ),
      ),
    ),
  );
}

typedef Query86Response = ({IMap<String, TasksId?> i});
