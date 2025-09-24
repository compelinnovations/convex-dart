// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query90Args {
  final IMap<String, $TrueLiteral?> i;

  const Query90Args({required this.i});

  factory Query90Args.fromJson(Map<String, dynamic> json) {
    return Query90Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query90Args copyWith({IMap<String, $TrueLiteral?>? i}) {
    return Query90Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query90Args && other.i == i;
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

final query90 = QueryOperation<Query90Args, Query90Response>(
  'tasks:query90',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query90Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on50387 in args.i.entries)
          on50387.key: encodeValue(encodeValue(on50387.value)),
      }),
    },
  );
}

Query90Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on949177) => (
      i: (on949177['i'] as IMap<String, dynamic>).map(
        (on846929, on773340) => MapEntry(
          on846929,
          on773340 == null ? null : $TrueLiteral.validate(on773340),
        ),
      ),
    ),
  );
}

typedef Query90Response = ({IMap<String, $TrueLiteral?> i});
