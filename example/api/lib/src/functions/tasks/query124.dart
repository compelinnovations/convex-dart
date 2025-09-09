// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query124 = QueryOperation<Query124Args, Query124Response>(
  'tasks:query124',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query124Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'api': encodeValue({
          'endpoints': encodeValue({
            for (final on269120 in args.i.api.endpoints.entries)
              on269120.key: encodeValue(
                encodeValue({
                  if (on269120.value.auth.isDefined)
                    'auth': encodeValue(on269120.value.auth.asDefined().value),
                  'method': encodeValue(
                    on269120.value.method.split(
                      (on635019) => encodeValue(on635019),
                      (on848107) => encodeValue(on848107),
                      (on891509) => encodeValue(on891509),
                      (on143494) => encodeValue(on143494),
                    ),
                  ),
                  'params': encodeValue({
                    for (final on838891 in on269120.value.params.entries)
                      on838891.key: encodeValue(
                        encodeValue(
                          on838891.value.split(
                            (on419898) => encodeValue(on419898),
                            (on721025) => encodeValue(on721025),
                            (on358190) => encodeValue(on358190),
                          ),
                        ),
                      ),
                  }),
                  'path': encodeValue(on269120.value.path),
                  'response': encodeValue(on269120.value.response),
                }),
              ),
          }),
          'rateLimit': encodeValue({
            'requests': encodeValue(args.i.api.rateLimit.requests),
            'window': encodeValue(
              args.i.api.rateLimit.window.split(
                (on34841) => encodeValue(on34841),
                (on559284) => encodeValue(on559284),
                (on820633) => encodeValue(on820633),
              ),
            ),
          }),
        }),
        'database': encodeValue({
          'tables': encodeValue({
            for (final on64798 in args.i.database.tables.entries)
              on64798.key: encodeValue(
                encodeValue({
                  'indexes': encodeValue(
                    on64798.value.indexes
                        .map(
                          (on535467) => encodeValue({
                            'fields': encodeValue(
                              on535467.fields
                                  .map((on3231) => encodeValue(on3231))
                                  .toIList(),
                            ),
                            'name': encodeValue(on535467.name),
                            'unique': encodeValue(on535467.unique),
                          }),
                        )
                        .toIList(),
                  ),
                  'schema': encodeValue({
                    for (final on497219 in on64798.value.schema.entries)
                      on497219.key: encodeValue(
                        encodeValue(
                          on497219.value.split(
                            (on962468) => encodeValue(on962468),
                            (on202467) => encodeValue(on202467),
                            (on550534) => encodeValue(on550534),
                            (on365902) => encodeValue(on365902),
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
    (on478641) => (
      i: (on478641['i'] as IMap<String, dynamic>).then(
        (on792438) => (
          api: (on792438['api'] as IMap<String, dynamic>).then(
            (on870126) => (
              endpoints: (on870126['endpoints'] as IMap<String, dynamic>).map(
                (on730970, on743133) => MapEntry(
                  on730970,
                  (on743133 as IMap<String, dynamic>).then(
                    (on343527) => (
                      auth: on343527.containsKey('auth')
                          ? Defined((on343527['auth'] as bool))
                          : Undefined<bool>(),
                      method:
                          Union4<
                            $GETLiteral,
                            $POSTLiteral,
                            $PUTLiteral,
                            $DELETELiteral
                          >(() {
                            final map = {
                              'GET': $GETLiteral(),
                              'POST': $POSTLiteral(),
                              'PUT': $PUTLiteral(),
                              'DELETE': $DELETELiteral(),
                            };
                            if (map.containsKey(on343527['method'])) {
                              return map[on343527['method']];
                            }
                            throw Exception(
                              (on343527['method'].toString() ?? "null") +
                                  r" cannot be deserialized into a Union4<$GETLiteral, $POSTLiteral, $PUTLiteral, $DELETELiteral>",
                            );
                          }()),
                      params: (on343527['params'] as IMap<String, dynamic>).map(
                        (on35927, on844293) => MapEntry(
                          on35927,
                          Union3<String, double, bool>(() {
                            try {
                              return (on844293 as String);
                            } catch (e) {}

                            try {
                              return (on844293 as double);
                            } catch (e) {}

                            try {
                              return (on844293 as bool);
                            } catch (e) {}

                            throw Exception(
                              (on844293.toString() ?? "null") +
                                  r" cannot be deserialized into a Union3<String, double, bool>",
                            );
                          }()),
                        ),
                      ),
                      path: (on343527['path'] as String),
                      response: on343527['response'],
                    ),
                  ),
                ),
              ),
              rateLimit: (on870126['rateLimit'] as IMap<String, dynamic>).then(
                (on937353) => (
                  requests: (on937353['requests'] as double),
                  window: Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>(() {
                    final map = {
                      'minute': $MinuteLiteral(),
                      'hour': $HourLiteral(),
                      'day': $DayLiteral(),
                    };
                    if (map.containsKey(on937353['window'])) {
                      return map[on937353['window']];
                    }
                    throw Exception(
                      (on937353['window'].toString() ?? "null") +
                          r" cannot be deserialized into a Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>",
                    );
                  }()),
                ),
              ),
            ),
          ),
          database: (on792438['database'] as IMap<String, dynamic>).then(
            (on782495) => (
              tables: (on782495['tables'] as IMap<String, dynamic>).map(
                (on907458, on613928) => MapEntry(
                  on907458,
                  (on613928 as IMap<String, dynamic>).then(
                    (on486438) => (
                      indexes: (on486438['indexes'] as IList<dynamic>)
                          .map(
                            (
                              on312317,
                            ) => (on312317 as IMap<String, dynamic>).then(
                              (on239270) => (
                                fields: (on239270['fields'] as IList<dynamic>)
                                    .map((on444565) => (on444565 as String))
                                    .toIList(),
                                name: (on239270['name'] as String),
                                unique: (on239270['unique'] as bool),
                              ),
                            ),
                          )
                          .toIList(),
                      schema: (on486438['schema'] as IMap<String, dynamic>).map(
                        (on819214, on73732) => MapEntry(
                          on819214,
                          Union4<
                            $StringLiteral,
                            $NumberLiteral,
                            $BooleanLiteral,
                            $DateLiteral
                          >(() {
                            final map = {
                              'string': $StringLiteral(),
                              'number': $NumberLiteral(),
                              'boolean': $BooleanLiteral(),
                              'date': $DateLiteral(),
                            };
                            if (map.containsKey(on73732)) {
                              return map[on73732];
                            }
                            throw Exception(
                              (on73732.toString() ?? "null") +
                                  r" cannot be deserialized into a Union4<$StringLiteral, $NumberLiteral, $BooleanLiteral, $DateLiteral>",
                            );
                          }()),
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
