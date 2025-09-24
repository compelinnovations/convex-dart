// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class Query124Args {
  final ({
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
  i;

  const Query124Args({required this.i});

  factory Query124Args.fromJson(Map<String, dynamic> json) {
    return Query124Args(i: json['i']);
  }

  Map<String, dynamic> toJson() {
    return {'i': i};
  }

  Query124Args copyWith({
    ({
      ({
        IMap<
          String,
          ({
            Optional<bool> auth,
            Union4<$GETLiteral, $POSTLiteral, $PUTLiteral, $DELETELiteral>
            method,
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
    })?
    i,
  }) {
    return Query124Args(i: i ?? this.i);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Query124Args && other.i == i;
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
            for (final on899395 in args.i.api.endpoints.entries)
              on899395.key: encodeValue(
                encodeValue({
                  if (on899395.value.auth.isDefined)
                    'auth': encodeValue(on899395.value.auth.asDefined().value),
                  'method': encodeValue(
                    on899395.value.method.split(
                      (on476563) => encodeValue(on476563),
                      (on756344) => encodeValue(on756344),
                      (on554159) => encodeValue(on554159),
                      (on416422) => encodeValue(on416422),
                    ),
                  ),
                  'params': encodeValue({
                    for (final on262887 in on899395.value.params.entries)
                      on262887.key: encodeValue(
                        encodeValue(
                          on262887.value.split(
                            (on243321) => encodeValue(on243321),
                            (on550944) => encodeValue(on550944),
                            (on624670) => encodeValue(on624670),
                          ),
                        ),
                      ),
                  }),
                  'path': encodeValue(on899395.value.path),
                  'response': encodeValue(on899395.value.response),
                }),
              ),
          }),
          'rateLimit': encodeValue({
            'requests': encodeValue(args.i.api.rateLimit.requests),
            'window': encodeValue(
              args.i.api.rateLimit.window.split(
                (on693625) => encodeValue(on693625),
                (on502925) => encodeValue(on502925),
                (on680779) => encodeValue(on680779),
              ),
            ),
          }),
        }),
        'database': encodeValue({
          'tables': encodeValue({
            for (final on791184 in args.i.database.tables.entries)
              on791184.key: encodeValue(
                encodeValue({
                  'indexes': encodeValue(
                    on791184.value.indexes
                        .map(
                          (on607227) => encodeValue({
                            'fields': encodeValue(
                              on607227.fields
                                  .map((on574179) => encodeValue(on574179))
                                  .toIList(),
                            ),
                            'name': encodeValue(on607227.name),
                            'unique': encodeValue(on607227.unique),
                          }),
                        )
                        .toIList(),
                  ),
                  'schema': encodeValue({
                    for (final on931348 in on791184.value.schema.entries)
                      on931348.key: encodeValue(
                        encodeValue(
                          on931348.value.split(
                            (on485497) => encodeValue(on485497),
                            (on366458) => encodeValue(on366458),
                            (on7596) => encodeValue(on7596),
                            (on92619) => encodeValue(on92619),
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
    (on834232) => (
      i: (on834232['i'] as IMap<String, dynamic>).then(
        (on336718) => (
          api: (on336718['api'] as IMap<String, dynamic>).then(
            (on736126) => (
              endpoints: (on736126['endpoints'] as IMap<String, dynamic>).map(
                (on305873, on412286) => MapEntry(
                  on305873,
                  (on412286 as IMap<String, dynamic>).then(
                    (on902244) => (
                      auth: on902244.containsKey('auth')
                          ? Defined((on902244['auth'] as bool))
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
                            if (map.containsKey(on902244['method'])) {
                              return map[on902244['method']];
                            }
                            throw Exception(
                              (on902244['method'].toString() ?? "null") +
                                  r" cannot be deserialized into a Union4<$GETLiteral, $POSTLiteral, $PUTLiteral, $DELETELiteral>",
                            );
                          }()),
                      params: (on902244['params'] as IMap<String, dynamic>).map(
                        (on970946, on704127) => MapEntry(
                          on970946,
                          Union3<String, double, bool>(() {
                            try {
                              return (on704127 as String);
                            } catch (e) {}

                            try {
                              return (on704127 as double);
                            } catch (e) {}

                            try {
                              return (on704127 as bool);
                            } catch (e) {}

                            throw Exception(
                              (on704127.toString() ?? "null") +
                                  r" cannot be deserialized into a Union3<String, double, bool>",
                            );
                          }()),
                        ),
                      ),
                      path: (on902244['path'] as String),
                      response: on902244['response'],
                    ),
                  ),
                ),
              ),
              rateLimit: (on736126['rateLimit'] as IMap<String, dynamic>).then(
                (on74604) => (
                  requests: (on74604['requests'] as double),
                  window: Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>(() {
                    final map = {
                      'minute': $MinuteLiteral(),
                      'hour': $HourLiteral(),
                      'day': $DayLiteral(),
                    };
                    if (map.containsKey(on74604['window'])) {
                      return map[on74604['window']];
                    }
                    throw Exception(
                      (on74604['window'].toString() ?? "null") +
                          r" cannot be deserialized into a Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>",
                    );
                  }()),
                ),
              ),
            ),
          ),
          database: (on336718['database'] as IMap<String, dynamic>).then(
            (on803930) => (
              tables: (on803930['tables'] as IMap<String, dynamic>).map(
                (on414754, on69349) => MapEntry(
                  on414754,
                  (on69349 as IMap<String, dynamic>).then(
                    (on161260) => (
                      indexes: (on161260['indexes'] as IList<dynamic>)
                          .map(
                            (
                              on992045,
                            ) => (on992045 as IMap<String, dynamic>).then(
                              (on777537) => (
                                fields: (on777537['fields'] as IList<dynamic>)
                                    .map((on39764) => (on39764 as String))
                                    .toIList(),
                                name: (on777537['name'] as String),
                                unique: (on777537['unique'] as bool),
                              ),
                            ),
                          )
                          .toIList(),
                      schema: (on161260['schema'] as IMap<String, dynamic>).map(
                        (on120262, on69201) => MapEntry(
                          on120262,
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
                            if (map.containsKey(on69201)) {
                              return map[on69201];
                            }
                            throw Exception(
                              (on69201.toString() ?? "null") +
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
