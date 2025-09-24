// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query117Args {
  final ({
    IList<({String author, String text, double timestamp})> comments,
    Optional<({TasksId id, String name})> reviewer,
    Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral> status,
  })
  i;

  const Query117Args({required this.i});

  factory Query117Args.fromJson(Map<String, dynamic> json) {
    return Query117Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query117Args copyWith({
    ({
      IList<({String author, String text, double timestamp})> comments,
      Optional<({TasksId id, String name})> reviewer,
      Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral> status,
    })?
    i,
  }) {
    return Query117Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query117Args && other.i == i;
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
                (on698944) => encodeValue({
                  'author': encodeValue(on698944.author),
                  'text': encodeValue(on698944.text),
                  'timestamp': encodeValue(on698944.timestamp),
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
            (on837153) => encodeValue(on837153),
            (on898146) => encodeValue(on898146),
            (on623926) => encodeValue(on623926),
          ),
        ),
      }),
    },
  );
}

Query117Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on801541) => (
      i: (on801541['i'] as IMap<String, dynamic>).then(
        (on32405) => (
          comments: (on32405['comments'] as IList<dynamic>)
              .map(
                (on822476) => (on822476 as IMap<String, dynamic>).then(
                  (on999573) => (
                    author: (on999573['author'] as String),
                    text: (on999573['text'] as String),
                    timestamp: (on999573['timestamp'] as double),
                  ),
                ),
              )
              .toIList(),
          reviewer: on32405.containsKey('reviewer')
              ? Defined(
                  (on32405['reviewer'] as IMap<String, dynamic>).then(
                    (on359807) => (
                      id: TasksId(on359807['id'] as String),
                      name: (on359807['name'] as String),
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
            if (map.containsKey(on32405['status'])) {
              return map[on32405['status']];
            }
            throw Exception(
              (on32405['status'].toString() ?? "null") +
                  r" cannot be deserialized into a Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral>",
            );
          }()),
        ),
      ),
    ),
  );
}

typedef Query117Response = ({
  ({
    IList<({String author, String text, double timestamp})> comments,
    Optional<({TasksId id, String name})> reviewer,
    Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral> status,
  })
  i,
});
