// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query69Args {
  final IMap<String, String> i;

  const Query69Args({required this.i});

  factory Query69Args.fromJson(Map<String, dynamic> json) {
    return Query69Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query69Args copyWith({IMap<String, String>? i}) {
    return Query69Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query69Args && other.i == i;
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

final query69 = QueryOperation<Query69Args, Query69Response>(
  'tasks:query69',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query69Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on49388 in args.i.entries)
          on49388.key: encodeValue(encodeValue(on49388.value)),
      }),
    },
  );
}

Query69Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on453975) => (
      i: (on453975['i'] as IMap<String, dynamic>).map(
        (on683205, on802649) => MapEntry(on683205, (on802649 as String)),
      ),
    ),
  );
}

typedef Query69Response = ({IMap<String, String> i});
