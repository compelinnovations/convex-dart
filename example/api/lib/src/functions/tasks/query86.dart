// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query86Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on560920 in args.i.entries)
          on560920.key: encodeValue(encodeValue(on560920.value)),
      }),
    },
  );
}

Query86Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on148998) => (
      i: (on148998['i'] as IMap<String, dynamic>).map(
        (on130841, on964107) => MapEntry(
          on130841,
          on964107 == null ? null : TasksId(on964107 as String),
        ),
      ),
    ),
  );
}

typedef Query86Args = ({IMap<String, TasksId?> i});
typedef Query86Response = ({IMap<String, TasksId?> i});
