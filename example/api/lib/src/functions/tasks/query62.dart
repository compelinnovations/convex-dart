// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query62Args {
  final IList<Uint8ListWithEquality?> i;

  const Query62Args({required this.i});

  factory Query62Args.fromJson(Map<String, dynamic> json) {
    return Query62Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query62Args copyWith({IList<Uint8ListWithEquality?>? i}) {
    return Query62Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query62Args && other.i == i;
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

final query62 = QueryOperation<Query62Args, Query62Response>(
  'tasks:query62',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query62Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on914167) => encodeValue(on914167)).toIList(),
      ),
    },
  );
}

Query62Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on241369) => (
      i: (on241369['i'] as IList<dynamic>)
          .map((on280144) => (on280144 as Uint8ListWithEquality?))
          .toIList(),
    ),
  );
}

typedef Query62Response = ({IList<Uint8ListWithEquality?> i});
