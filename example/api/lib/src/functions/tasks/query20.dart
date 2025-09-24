// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query20Args {
  final Optional<$HiLiteral> i;

  const Query20Args({this.i});

  factory Query20Args.fromJson(Map<String, dynamic> json) {
    return Query20Args(i: json['i'] != null ? json['i'] : const Undefined());
  }

  Map<String, dynamic> toJson() {
    return {if (i.isDefined) 'i': i.asDefined().value};
  }

  Query20Args copyWith({Optional<$HiLiteral>? i}) {
    return Query20Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query20Args && other.i == i;
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

final query20 = QueryOperation<Query20Args, Query20Response>(
  'tasks:query20',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query20Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query20Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on552928) => (
      i: on552928.containsKey('i')
          ? Defined($HiLiteral.validate(on552928['i']))
          : Undefined<$HiLiteral>(),
    ),
  );
}

typedef Query20Response = ({Optional<$HiLiteral> i});
