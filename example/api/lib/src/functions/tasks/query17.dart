// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query17Args {
  final Optional<Uint8ListWithEquality> i;

  const Query17Args({this.i});

  factory Query17Args.fromJson(Map<String, dynamic> json) {
    return Query17Args(i: json['i'] != null ? json['i'] : const Undefined());
  }

  Map<String, dynamic> toJson() {
    return {if (i.isDefined) 'i': i.asDefined().value};
  }

  Query17Args copyWith({Optional<Uint8ListWithEquality>? i}) {
    return Query17Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query17Args && other.i == i;
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

final query17 = QueryOperation<Query17Args, Query17Response>(
  'tasks:query17',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query17Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query17Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on474778) => (
      i: on474778.containsKey('i')
          ? Defined((on474778['i'] as Uint8ListWithEquality))
          : Undefined<Uint8ListWithEquality>(),
    ),
  );
}

typedef Query17Response = ({Optional<Uint8ListWithEquality> i});
