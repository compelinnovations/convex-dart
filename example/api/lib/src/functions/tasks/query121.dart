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
              (on101446) => encodeValue({
                'posts': encodeValue(
                  on101446.posts
                      .map(
                        (on601151) => encodeValue({
                          'content': encodeValue(
                            on601151.content.split(
                              (on548809) => encodeValue(on548809),
                              (on262886) => encodeValue({
                                'media': encodeValue(
                                  on262886.media
                                      .map((on998939) => encodeValue(on998939))
                                      .toIList(),
                                ),
                                'text': encodeValue(on262886.text),
                              }),
                            ),
                          ),
                          'id': encodeValue(on601151.id),
                          'likes': encodeValue(on601151.likes),
                          'tags': encodeValue(
                            on601151.tags
                                .map((on25393) => encodeValue(on25393))
                                .toIList(),
                          ),
                        }),
                      )
                      .toIList(),
                ),
                'user': encodeValue({
                  'preferences': encodeValue({
                    for (final on608370 in on101446.user.preferences.entries)
                      on608370.key: encodeValue(
                        encodeValue(
                          on608370.value.split(
                            (on328511) => encodeValue(on328511),
                            (on387939) => encodeValue(on387939),
                            (on552295) => encodeValue(on552295),
                          ),
                        ),
                      ),
                  }),
                  'profile': encodeValue({
                    if (on101446.user.profile.avatar.isDefined)
                      'avatar': encodeValue(
                        on101446.user.profile.avatar.asDefined().value,
                      ),
                    'name': encodeValue(on101446.user.profile.name),
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
    (on370101) => (
      i: (on370101['i'] as IList<dynamic>)
          .map(
            (on498062) => (on498062 as IMap<String, dynamic>).then(
              (on321249) => (
                posts: (on321249['posts'] as IList<dynamic>)
                    .map(
                      (on269623) => (on269623 as IMap<String, dynamic>).then(
                        (on377967) => (
                          content:
                              Union2<
                                String,
                                ({IList<String> media, String text})
                              >(() {
                                try {
                                  return (on377967['content'] as String);
                                } catch (e) {}

                                try {
                                  return (on377967['content']
                                          as IMap<String, dynamic>)
                                      .then(
                                        (on353009) => (
                                          media:
                                              (on353009['media']
                                                      as IList<dynamic>)
                                                  .map(
                                                    (on320873) =>
                                                        (on320873 as String),
                                                  )
                                                  .toIList(),
                                          text: (on353009['text'] as String),
                                        ),
                                      );
                                } catch (e) {}

                                throw Exception(
                                  (on377967['content'].toString() ?? "null") +
                                      r" cannot be deserialized into a Union2<String, ({IList<String> media,String text})>",
                                );
                              }()),
                          id: (on377967['id'] as String),
                          likes: (on377967['likes'] as double),
                          tags: (on377967['tags'] as IList<dynamic>)
                              .map((on338196) => (on338196 as String))
                              .toIList(),
                        ),
                      ),
                    )
                    .toIList(),
                user: (on321249['user'] as IMap<String, dynamic>).then(
                  (on583494) => (
                    preferences:
                        (on583494['preferences'] as IMap<String, dynamic>).map(
                          (on234295, on845885) => MapEntry(
                            on234295,
                            Union3<String, double, bool>(() {
                              try {
                                return (on845885 as String);
                              } catch (e) {}

                              try {
                                return (on845885 as double);
                              } catch (e) {}

                              try {
                                return (on845885 as bool);
                              } catch (e) {}

                              throw Exception(
                                (on845885.toString() ?? "null") +
                                    r" cannot be deserialized into a Union3<String, double, bool>",
                              );
                            }()),
                          ),
                        ),
                    profile: (on583494['profile'] as IMap<String, dynamic>)
                        .then(
                          (on702690) => (
                            avatar: on702690.containsKey('avatar')
                                ? Defined((on702690['avatar'] as String))
                                : Undefined<String>(),
                            name: (on702690['name'] as String),
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
