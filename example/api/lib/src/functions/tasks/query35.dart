// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query35Args {
  final IList<String> i;

  const Query35Args({required this.i});

  factory Query35Args.fromJson(Map<String, dynamic> json) {
    return Query35Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query35Args copyWith({IList<String>? i}) {
    return Query35Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query35Args && other.i == i;
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

final query35 = QueryOperation<Query35Args, Query35Response>(
  'tasks:query35',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query35Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on338187) => encodeValue(on338187)).toIList(),
      ),
    },
  );
}

Query35Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on284656) => (
      i: (on284656['i'] as IList<dynamic>)
          .map((on340857) => (on340857 as String))
          .toIList(),
    ),
  );
}

typedef Query35Response = ({IList<String> i});
