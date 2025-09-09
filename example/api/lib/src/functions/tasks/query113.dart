// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

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
    (on65979) => (
      i: (on65979['i'] as IMap<String, dynamic>).then(
        (on845735) => (
          settings: (on845735['settings'] as IMap<String, dynamic>).then(
            (on67992) => (
              notifications: (on67992['notifications'] as bool),
              theme: (on67992['theme'] as String),
            ),
          ),
          user: (on845735['user'] as IMap<String, dynamic>).then(
            (on548509) => (
              email: (on548509['email'] as String),
              name: (on548509['name'] as String),
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query113Args = ({
  ({
    ({bool notifications, String theme}) settings,
    ({String email, String name}) user,
  })
  i,
});
typedef Query113Response = ({
  ({
    ({bool notifications, String theme}) settings,
    ({String email, String name}) user,
  })
  i,
});
