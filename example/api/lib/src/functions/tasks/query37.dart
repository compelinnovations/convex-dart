// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query37Args {
  final IList<bool> i;

  const Query37Args({required this.i});

  factory Query37Args.fromJson(Map<String, dynamic> json) {
    return Query37Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query37Args copyWith({IList<bool>? i}) {
    return Query37Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query37Args && other.i == i;
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

final query37 = QueryOperation<Query37Args, Query37Response>(
  'tasks:query37',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query37Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on895606) => encodeValue(on895606)).toIList(),
      ),
    },
  );
}

Query37Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on757833) => (
      i: (on757833['i'] as IList<dynamic>)
          .map((on459585) => (on459585 as bool))
          .toIList(),
    ),
  );
}

typedef Query37Response = ({IList<bool> i});
