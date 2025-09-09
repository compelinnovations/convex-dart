// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query74Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on277894 in args.i.entries)
          on277894.key: encodeValue(encodeValue(on277894.value)),
      }),
    },
  );
}

Query74Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on470320) => (
      i: (on470320['i'] as IMap<String, dynamic>).map(
        (on864873, on415953) => MapEntry(on864873, TasksId(on415953 as String)),
      ),
    ),
  );
}

typedef Query74Args = ({IMap<String, TasksId> i});
typedef Query74Response = ({IMap<String, TasksId> i});
