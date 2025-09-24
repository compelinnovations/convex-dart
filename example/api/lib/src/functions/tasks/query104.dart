// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query104Args {
  final Union3<String, double, bool>? i;

  const Query104Args({
    required this.i,
  });

  factory Query104Args.fromJson(Map<String, dynamic> json) {
    return Query104Args(
      i: json['i'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'i': i,
    };
  }

  Query104Args copyWith({
    Union3<String, double, bool>?? i,
  }) {
    return Query104Args(
      i: i ?? this.i,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query104Args &&
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


final query104 = QueryOperation<Query104Args,Query104Response>('tasks:query104',serialize,deserialize);
BTreeMapStringValue serialize(Query104Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i?.split((on590727) => encodeValue(on590727), (on659929) => encodeValue(on659929), (on995693) => encodeValue(on995693))),});
}


Query104Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then((on461584) => (i: Union3<String, double, bool>((){try{
  return (on461584['i'] as String?);
} catch(e){}

try{
  return (on461584['i'] as double?);
} catch(e){}

try{
  return (on461584['i'] as bool?);
} catch(e){}

if (on461584['i'] == null){
  return null;
}

throw Exception((on461584['i']?.toString() ?? "null") + r" cannot be deserialized into a Union3<String, double, bool>");

}()),));
}


typedef Query104Response = ({Union3<String, double, bool>? i});