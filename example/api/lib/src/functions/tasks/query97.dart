// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query97Args {
  final Union2<double, bool>? i;

  const Query97Args({
    required this.i,
  });

  factory Query97Args.fromJson(Map<String, dynamic> json) {
    return Query97Args(
      i: json['i'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'i': i,
    };
  }

  Query97Args copyWith({
    Union2<double, bool>?? i,
  }) {
    return Query97Args(
      i: i ?? this.i,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query97Args &&
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


final query97 = QueryOperation<Query97Args,Query97Response>('tasks:query97',serialize,deserialize);
BTreeMapStringValue serialize(Query97Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i?.split((on858997) => encodeValue(on858997), (on141988) => encodeValue(on141988))),});
}


Query97Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then((on417570) => (i: Union2<double, bool>((){try{
  return (on417570['i'] as double?);
} catch(e){}

try{
  return (on417570['i'] as bool?);
} catch(e){}

if (on417570['i'] == null){
  return null;
}

throw Exception((on417570['i']?.toString() ?? "null") + r" cannot be deserialized into a Union2<double, bool>");

}()),));
}


typedef Query97Response = ({Union2<double, bool>? i});