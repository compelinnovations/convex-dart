// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query22Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

Query22Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on167299) => (
      i: on167299.containsKey('i')
          ? Defined($TrueLiteral.validate(on167299['i']))
          : Undefined<$TrueLiteral>(),
    ),
  );
}

typedef Query22Args = ({Optional<$TrueLiteral> i});
typedef Query22Response = ({Optional<$TrueLiteral> i});
