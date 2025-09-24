// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query107Args {
  final Union2<Uint8ListWithEquality, int>? i;

  const Query107Args({
    required this.i,
  });

  factory Query107Args.fromJson(Map<String, dynamic> json) {
    return Query107Args(
      i: json['i'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'i': i,
    };
  }

  Query107Args copyWith({
    Union2<Uint8ListWithEquality, int>?? i,
  }) {
    return Query107Args(
      i: i ?? this.i,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query107Args &&
        other.i == i;
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


final query107 = QueryOperation<Query107Args,Query107Response>('tasks:query107',serialize,deserialize);
BTreeMapStringValue serialize(Query107Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i?.split((on197179) => encodeValue(on197179), (on65629) => encodeValue(on65629))),});
}


Query107Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then((on804346) => (i: Union2<Uint8ListWithEquality, int>((){try{
  return (on804346['i'] as Uint8ListWithEquality?);
} catch(e){}

try{
  return (on804346['i'] as int?);
} catch(e){}

if (on804346['i'] == null){
  return null;
}

throw Exception((on804346['i']?.toString() ?? "null") + r" cannot be deserialized into a Union2<Uint8ListWithEquality, int>");

}()),));
}


typedef Query107Response = ({Union2<Uint8ListWithEquality, int>? i});