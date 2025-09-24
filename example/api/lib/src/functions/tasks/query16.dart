// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query16Args {
  final Optional<int> i;

  const Query16Args({this.i});

  factory Query16Args.fromJson(Map<String, dynamic> json) {
    return Query16Args(
      i: json['i'] != null ? json['i'] as int : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {if (i.isDefined) 'i': i.asDefined().value};
  }

  Query16Args copyWith({Optional<int>? i}) {
    return Query16Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query16Args && other.i == i;
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

final query16 = QueryOperation<Query16Args, Query16Response>(
  'tasks:query16',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query16Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query16Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on545626) => (
      i: on545626.containsKey('i')
          ? Defined((on545626['i'] as int))
          : Undefined<int>(),
    ),
  );
}

typedef Query16Response = ({Optional<int> i});
