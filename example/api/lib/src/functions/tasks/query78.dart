// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query78Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on211157 in args.i.entries)
          on211157.key: encodeValue(encodeValue(on211157.value)),
      }),
    },
  );
}

Query78Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on828028) => (
      i: (on828028['i'] as IMap<String, dynamic>).map(
        (on757443, on203190) =>
            MapEntry(on757443, $1Literal.validate(on203190)),
      ),
    ),
  );
}

typedef Query78Args = ({IMap<String, $1Literal> i});
typedef Query78Response = ({IMap<String, $1Literal> i});
