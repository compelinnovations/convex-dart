// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query117Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'comments': encodeValue(
          args.i.comments
              .map(
                (on711602) => encodeValue({
                  'author': encodeValue(on711602.author),
                  'text': encodeValue(on711602.text),
                  'timestamp': encodeValue(on711602.timestamp),
                }),
              )
              .toIList(),
        ),
        if (args.i.reviewer.isDefined)
          'reviewer': encodeValue({
            'id': encodeValue(args.i.reviewer.asDefined().value.id),
            'name': encodeValue(args.i.reviewer.asDefined().value.name),
          }),
        'status': encodeValue(
          args.i.status.split(
            (on494259) => encodeValue(on494259),
            (on75479) => encodeValue(on75479),
            (on315336) => encodeValue(on315336),
          ),
        ),
      }),
    },
  );
}

Query117Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on524967) => (
      i: (on524967['i'] as IMap<String, dynamic>).then(
        (on516219) => (
          comments: (on516219['comments'] as IList<dynamic>)
              .map(
                (on23015) => (on23015 as IMap<String, dynamic>).then(
                  (on212713) => (
                    author: (on212713['author'] as String),
                    text: (on212713['text'] as String),
                    timestamp: (on212713['timestamp'] as double),
                  ),
                ),
              )
              .toIList(),
          reviewer: on516219.containsKey('reviewer')
              ? Defined(
                  (on516219['reviewer'] as IMap<String, dynamic>).then(
                    (on96866) => (
                      id: TasksId(on96866['id'] as String),
                      name: (on96866['name'] as String),
                    ),
                  ),
                )
              : Undefined<({TasksId id, String name})>(),
          status: Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral>(
            on516219['status'],
          ),
        ),
      ),
    ),
  );
}

typedef Query117Args = ({
  ({
    IList<({String author, String text, double timestamp})> comments,
    Optional<({TasksId id, String name})> reviewer,
    Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral> status,
  })
  i,
});
typedef Query117Response = ({
  ({
    IList<({String author, String text, double timestamp})> comments,
    Optional<({TasksId id, String name})> reviewer,
    Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral> status,
  })
  i,
});
