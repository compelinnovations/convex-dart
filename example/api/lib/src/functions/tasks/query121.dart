// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query121Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i
            .map(
              (on728271) => encodeValue({
                'posts': encodeValue(
                  on728271.posts
                      .map(
                        (on432154) => encodeValue({
                          'content': encodeValue(
                            on432154.content.split(
                              (on222609) => encodeValue(on222609),
                              (on830334) => encodeValue({
                                'media': encodeValue(
                                  on830334.media
                                      .map((on782782) => encodeValue(on782782))
                                      .toIList(),
                                ),
                                'text': encodeValue(on830334.text),
                              }),
                            ),
                          ),
                          'id': encodeValue(on432154.id),
                          'likes': encodeValue(on432154.likes),
                          'tags': encodeValue(
                            on432154.tags
                                .map((on70568) => encodeValue(on70568))
                                .toIList(),
                          ),
                        }),
                      )
                      .toIList(),
                ),
                'user': encodeValue({
                  'preferences': encodeValue({
                    for (final on912236 in on728271.user.preferences.entries)
                      on912236.key: encodeValue(
                        encodeValue(
                          on912236.value.split(
                            (on322362) => encodeValue(on322362),
                            (on79928) => encodeValue(on79928),
                            (on831810) => encodeValue(on831810),
                          ),
                        ),
                      ),
                  }),
                  'profile': encodeValue({
                    if (on728271.user.profile.avatar.isDefined)
                      'avatar': encodeValue(
                        on728271.user.profile.avatar.asDefined().value,
                      ),
                    'name': encodeValue(on728271.user.profile.name),
                  }),
                }),
              }),
            )
            .toIList(),
      ),
    },
  );
}

Query121Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on40206) => (
      i: (on40206['i'] as IList<dynamic>)
          .map(
            (on878112) => (on878112 as IMap<String, dynamic>).then(
              (on591573) => (
                posts: (on591573['posts'] as IList<dynamic>)
                    .map(
                      (on336982) => (on336982 as IMap<String, dynamic>).then(
                        (on486891) => (
                          content:
                              Union2<
                                String,
                                ({IList<String> media, String text})
                              >(on486891['content']),
                          id: (on486891['id'] as String),
                          likes: (on486891['likes'] as double),
                          tags: (on486891['tags'] as IList<dynamic>)
                              .map((on285222) => (on285222 as String))
                              .toIList(),
                        ),
                      ),
                    )
                    .toIList(),
                user: (on591573['user'] as IMap<String, dynamic>).then(
                  (on950419) => (
                    preferences:
                        (on950419['preferences'] as IMap<String, dynamic>).map(
                          (on434964, on800050) => MapEntry(
                            on434964,
                            Union3<String, double, bool>(on800050),
                          ),
                        ),
                    profile: (on950419['profile'] as IMap<String, dynamic>)
                        .then(
                          (on687774) => (
                            avatar: on687774.containsKey('avatar')
                                ? Defined((on687774['avatar'] as String))
                                : Undefined<String>(),
                            name: (on687774['name'] as String),
                          ),
                        ),
                  ),
                ),
              ),
            ),
          )
          .toIList(),
    ),
  );
}

typedef Query121Args = ({
  IList<
    ({
      IList<
        ({
          Union2<String, ({IList<String> media, String text})> content,
          String id,
          double likes,
          IList<String> tags,
        })
      >
      posts,
      ({
        IMap<String, Union3<String, double, bool>> preferences,
        ({Optional<String> avatar, String name}) profile,
      })
      user,
    })
  >
  i,
});
typedef Query121Response = ({
  IList<
    ({
      IList<
        ({
          Union2<String, ({IList<String> media, String text})> content,
          String id,
          double likes,
          IList<String> tags,
        })
      >
      posts,
      ({
        IMap<String, Union3<String, double, bool>> preferences,
        ({Optional<String> avatar, String name}) profile,
      })
      user,
    })
  >
  i,
});
