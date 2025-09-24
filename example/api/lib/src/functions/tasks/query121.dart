// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query121Args {
  final IList<
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
  i;

  const Query121Args({required this.i});

  factory Query121Args.fromJson(Map<String, dynamic> json) {
    return Query121Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query121Args copyWith({
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
    >?
    i,
  }) {
    return Query121Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query121Args && other.i == i;
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
              (on313545) => encodeValue({
                'posts': encodeValue(
                  on313545.posts
                      .map(
                        (on693436) => encodeValue({
                          'content': encodeValue(
                            on693436.content.split(
                              (on604418) => encodeValue(on604418),
                              (on476088) => encodeValue({
                                'media': encodeValue(
                                  on476088.media
                                      .map((on446626) => encodeValue(on446626))
                                      .toIList(),
                                ),
                                'text': encodeValue(on476088.text),
                              }),
                            ),
                          ),
                          'id': encodeValue(on693436.id),
                          'likes': encodeValue(on693436.likes),
                          'tags': encodeValue(
                            on693436.tags
                                .map((on721745) => encodeValue(on721745))
                                .toIList(),
                          ),
                        }),
                      )
                      .toIList(),
                ),
                'user': encodeValue({
                  'preferences': encodeValue({
                    for (final on989881 in on313545.user.preferences.entries)
                      on989881.key: encodeValue(
                        encodeValue(
                          on989881.value.split(
                            (on191257) => encodeValue(on191257),
                            (on519954) => encodeValue(on519954),
                            (on370814) => encodeValue(on370814),
                          ),
                        ),
                      ),
                  }),
                  'profile': encodeValue({
                    if (on313545.user.profile.avatar.isDefined)
                      'avatar': encodeValue(
                        on313545.user.profile.avatar.asDefined().value,
                      ),
                    'name': encodeValue(on313545.user.profile.name),
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
    (on16085) => (
      i: (on16085['i'] as IList<dynamic>)
          .map(
            (on739620) => (on739620 as IMap<String, dynamic>).then(
              (on52408) => (
                posts: (on52408['posts'] as IList<dynamic>)
                    .map(
                      (on96779) => (on96779 as IMap<String, dynamic>).then(
                        (on992740) => (
                          content:
                              Union2<
                                String,
                                ({IList<String> media, String text})
                              >(() {
                                try {
                                  return (on992740['content'] as String);
                                } catch (e) {}

                                try {
                                  return (on992740['content']
                                          as IMap<String, dynamic>)
                                      .then(
                                        (on688667) => (
                                          media:
                                              (on688667['media']
                                                      as IList<dynamic>)
                                                  .map(
                                                    (on174446) =>
                                                        (on174446 as String),
                                                  )
                                                  .toIList(),
                                          text: (on688667['text'] as String),
                                        ),
                                      );
                                } catch (e) {}

                                throw Exception(
                                  (on992740['content'].toString() ?? "null") +
                                      r" cannot be deserialized into a Union2<String, ({IList<String> media,String text})>",
                                );
                              }()),
                          id: (on992740['id'] as String),
                          likes: (on992740['likes'] as double),
                          tags: (on992740['tags'] as IList<dynamic>)
                              .map((on865503) => (on865503 as String))
                              .toIList(),
                        ),
                      ),
                    )
                    .toIList(),
                user: (on52408['user'] as IMap<String, dynamic>).then(
                  (on273905) => (
                    preferences:
                        (on273905['preferences'] as IMap<String, dynamic>).map(
                          (on931585, on854394) => MapEntry(
                            on931585,
                            Union3<String, double, bool>(() {
                              try {
                                return (on854394 as String);
                              } catch (e) {}

                              try {
                                return (on854394 as double);
                              } catch (e) {}

                              try {
                                return (on854394 as bool);
                              } catch (e) {}

                              throw Exception(
                                (on854394.toString() ?? "null") +
                                    r" cannot be deserialized into a Union3<String, double, bool>",
                              );
                            }()),
                          ),
                        ),
                    profile: (on273905['profile'] as IMap<String, dynamic>)
                        .then(
                          (on711260) => (
                            avatar: on711260.containsKey('avatar')
                                ? Defined((on711260['avatar'] as String))
                                : Undefined<String>(),
                            name: (on711260['name'] as String),
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
