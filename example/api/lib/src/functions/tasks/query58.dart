// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query58Args {
  final IList<String?> i;

  const Query58Args({required this.i});

  factory Query58Args.fromJson(Map<String, dynamic> json) {
    return Query58Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query58Args copyWith({IList<String?>? i}) {
    return Query58Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query58Args && other.i == i;
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

final query58 = QueryOperation<Query58Args, Query58Response>(
  'tasks:query58',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query58Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on659261) => encodeValue(on659261)).toIList(),
      ),
    },
  );
}

Query58Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on292362) => (
      i: (on292362['i'] as IList<dynamic>)
          .map((on856885) => (on856885 as String?))
          .toIList(),
    ),
  );
}

typedef Query58Response = ({IList<String?> i});
