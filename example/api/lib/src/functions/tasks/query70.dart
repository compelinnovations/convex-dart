// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query70Args {
  final IMap<String, double> i;

  const Query70Args({required this.i});

  factory Query70Args.fromJson(Map<String, dynamic> json) {
    return Query70Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query70Args copyWith({IMap<String, double>? i}) {
    return Query70Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query70Args && other.i == i;
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

final query70 = QueryOperation<Query70Args, Query70Response>(
  'tasks:query70',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query70Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on392897 in args.i.entries)
          on392897.key: encodeValue(encodeValue(on392897.value)),
      }),
    },
  );
}

Query70Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on311404) => (
      i: (on311404['i'] as IMap<String, dynamic>).map(
        (on427013, on581855) => MapEntry(on427013, (on581855 as double)),
      ),
    ),
  );
}

typedef Query70Response = ({IMap<String, double> i});
