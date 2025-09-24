// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query81Args {
  final IMap<String, String?> i;

  const Query81Args({required this.i});

  factory Query81Args.fromJson(Map<String, dynamic> json) {
    return Query81Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query81Args copyWith({IMap<String, String?>? i}) {
    return Query81Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query81Args && other.i == i;
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

final query81 = QueryOperation<Query81Args, Query81Response>(
  'tasks:query81',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query81Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on805025 in args.i.entries)
          on805025.key: encodeValue(encodeValue(on805025.value)),
      }),
    },
  );
}

Query81Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on900603) => (
      i: (on900603['i'] as IMap<String, dynamic>).map(
        (on774901, on109624) => MapEntry(on774901, (on109624 as String?)),
      ),
    ),
  );
}

typedef Query81Response = ({IMap<String, String?> i});
