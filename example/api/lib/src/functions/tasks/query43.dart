// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query43Args {
  final IList<$HiLiteral> i;

  const Query43Args({required this.i});

  factory Query43Args.fromJson(Map<String, dynamic> json) {
    return Query43Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query43Args copyWith({IList<$HiLiteral>? i}) {
    return Query43Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query43Args && other.i == i;
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

final query43 = QueryOperation<Query43Args, Query43Response>(
  'tasks:query43',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query43Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on362721) => encodeValue(on362721)).toIList(),
      ),
    },
  );
}

Query43Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on19389) => (
      i: (on19389['i'] as IList<dynamic>)
          .map((on839421) => $HiLiteral.validate(on839421))
          .toIList(),
    ),
  );
}

typedef Query43Response = ({IList<$HiLiteral> i});
