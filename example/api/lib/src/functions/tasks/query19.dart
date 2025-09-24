// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query19Args {
  final Optional<dynamic> i;

  const Query19Args({this.i});

  factory Query19Args.fromJson(Map<String, dynamic> json) {
    return Query19Args(i: json['i'] != null ? json['i'] : const Undefined());
  }

  Map<String, dynamic> toJson() {
    return {if (i.isDefined) 'i': i.asDefined().value};
  }

  Query19Args copyWith({Optional<dynamic>? i}) {
    return Query19Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query19Args && other.i == i;
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

final query19 = QueryOperation<Query19Args, Query19Response>(
  'tasks:query19',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query19Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query19Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on549868) => (
      i: on549868.containsKey('i')
          ? Defined(on549868['i'])
          : Undefined<dynamic>(),
    ),
  );
}

typedef Query19Response = ({Optional<dynamic> i});
