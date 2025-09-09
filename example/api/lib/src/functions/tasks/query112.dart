// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query112Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'completed': encodeValue(args.i.completed),
        'id': encodeValue(args.i.id),
        'title': encodeValue(args.i.title),
      }),
    },
  );
}

Query112Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on831706) => (
      i: (on831706['i'] as IMap<String, dynamic>).then(
        (on251126) => (
          completed: (on251126['completed'] as bool),
          id: TasksId(on251126['id'] as String),
          title: (on251126['title'] as String),
        ),
      ),
    ),
  );
}

typedef Query112Args = ({({bool completed, TasksId id, String title}) i});
typedef Query112Response = ({({bool completed, TasksId id, String title}) i});
