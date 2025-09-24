// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query84Args {
  final IMap<String, int?> i;

  const Query84Args({required this.i});

  factory Query84Args.fromJson(Map<String, dynamic> json) {
    return Query84Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query84Args copyWith({IMap<String, int?>? i}) {
    return Query84Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query84Args && other.i == i;
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

final query84 = QueryOperation<Query84Args, Query84Response>(
  'tasks:query84',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query84Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on179242 in args.i.entries)
          on179242.key: encodeValue(encodeValue(on179242.value)),
      }),
    },
  );
}

Query84Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on198057) => (
      i: (on198057['i'] as IMap<String, dynamic>).map(
        (on561472, on62551) => MapEntry(on561472, (on62551 as int?)),
      ),
    ),
  );
}

typedef Query84Response = ({IMap<String, int?> i});
