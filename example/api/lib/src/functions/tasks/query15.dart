// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query15Args {
  final Optional<bool> i;

  const Query15Args({this.i});

  factory Query15Args.fromJson(Map<String, dynamic> json) {
    return Query15Args(
      i: json['i'] != null ? json['i'] as bool : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {if (i.isDefined) 'i': i.asDefined().value};
  }

  Query15Args copyWith({Optional<bool>? i}) {
    return Query15Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query15Args && other.i == i;
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

final query15 = QueryOperation<Query15Args, Query15Response>(
  'tasks:query15',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query15Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query15Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on902490) => (
      i: on902490.containsKey('i')
          ? Defined((on902490['i'] as bool))
          : Undefined<bool>(),
    ),
  );
}

typedef Query15Response = ({Optional<bool> i});
