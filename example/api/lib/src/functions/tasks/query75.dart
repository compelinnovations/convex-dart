// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query75Args {
  final IMap<String, dynamic> i;

  const Query75Args({required this.i});

  factory Query75Args.fromJson(Map<String, dynamic> json) {
    return Query75Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query75Args copyWith({IMap<String, dynamic>? i}) {
    return Query75Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query75Args && other.i == i;
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

final query75 = QueryOperation<Query75Args, Query75Response>(
  'tasks:query75',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query75Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on320890 in args.i.entries)
          on320890.key: encodeValue(encodeValue(on320890.value)),
      }),
    },
  );
}

Query75Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on585845) => (
      i: (on585845['i'] as IMap<String, dynamic>).map(
        (on110990, on177638) => MapEntry(on110990, on177638),
      ),
    ),
  );
}

typedef Query75Response = ({IMap<String, dynamic> i});
