// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query89Args {
  final IMap<String, $1Literal?> i;

  const Query89Args({required this.i});

  factory Query89Args.fromJson(Map<String, dynamic> json) {
    return Query89Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query89Args copyWith({IMap<String, $1Literal?>? i}) {
    return Query89Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query89Args && other.i == i;
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

final query89 = QueryOperation<Query89Args, Query89Response>(
  'tasks:query89',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query89Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on163391 in args.i.entries)
          on163391.key: encodeValue(encodeValue(on163391.value)),
      }),
    },
  );
}

Query89Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on854296) => (
      i: (on854296['i'] as IMap<String, dynamic>).map(
        (on912068, on702572) => MapEntry(
          on912068,
          on702572 == null ? null : $1Literal.validate(on702572),
        ),
      ),
    ),
  );
}

typedef Query89Response = ({IMap<String, $1Literal?> i});
