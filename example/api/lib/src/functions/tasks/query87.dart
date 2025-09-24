// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query87Args {
  final IMap<String, dynamic?> i;

  const Query87Args({required this.i});

  factory Query87Args.fromJson(Map<String, dynamic> json) {
    return Query87Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query87Args copyWith({IMap<String, dynamic?>? i}) {
    return Query87Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query87Args && other.i == i;
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

final query87 = QueryOperation<Query87Args, Query87Response>(
  'tasks:query87',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query87Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on51419 in args.i.entries)
          on51419.key: encodeValue(encodeValue(on51419.value)),
      }),
    },
  );
}

Query87Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on89108) => (
      i: (on89108['i'] as IMap<String, dynamic>).map(
        (on131578, on81118) => MapEntry(on131578, on81118),
      ),
    ),
  );
}

typedef Query87Response = ({IMap<String, dynamic?> i});
