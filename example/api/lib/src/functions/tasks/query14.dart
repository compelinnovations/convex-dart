// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query14Args {
  final Optional<double> i;

  const Query14Args({this.i});

  factory Query14Args.fromJson(Map<String, dynamic> json) {
    return Query14Args(
      i: json['i'] != null ? json['i'] as double : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {if (i.isDefined) 'i': i.asDefined().value};
  }

  Query14Args copyWith({Optional<double>? i}) {
    return Query14Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query14Args && other.i == i;
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

final query14 = QueryOperation<Query14Args, Query14Response>(
  'tasks:query14',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query14Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query14Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on888773) => (
      i: on888773.containsKey('i')
          ? Defined((on888773['i'] as double))
          : Undefined<double>(),
    ),
  );
}

typedef Query14Response = ({Optional<double> i});
