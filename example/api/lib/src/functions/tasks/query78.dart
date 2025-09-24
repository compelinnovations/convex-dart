// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query78Args {
  final IMap<String, $1Literal> i;

  const Query78Args({required this.i});

  factory Query78Args.fromJson(Map<String, dynamic> json) {
    return Query78Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query78Args copyWith({IMap<String, $1Literal>? i}) {
    return Query78Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query78Args && other.i == i;
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

final query78 = QueryOperation<Query78Args, Query78Response>(
  'tasks:query78',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query78Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on670065 in args.i.entries)
          on670065.key: encodeValue(encodeValue(on670065.value)),
      }),
    },
  );
}

Query78Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on189704) => (
      i: (on189704['i'] as IMap<String, dynamic>).map(
        (on361116, on35381) => MapEntry(on361116, $1Literal.validate(on35381)),
      ),
    ),
  );
}

typedef Query78Response = ({IMap<String, $1Literal> i});
