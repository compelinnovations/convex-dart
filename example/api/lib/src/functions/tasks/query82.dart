// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query82Args {
  final IMap<String, double?> i;

  const Query82Args({required this.i});

  factory Query82Args.fromJson(Map<String, dynamic> json) {
    return Query82Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query82Args copyWith({IMap<String, double?>? i}) {
    return Query82Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query82Args && other.i == i;
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

final query82 = QueryOperation<Query82Args, Query82Response>(
  'tasks:query82',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query82Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on256937 in args.i.entries)
          on256937.key: encodeValue(encodeValue(on256937.value)),
      }),
    },
  );
}

Query82Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on914544) => (
      i: (on914544['i'] as IMap<String, dynamic>).map(
        (on237967, on489647) => MapEntry(on237967, (on489647 as double?)),
      ),
    ),
  );
}

typedef Query82Response = ({IMap<String, double?> i});
