// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query60Args {
  final IList<bool?> i;

  const Query60Args({required this.i});

  factory Query60Args.fromJson(Map<String, dynamic> json) {
    return Query60Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query60Args copyWith({IList<bool?>? i}) {
    return Query60Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query60Args && other.i == i;
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

final query60 = QueryOperation<Query60Args, Query60Response>(
  'tasks:query60',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query60Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on275041) => encodeValue(on275041)).toIList(),
      ),
    },
  );
}

Query60Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on80327) => (
      i: (on80327['i'] as IList<dynamic>)
          .map((on826356) => (on826356 as bool?))
          .toIList(),
    ),
  );
}

typedef Query60Response = ({IList<bool?> i});
