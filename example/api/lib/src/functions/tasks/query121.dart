// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query121 = QueryOperation<Query121Args, Query121Response>(
  'tasks:query121',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query121Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i
            .map(
              (on595122) => encodeValue({
                'posts': encodeValue(
                  on595122.posts
                      .map(
                        (on116343) => encodeValue({
                          'content': encodeValue(
                            on116343.content.split(
                              (on352392) => encodeValue(on352392),
                              (on150720) => encodeValue({
                                'media': encodeValue(
                                  on150720.media
                                      .map((on668926) => encodeValue(on668926))
                                      .toIList(),
                                ),
                                'text': encodeValue(on150720.text),
                              }),
                            ),
                          ),
                          'id': encodeValue(on116343.id),
                          'likes': encodeValue(on116343.likes),
                          'tags': encodeValue(
                            on116343.tags
                                .map((on635240) => encodeValue(on635240))
                                .toIList(),
                          ),
                        }),
                      )
                      .toIList(),
                ),
                'user': encodeValue({
                  'preferences': encodeValue({
                    for (final on963633 in on595122.user.preferences.entries)
                      on963633.key: encodeValue(
                        encodeValue(
                          on963633.value.split(
                            (on749706) => encodeValue(on749706),
                            (on474856) => encodeValue(on474856),
                            (on99275) => encodeValue(on99275),
                          ),
                        ),
                      ),
                  }),
                  'profile': encodeValue({
                    if (on595122.user.profile.avatar.isDefined)
                      'avatar': encodeValue(
                        on595122.user.profile.avatar.asDefined().value,
                      ),
                    'name': encodeValue(on595122.user.profile.name),
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
    (on945631) => (
      i: (on945631['i'] as IList<dynamic>)
          .map(
            (on191635) => (on191635 as IMap<String, dynamic>).then(
              (on812600) => (
                posts: (on812600['posts'] as IList<dynamic>)
                    .map(
                      (on670485) => (on670485 as IMap<String, dynamic>).then(
                        (on858852) => (
                          content:
                              Union2<
                                String,
                                ({IList<String> media, String text})
                              >(() {
                                try {
                                  return (on858852['content'] as String);
                                } catch (e) {}

                                try {
                                  return (on858852['content']
                                          as IMap<String, dynamic>)
                                      .then(
                                        (on268631) => (
                                          media:
                                              (on268631['media']
                                                      as IList<dynamic>)
                                                  .map(
                                                    (on666949) =>
                                                        (on666949 as String),
                                                  )
                                                  .toIList(),
                                          text: (on268631['text'] as String),
                                        ),
                                      );
                                } catch (e) {}

                                throw Exception(
                                  (on858852['content'].toString() ?? "null") +
                                      r" cannot be deserialized into a Union2<String, ({IList<String> media,String text})>",
                                );
                              }()),
                          id: (on858852['id'] as String),
                          likes: (on858852['likes'] as double),
                          tags: (on858852['tags'] as IList<dynamic>)
                              .map((on305771) => (on305771 as String))
                              .toIList(),
                        ),
                      ),
                    )
                    .toIList(),
                user: (on812600['user'] as IMap<String, dynamic>).then(
                  (on873066) => (
                    preferences:
                        (on873066['preferences'] as IMap<String, dynamic>).map(
                          (on174241, on203605) => MapEntry(
                            on174241,
                            Union3<String, double, bool>(() {
                              try {
                                return (on203605 as String);
                              } catch (e) {}

                              try {
                                return (on203605 as double);
                              } catch (e) {}

                              try {
                                return (on203605 as bool);
                              } catch (e) {}

                              throw Exception(
                                (on203605.toString() ?? "null") +
                                    r" cannot be deserialized into a Union3<String, double, bool>",
                              );
                            }()),
                          ),
                        ),
                    profile: (on873066['profile'] as IMap<String, dynamic>)
                        .then(
                          (on226812) => (
                            avatar: on226812.containsKey('avatar')
                                ? Defined((on226812['avatar'] as String))
                                : Undefined<String>(),
                            name: (on226812['name'] as String),
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
