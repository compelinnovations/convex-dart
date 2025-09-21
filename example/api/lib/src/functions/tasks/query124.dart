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
            for (final on701124 in args.i.api.endpoints.entries)
              on701124.key: encodeValue(
                encodeValue({
                  if (on701124.value.auth.isDefined)
                    'auth': encodeValue(on701124.value.auth.asDefined().value),
                  'method': encodeValue(
                    on701124.value.method.split(
                      (on561686) => encodeValue(on561686),
                      (on489574) => encodeValue(on489574),
                      (on988151) => encodeValue(on988151),
                      (on658366) => encodeValue(on658366),
                    ),
                  ),
                  'params': encodeValue({
                    for (final on706880 in on701124.value.params.entries)
                      on706880.key: encodeValue(
                        encodeValue(
                          on706880.value.split(
                            (on448001) => encodeValue(on448001),
                            (on695830) => encodeValue(on695830),
                            (on535240) => encodeValue(on535240),
                          ),
                        ),
                      ),
                  }),
                  'path': encodeValue(on701124.value.path),
                  'response': encodeValue(on701124.value.response),
                }),
              ),
          }),
          'rateLimit': encodeValue({
            'requests': encodeValue(args.i.api.rateLimit.requests),
            'window': encodeValue(
              args.i.api.rateLimit.window.split(
                (on997429) => encodeValue(on997429),
                (on236917) => encodeValue(on236917),
                (on474535) => encodeValue(on474535),
              ),
            ),
          }),
        }),
        'database': encodeValue({
          'tables': encodeValue({
            for (final on290625 in args.i.database.tables.entries)
              on290625.key: encodeValue(
                encodeValue({
                  'indexes': encodeValue(
                    on290625.value.indexes
                        .map(
                          (on981047) => encodeValue({
                            'fields': encodeValue(
                              on981047.fields
                                  .map((on47981) => encodeValue(on47981))
                                  .toIList(),
                            ),
                            'name': encodeValue(on981047.name),
                            'unique': encodeValue(on981047.unique),
                          }),
                        )
                        .toIList(),
                  ),
                  'schema': encodeValue({
                    for (final on77160 in on290625.value.schema.entries)
                      on77160.key: encodeValue(
                        encodeValue(
                          on77160.value.split(
                            (on998150) => encodeValue(on998150),
                            (on803467) => encodeValue(on803467),
                            (on225785) => encodeValue(on225785),
                            (on429750) => encodeValue(on429750),
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
    (on101293) => (
      i: (on101293['i'] as IMap<String, dynamic>).then(
        (on506185) => (
          api: (on506185['api'] as IMap<String, dynamic>).then(
            (on635922) => (
              endpoints: (on635922['endpoints'] as IMap<String, dynamic>).map(
                (on301463, on422992) => MapEntry(
                  on301463,
                  (on422992 as IMap<String, dynamic>).then(
                    (on229427) => (
                      auth: on229427.containsKey('auth')
                          ? Defined((on229427['auth'] as bool))
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
                            if (map.containsKey(on229427['method'])) {
                              return map[on229427['method']];
                            }
                            throw Exception(
                              (on229427['method'].toString() ?? "null") +
                                  r" cannot be deserialized into a Union4<$GETLiteral, $POSTLiteral, $PUTLiteral, $DELETELiteral>",
                            );
                          }()),
                      params: (on229427['params'] as IMap<String, dynamic>).map(
                        (on643450, on67681) => MapEntry(
                          on643450,
                          Union3<String, double, bool>(() {
                            try {
                              return (on67681 as String);
                            } catch (e) {}

                            try {
                              return (on67681 as double);
                            } catch (e) {}

                            try {
                              return (on67681 as bool);
                            } catch (e) {}

                            throw Exception(
                              (on67681.toString() ?? "null") +
                                  r" cannot be deserialized into a Union3<String, double, bool>",
                            );
                          }()),
                        ),
                      ),
                      path: (on229427['path'] as String),
                      response: on229427['response'],
                    ),
                  ),
                ),
              ),
              rateLimit: (on635922['rateLimit'] as IMap<String, dynamic>).then(
                (on193000) => (
                  requests: (on193000['requests'] as double),
                  window: Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>(() {
                    final map = {
                      'minute': $MinuteLiteral(),
                      'hour': $HourLiteral(),
                      'day': $DayLiteral(),
                    };
                    if (map.containsKey(on193000['window'])) {
                      return map[on193000['window']];
                    }
                    throw Exception(
                      (on193000['window'].toString() ?? "null") +
                          r" cannot be deserialized into a Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>",
                    );
                  }()),
                ),
              ),
            ),
          ),
          database: (on506185['database'] as IMap<String, dynamic>).then(
            (on377729) => (
              tables: (on377729['tables'] as IMap<String, dynamic>).map(
                (on397922, on769628) => MapEntry(
                  on397922,
                  (on769628 as IMap<String, dynamic>).then(
                    (on458280) => (
                      indexes: (on458280['indexes'] as IList<dynamic>)
                          .map(
                            (
                              on74383,
                            ) => (on74383 as IMap<String, dynamic>).then(
                              (on584942) => (
                                fields: (on584942['fields'] as IList<dynamic>)
                                    .map((on28660) => (on28660 as String))
                                    .toIList(),
                                name: (on584942['name'] as String),
                                unique: (on584942['unique'] as bool),
                              ),
                            ),
                          )
                          .toIList(),
                      schema: (on458280['schema'] as IMap<String, dynamic>).map(
                        (on974277, on842622) => MapEntry(
                          on974277,
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
                            if (map.containsKey(on842622)) {
                              return map[on842622];
                            }
                            throw Exception(
                              (on842622.toString() ?? "null") +
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
