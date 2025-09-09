// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query124Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'api': encodeValue({
          'endpoints': encodeValue({
            for (final on257124 in args.i.api.endpoints.entries)
              on257124.key: encodeValue(
                encodeValue({
                  if (on257124.value.auth.isDefined)
                    'auth': encodeValue(on257124.value.auth.asDefined().value),
                  'method': encodeValue(
                    on257124.value.method.split(
                      (on360957) => encodeValue(on360957),
                      (on42602) => encodeValue(on42602),
                      (on339112) => encodeValue(on339112),
                      (on915957) => encodeValue(on915957),
                    ),
                  ),
                  'params': encodeValue({
                    for (final on818915 in on257124.value.params.entries)
                      on818915.key: encodeValue(
                        encodeValue(
                          on818915.value.split(
                            (on524186) => encodeValue(on524186),
                            (on607444) => encodeValue(on607444),
                            (on778419) => encodeValue(on778419),
                          ),
                        ),
                      ),
                  }),
                  'path': encodeValue(on257124.value.path),
                  'response': encodeValue(on257124.value.response),
                }),
              ),
          }),
          'rateLimit': encodeValue({
            'requests': encodeValue(args.i.api.rateLimit.requests),
            'window': encodeValue(
              args.i.api.rateLimit.window.split(
                (on482249) => encodeValue(on482249),
                (on545106) => encodeValue(on545106),
                (on847991) => encodeValue(on847991),
              ),
            ),
          }),
        }),
        'database': encodeValue({
          'tables': encodeValue({
            for (final on961696 in args.i.database.tables.entries)
              on961696.key: encodeValue(
                encodeValue({
                  'indexes': encodeValue(
                    on961696.value.indexes
                        .map(
                          (on171790) => encodeValue({
                            'fields': encodeValue(
                              on171790.fields
                                  .map((on124603) => encodeValue(on124603))
                                  .toIList(),
                            ),
                            'name': encodeValue(on171790.name),
                            'unique': encodeValue(on171790.unique),
                          }),
                        )
                        .toIList(),
                  ),
                  'schema': encodeValue({
                    for (final on960864 in on961696.value.schema.entries)
                      on960864.key: encodeValue(
                        encodeValue(
                          on960864.value.split(
                            (on49003) => encodeValue(on49003),
                            (on713522) => encodeValue(on713522),
                            (on830268) => encodeValue(on830268),
                            (on680900) => encodeValue(on680900),
                          ),
                        ),
                      ),
                  }),
                }),
              ),
          }),
        }),
      }),
    },
  );
}

Query124Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on434901) => (
      i: (on434901['i'] as IMap<String, dynamic>).then(
        (on768120) => (
          api: (on768120['api'] as IMap<String, dynamic>).then(
            (on980052) => (
              endpoints: (on980052['endpoints'] as IMap<String, dynamic>).map(
                (on508506, on12607) => MapEntry(
                  on508506,
                  (on12607 as IMap<String, dynamic>).then(
                    (on898707) => (
                      auth: on898707.containsKey('auth')
                          ? Defined((on898707['auth'] as bool))
                          : Undefined<bool>(),
                      method:
                          Union4<
                            $GETLiteral,
                            $POSTLiteral,
                            $PUTLiteral,
                            $DELETELiteral
                          >(on898707['method']),
                      params: (on898707['params'] as IMap<String, dynamic>).map(
                        (on666580, on624870) => MapEntry(
                          on666580,
                          Union3<String, double, bool>(on624870),
                        ),
                      ),
                      path: (on898707['path'] as String),
                      response: on898707['response'],
                    ),
                  ),
                ),
              ),
              rateLimit: (on980052['rateLimit'] as IMap<String, dynamic>).then(
                (on416010) => (
                  requests: (on416010['requests'] as double),
                  window: Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>(
                    on416010['window'],
                  ),
                ),
              ),
            ),
          ),
          database: (on768120['database'] as IMap<String, dynamic>).then(
            (on143794) => (
              tables: (on143794['tables'] as IMap<String, dynamic>).map(
                (on399093, on757591) => MapEntry(
                  on399093,
                  (on757591 as IMap<String, dynamic>).then(
                    (on332456) => (
                      indexes: (on332456['indexes'] as IList<dynamic>)
                          .map(
                            (
                              on465700,
                            ) => (on465700 as IMap<String, dynamic>).then(
                              (on366626) => (
                                fields: (on366626['fields'] as IList<dynamic>)
                                    .map((on320613) => (on320613 as String))
                                    .toIList(),
                                name: (on366626['name'] as String),
                                unique: (on366626['unique'] as bool),
                              ),
                            ),
                          )
                          .toIList(),
                      schema: (on332456['schema'] as IMap<String, dynamic>).map(
                        (on484315, on997349) => MapEntry(
                          on484315,
                          Union4<
                            $StringLiteral,
                            $NumberLiteral,
                            $BooleanLiteral,
                            $DateLiteral
                          >(on997349),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query124Args = ({
  ({
    ({
      IMap<
        String,
        ({
          Optional<bool> auth,
          Union4<$GETLiteral, $POSTLiteral, $PUTLiteral, $DELETELiteral> method,
          IMap<String, Union3<String, double, bool>> params,
          String path,
          dynamic response,
        })
      >
      endpoints,
      ({
        double requests,
        Union3<$MinuteLiteral, $HourLiteral, $DayLiteral> window,
      })
      rateLimit,
    })
    api,
    ({
      IMap<
        String,
        ({
          IList<({IList<String> fields, String name, bool unique})> indexes,
          IMap<
            String,
            Union4<
              $StringLiteral,
              $NumberLiteral,
              $BooleanLiteral,
              $DateLiteral
            >
          >
          schema,
        })
      >
      tables,
    })
    database,
  })
  i,
});
typedef Query124Response = ({
  ({
    ({
      IMap<
        String,
        ({
          Optional<bool> auth,
          Union4<$GETLiteral, $POSTLiteral, $PUTLiteral, $DELETELiteral> method,
          IMap<String, Union3<String, double, bool>> params,
          String path,
          dynamic response,
        })
      >
      endpoints,
      ({
        double requests,
        Union3<$MinuteLiteral, $HourLiteral, $DayLiteral> window,
      })
      rateLimit,
    })
    api,
    ({
      IMap<
        String,
        ({
          IList<({IList<String> fields, String name, bool unique})> indexes,
          IMap<
            String,
            Union4<
              $StringLiteral,
              $NumberLiteral,
              $BooleanLiteral,
              $DateLiteral
            >
          >
          schema,
        })
      >
      tables,
    })
    database,
  })
  i,
});
