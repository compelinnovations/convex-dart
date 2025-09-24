// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query71Args {
  final IMap<String, bool> i;

  const Query71Args({required this.i});

  factory Query71Args.fromJson(Map<String, dynamic> json) {
    return Query71Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query71Args copyWith({IMap<String, bool>? i}) {
    return Query71Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query71Args && other.i == i;
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

final query71 = QueryOperation<Query71Args, Query71Response>(
  'tasks:query71',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query71Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on391089 in args.i.entries)
          on391089.key: encodeValue(encodeValue(on391089.value)),
      }),
    },
  );
}

Query71Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on301641) => (
      i: (on301641['i'] as IMap<String, dynamic>).map(
        (on558180, on372057) => MapEntry(on558180, (on372057 as bool)),
      ),
    ),
  );
}

typedef Query71Response = ({IMap<String, bool> i});
