// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query79Args {
  final IMap<String, $TrueLiteral> i;

  const Query79Args({required this.i});

  factory Query79Args.fromJson(Map<String, dynamic> json) {
    return Query79Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query79Args copyWith({IMap<String, $TrueLiteral>? i}) {
    return Query79Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query79Args && other.i == i;
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

final query79 = QueryOperation<Query79Args, Query79Response>(
  'tasks:query79',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query79Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on575039 in args.i.entries)
          on575039.key: encodeValue(encodeValue(on575039.value)),
      }),
    },
  );
}

Query79Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on501792) => (
      i: (on501792['i'] as IMap<String, dynamic>).map(
        (on207955, on657607) =>
            MapEntry(on207955, $TrueLiteral.validate(on657607)),
      ),
    ),
  );
}

typedef Query79Response = ({IMap<String, $TrueLiteral> i});
