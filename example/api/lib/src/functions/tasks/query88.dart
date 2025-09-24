// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query88Args {
  final IMap<String, $HiLiteral?> i;

  const Query88Args({required this.i});

  factory Query88Args.fromJson(Map<String, dynamic> json) {
    return Query88Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query88Args copyWith({IMap<String, $HiLiteral?>? i}) {
    return Query88Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query88Args && other.i == i;
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

final query88 = QueryOperation<Query88Args, Query88Response>(
  'tasks:query88',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query88Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on170687 in args.i.entries)
          on170687.key: encodeValue(encodeValue(on170687.value)),
      }),
    },
  );
}

Query88Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on728590) => (
      i: (on728590['i'] as IMap<String, dynamic>).map(
        (on859886, on772533) => MapEntry(
          on859886,
          on772533 == null ? null : $HiLiteral.validate(on772533),
        ),
      ),
    ),
  );
}

typedef Query88Response = ({IMap<String, $HiLiteral?> i});
