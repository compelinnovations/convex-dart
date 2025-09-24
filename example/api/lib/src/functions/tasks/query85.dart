// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query85Args {
  final IMap<String, Uint8ListWithEquality?> i;

  const Query85Args({required this.i});

  factory Query85Args.fromJson(Map<String, dynamic> json) {
    return Query85Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query85Args copyWith({IMap<String, Uint8ListWithEquality?>? i}) {
    return Query85Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query85Args && other.i == i;
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

final query85 = QueryOperation<Query85Args, Query85Response>(
  'tasks:query85',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query85Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on481563 in args.i.entries)
          on481563.key: encodeValue(encodeValue(on481563.value)),
      }),
    },
  );
}

Query85Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on951868) => (
      i: (on951868['i'] as IMap<String, dynamic>).map(
        (on94759, on746481) =>
            MapEntry(on94759, (on746481 as Uint8ListWithEquality?)),
      ),
    ),
  );
}

typedef Query85Response = ({IMap<String, Uint8ListWithEquality?> i});
