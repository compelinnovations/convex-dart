// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query77Args {
  final IMap<String, $HiLiteral> i;

  const Query77Args({required this.i});

  factory Query77Args.fromJson(Map<String, dynamic> json) {
    return Query77Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query77Args copyWith({IMap<String, $HiLiteral>? i}) {
    return Query77Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query77Args && other.i == i;
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

final query77 = QueryOperation<Query77Args, Query77Response>(
  'tasks:query77',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query77Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on393150 in args.i.entries)
          on393150.key: encodeValue(encodeValue(on393150.value)),
      }),
    },
  );
}

Query77Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on916648) => (
      i: (on916648['i'] as IMap<String, dynamic>).map(
        (on821476, on567426) =>
            MapEntry(on821476, $HiLiteral.validate(on567426)),
      ),
    ),
  );
}

typedef Query77Response = ({IMap<String, $HiLiteral> i});
