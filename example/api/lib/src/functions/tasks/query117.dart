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
                (on235174) => encodeValue({
                  'author': encodeValue(on235174.author),
                  'text': encodeValue(on235174.text),
                  'timestamp': encodeValue(on235174.timestamp),
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
            (on372871) => encodeValue(on372871),
            (on400445) => encodeValue(on400445),
            (on877126) => encodeValue(on877126),
          ),
        ),
      }),
    },
  );
}

Query117Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on790525) => (
      i: (on790525['i'] as IMap<String, dynamic>).then(
        (on449283) => (
          comments: (on449283['comments'] as IList<dynamic>)
              .map(
                (on405862) => (on405862 as IMap<String, dynamic>).then(
                  (on68513) => (
                    author: (on68513['author'] as String),
                    text: (on68513['text'] as String),
                    timestamp: (on68513['timestamp'] as double),
                  ),
                ),
              )
              .toIList(),
          reviewer: on449283.containsKey('reviewer')
              ? Defined(
                  (on449283['reviewer'] as IMap<String, dynamic>).then(
                    (on336698) => (
                      id: TasksId(on336698['id'] as String),
                      name: (on336698['name'] as String),
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
            if (map.containsKey(on449283['status'])) {
              return map[on449283['status']];
            }
            throw Exception(
              (on449283['status'].toString() ?? "null") +
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
