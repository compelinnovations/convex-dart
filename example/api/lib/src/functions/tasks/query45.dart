// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query45Args {
  final IList<$TrueLiteral> i;

  const Query45Args({required this.i});

  factory Query45Args.fromJson(Map<String, dynamic> json) {
    return Query45Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query45Args copyWith({IList<$TrueLiteral>? i}) {
    return Query45Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query45Args && other.i == i;
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

final query45 = QueryOperation<Query45Args, Query45Response>(
  'tasks:query45',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query45Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on650253) => encodeValue(on650253)).toIList(),
      ),
    },
  );
}

Query45Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on145738) => (
      i: (on145738['i'] as IList<dynamic>)
          .map((on744759) => $TrueLiteral.validate(on744759))
          .toIList(),
    ),
  );
}

typedef Query45Response = ({IList<$TrueLiteral> i});
