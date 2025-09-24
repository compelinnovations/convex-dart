// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query113Args {
  final ({
    ({bool notifications, String theme}) settings,
    ({String email, String name}) user,
  })
  i;

  const Query113Args({required this.i});

  factory Query113Args.fromJson(Map<String, dynamic> json) {
    return Query113Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query113Args copyWith({
    ({
      ({bool notifications, String theme}) settings,
      ({String email, String name}) user,
    })?
    i,
  }) {
    return Query113Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query113Args && other.i == i;
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

final query113 = QueryOperation<Query113Args, Query113Response>(
  'tasks:query113',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query113Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'settings': encodeValue({
          'notifications': encodeValue(args.i.settings.notifications),
          'theme': encodeValue(args.i.settings.theme),
        }),
        'user': encodeValue({
          'email': encodeValue(args.i.user.email),
          'name': encodeValue(args.i.user.name),
        }),
      }),
    },
  );
}

Query113Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on511021) => (
      i: (on511021['i'] as IMap<String, dynamic>).then(
        (on415181) => (
          settings: (on415181['settings'] as IMap<String, dynamic>).then(
            (on54275) => (
              notifications: (on54275['notifications'] as bool),
              theme: (on54275['theme'] as String),
            ),
          ),
          user: (on415181['user'] as IMap<String, dynamic>).then(
            (on360963) => (
              email: (on360963['email'] as String),
              name: (on360963['name'] as String),
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query113Response = ({
  ({
    ({bool notifications, String theme}) settings,
    ({String email, String name}) user,
  })
  i,
});
