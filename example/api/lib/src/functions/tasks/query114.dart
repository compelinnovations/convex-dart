// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query114Args {
  final ({Optional<String> email, Optional<String> name, String? phone}) i;

  const Query114Args({required this.i});

  factory Query114Args.fromJson(Map<String, dynamic> json) {
    return Query114Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query114Args copyWith({
    ({Optional<String> email, Optional<String> name, String? phone})? i,
  }) {
    return Query114Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query114Args && other.i == i;
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

final query114 = QueryOperation<Query114Args, Query114Response>(
  'tasks:query114',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query114Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        if (args.i.email.isDefined)
          'email': encodeValue(args.i.email.asDefined().value),
        if (args.i.name.isDefined)
          'name': encodeValue(args.i.name.asDefined().value),
        'phone': encodeValue(args.i.phone),
      }),
    },
  );
}

Query114Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on987012) => (
      i: (on987012['i'] as IMap<String, dynamic>).then(
        (on632852) => (
          email: on632852.containsKey('email')
              ? Defined((on632852['email'] as String))
              : Undefined<String>(),
          name: on632852.containsKey('name')
              ? Defined((on632852['name'] as String))
              : Undefined<String>(),
          phone: (on632852['phone'] as String?),
        ),
      ),
    ),
  );
}

typedef Query114Response = ({
  ({Optional<String> email, Optional<String> name, String? phone}) i,
});
