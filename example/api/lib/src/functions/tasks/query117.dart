// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query117 = QueryOperation<Query117Args, Query117Response>(
  'tasks:query117',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query117Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'comments': encodeValue(
          args.i.comments
              .map(
                (on137305) => encodeValue({
                  'author': encodeValue(on137305.author),
                  'text': encodeValue(on137305.text),
                  'timestamp': encodeValue(on137305.timestamp),
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
            (on767602) => encodeValue(on767602),
            (on210091) => encodeValue(on210091),
            (on918044) => encodeValue(on918044),
          ),
        ),
      }),
    },
  );
}

Query117Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on36734) => (
      i: (on36734['i'] as IMap<String, dynamic>).then(
        (on396339) => (
          comments: (on396339['comments'] as IList<dynamic>)
              .map(
                (on378530) => (on378530 as IMap<String, dynamic>).then(
                  (on703256) => (
                    author: (on703256['author'] as String),
                    text: (on703256['text'] as String),
                    timestamp: (on703256['timestamp'] as double),
                  ),
                ),
              )
              .toIList(),
          reviewer: on396339.containsKey('reviewer')
              ? Defined(
                  (on396339['reviewer'] as IMap<String, dynamic>).then(
                    (on198424) => (
                      id: TasksId(on198424['id'] as String),
                      name: (on198424['name'] as String),
                    ),
                  ),
                )
              : Undefined<({TasksId id, String name})>(),
          status: Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral>(() {
            final map = {
              'pending': $PendingLiteral(),
              'approved': $ApprovedLiteral(),
              'rejected': $RejectedLiteral(),
            };
            if (map.containsKey(on396339['status'])) {
              return map[on396339['status']];
            }
            throw Exception(
              (on396339['status'].toString() ?? "null") +
                  r" cannot be deserialized into a Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral>",
            );
          }()),
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
