// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query21Args {
  final Optional<$1Literal> i;

  const Query21Args({this.i});

  factory Query21Args.fromJson(Map<String, dynamic> json) {
    return Query21Args(i: json['i'] != null ? json['i'] : const Undefined());
  }

  Map<String, dynamic> toJson() {
    return {if (i.isDefined) 'i': i.asDefined().value};
  }

  Query21Args copyWith({Optional<$1Literal>? i}) {
    return Query21Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query21Args && other.i == i;
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

final query21 = QueryOperation<Query21Args, Query21Response>(
  'tasks:query21',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query21Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query21Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on826600) => (
      i: on826600.containsKey('i')
          ? Defined($1Literal.validate(on826600['i']))
          : Undefined<$1Literal>(),
    ),
  );
}

typedef Query21Response = ({Optional<$1Literal> i});
