// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query13Args {
  final Optional<String> i;

  const Query13Args({this.i});

  factory Query13Args.fromJson(Map<String, dynamic> json) {
    return Query13Args(
      i: json['i'] != null ? json['i'] as String : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {if (i.isDefined) 'i': i.asDefined().value};
  }

  Query13Args copyWith({Optional<String>? i}) {
    return Query13Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query13Args && other.i == i;
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

final query13 = QueryOperation<Query13Args, Query13Response>(
  'tasks:query13',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query13Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query13Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on640092) => (
      i: on640092.containsKey('i')
          ? Defined((on640092['i'] as String))
          : Undefined<String>(),
    ),
  );
}

typedef Query13Response = ({Optional<String> i});
