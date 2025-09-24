// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query94Args {
  final Union2<String, bool> i;

  const Query94Args({required this.i});

  factory Query94Args.fromJson(Map<String, dynamic> json) {
    return Query94Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query94Args copyWith({Union2<String, bool>? i}) {
    return Query94Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query94Args && other.i == i;
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

final query94 = QueryOperation<Query94Args, Query94Response>(
  'tasks:query94',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query94Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on893374) => encodeValue(on893374),
          (on932128) => encodeValue(on932128),
        ),
      ),
    },
  );
}

Query94Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on550137) => (
      i: Union2<String, bool>(() {
        try {
          return (on550137['i'] as String);
        } catch (e) {}

        try {
          return (on550137['i'] as bool);
        } catch (e) {}

        throw Exception(
          (on550137['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<String, bool>",
        );
      }()),
    ),
  );
}

typedef Query94Response = ({Union2<String, bool> i});
