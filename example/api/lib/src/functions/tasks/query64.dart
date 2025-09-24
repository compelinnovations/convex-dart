// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query64Args {
  final IList<dynamic?> i;

  const Query64Args({required this.i});

  factory Query64Args.fromJson(Map<String, dynamic> json) {
    return Query64Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query64Args copyWith({IList<dynamic?>? i}) {
    return Query64Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query64Args && other.i == i;
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

final query64 = QueryOperation<Query64Args, Query64Response>(
  'tasks:query64',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query64Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on122490) => encodeValue(on122490)).toIList(),
      ),
    },
  );
}

Query64Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on21228) => (
      i: (on21228['i'] as IList<dynamic>).map((on834015) => on834015).toIList(),
    ),
  );
}

typedef Query64Response = ({IList<dynamic?> i});
