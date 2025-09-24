// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query22Args {
  final Optional<$TrueLiteral> i;

  const Query22Args({this.i});

  factory Query22Args.fromJson(Map<String, dynamic> json) {
    return Query22Args(i: json['i'] != null ? json['i'] : const Undefined());
  }

  Map<String, dynamic> toJson() {
    return {if (i.isDefined) 'i': i.asDefined().value};
  }

  Query22Args copyWith({Optional<$TrueLiteral>? i}) {
    return Query22Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query22Args && other.i == i;
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

final query22 = QueryOperation<Query22Args, Query22Response>(
  'tasks:query22',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query22Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query22Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on830198) => (
      i: on830198.containsKey('i')
          ? Defined($TrueLiteral.validate(on830198['i']))
          : Undefined<$TrueLiteral>(),
    ),
  );
}

typedef Query22Response = ({Optional<$TrueLiteral> i});
