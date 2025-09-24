// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query73Args {
  final IMap<String, Uint8ListWithEquality> i;

  const Query73Args({required this.i});

  factory Query73Args.fromJson(Map<String, dynamic> json) {
    return Query73Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query73Args copyWith({IMap<String, Uint8ListWithEquality>? i}) {
    return Query73Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query73Args && other.i == i;
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

final query73 = QueryOperation<Query73Args, Query73Response>(
  'tasks:query73',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query73Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on11991 in args.i.entries)
          on11991.key: encodeValue(encodeValue(on11991.value)),
      }),
    },
  );
}

Query73Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on553839) => (
      i: (on553839['i'] as IMap<String, dynamic>).map(
        (on276899, on55213) =>
            MapEntry(on276899, (on55213 as Uint8ListWithEquality)),
      ),
    ),
  );
}

typedef Query73Response = ({IMap<String, Uint8ListWithEquality> i});
