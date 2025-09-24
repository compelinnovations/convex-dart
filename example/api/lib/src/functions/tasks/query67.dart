// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query67Args {
  final IList<$TrueLiteral?> i;

  const Query67Args({required this.i});

  factory Query67Args.fromJson(Map<String, dynamic> json) {
    return Query67Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query67Args copyWith({IList<$TrueLiteral?>? i}) {
    return Query67Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query67Args && other.i == i;
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

final query67 = QueryOperation<Query67Args, Query67Response>(
  'tasks:query67',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query67Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on596073) => encodeValue(on596073)).toIList(),
      ),
    },
  );
}

Query67Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on94208) => (
      i: (on94208['i'] as IList<dynamic>)
          .map(
            (on259974) =>
                on259974 == null ? null : $TrueLiteral.validate(on259974),
          )
          .toIList(),
    ),
  );
}

typedef Query67Response = ({IList<$TrueLiteral?> i});
