// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "../../models/json/list_query.dart";

final listPendingFieldSignUps =
    QueryOperation<ListQuery, ListPendingFieldSignUpsResponse>(
      'fieldAgentCashCount:listPendingFieldSignUps',
      serialize,
      deserialize,
    );
BTreeMapStringValue serialize(ListQuery args) {
  return hashmapToBtreemap(
    hashmap: {
      if (args.lastSyncDate.isDefined)
        'lastSyncDate': encodeValue(args.lastSyncDate.asDefined().value),
      if (args.paginationOpts.isDefined)
        'paginationOpts': encodeValue({
          'cursor': encodeValue(args.paginationOpts.asDefined().value.cursor),
          'numItems': encodeValue(
            args.paginationOpts.asDefined().value.numItems,
          ),
        }),
      if (args.searchText.isDefined)
        'searchText': encodeValue(args.searchText.asDefined().value),
      if (args.sortBy.isDefined)
        'sortBy': encodeValue(args.sortBy.asDefined().value),
      if (args.sortOrder.isDefined)
        'sortOrder': encodeValue(
          args.sortOrder.asDefined().value.split(
            (on887858) => encodeValue(on887858),
            (on179367) => encodeValue(on179367),
          ),
        ),
    },
  );
}

ListPendingFieldSignUpsResponse deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on520023) => (
      continueCursor: (on520023['continueCursor'] as String),
      deletedIds: (on520023['deletedIds'] as IList<dynamic>)
          .map((on209273) => CashCountFieldSignUpsId(on209273 as String))
          .toIList(),
      isDone: (on520023['isDone'] as bool),
      list: (on520023['list'] as IList<dynamic>)
          .map(
            (on905418) => (on905418 as IMap<String, dynamic>).then(
              (on770001) => (
                $_id: CashCountFieldSignUpsId(on770001['_id'] as String),
                completedAt: on770001.containsKey('completedAt')
                    ? Defined((on770001['completedAt'] as double))
                    : Undefined<double>(),
                completedMeta: on770001.containsKey('completedMeta')
                    ? Defined(
                        (on770001['completedMeta'] as IMap<String, dynamic>)
                            .then(
                              (on801840) => (
                                action: (on801840['action'] as String),
                                details: on801840.containsKey('details')
                                    ? Defined(
                                        (on801840['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on847391, on718400) =>
                                                  MapEntry(on847391, on718400),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on801840.containsKey('name')
                                    ? Defined((on801840['name'] as String))
                                    : Undefined<String>(),
                                role: on801840.containsKey('role')
                                    ? Defined((on801840['role'] as String))
                                    : Undefined<String>(),
                                userId: on801840.containsKey('userId')
                                    ? Defined((on801840['userId'] as String))
                                    : Undefined<String>(),
                              ),
                            ),
                      )
                    : Undefined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(),
                createdAt: (on770001['createdAt'] as double),
                creatorId: UsersId(on770001['creatorId'] as String),
                deletedAt: on770001.containsKey('deletedAt')
                    ? Defined((on770001['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on770001.containsKey('deletedMeta')
                    ? Defined(
                        (on770001['deletedMeta'] as IMap<String, dynamic>).then(
                          (on690345) => (
                            action: (on690345['action'] as String),
                            details: on690345.containsKey('details')
                                ? Defined(
                                    (on690345['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on357834, on619816) =>
                                              MapEntry(on357834, on619816),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on690345.containsKey('name')
                                ? Defined((on690345['name'] as String))
                                : Undefined<String>(),
                            role: on690345.containsKey('role')
                                ? Defined((on690345['role'] as String))
                                : Undefined<String>(),
                            userId: on690345.containsKey('userId')
                                ? Defined((on690345['userId'] as String))
                                : Undefined<String>(),
                          ),
                        ),
                      )
                    : Undefined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(),
                deviceInfo: (on770001['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on823513) => (
                        deviceId: (on823513['deviceId'] as String),
                        deviceModel: (on823513['deviceModel'] as String),
                        deviceName: (on823513['deviceName'] as String),
                        deviceOs: (on823513['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on770001.containsKey('expiredAt')
                    ? Defined((on770001['expiredAt'] as double))
                    : Undefined<double>(),
                mongoId: on770001.containsKey('mongoId')
                    ? Defined((on770001['mongoId'] as String))
                    : Undefined<String>(),
                phoneNumber: (on770001['phoneNumber'] as String),
                rejectionAt: on770001.containsKey('rejectionAt')
                    ? Defined((on770001['rejectionAt'] as double))
                    : Undefined<double>(),
                rejectionMeta: on770001.containsKey('rejectionMeta')
                    ? Defined(
                        (on770001['rejectionMeta'] as IMap<String, dynamic>)
                            .then(
                              (on757846) => (
                                action: (on757846['action'] as String),
                                details: on757846.containsKey('details')
                                    ? Defined(
                                        (on757846['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on637453, on695863) =>
                                                  MapEntry(on637453, on695863),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on757846.containsKey('name')
                                    ? Defined((on757846['name'] as String))
                                    : Undefined<String>(),
                                role: on757846.containsKey('role')
                                    ? Defined((on757846['role'] as String))
                                    : Undefined<String>(),
                                userId: on757846.containsKey('userId')
                                    ? Defined((on757846['userId'] as String))
                                    : Undefined<String>(),
                              ),
                            ),
                      )
                    : Undefined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(),
                rejectionReason: on770001.containsKey('rejectionReason')
                    ? Defined((on770001['rejectionReason'] as String))
                    : Undefined<String>(),
                statUpdatedAt: on770001.containsKey('statUpdatedAt')
                    ? Defined((on770001['statUpdatedAt'] as double))
                    : Undefined<double>(),
                status:
                    Union4<
                      $CompletedLiteral,
                      $PendingLiteral,
                      $RejectedLiteral,
                      $ExpiredLiteral
                    >(() {
                      final map = {
                        'Completed': $CompletedLiteral(),
                        'Pending': $PendingLiteral(),
                        'Rejected': $RejectedLiteral(),
                        'Expired': $ExpiredLiteral(),
                      };
                      if (map.containsKey(on770001['status'])) {
                        return map[on770001['status']];
                      }
                      throw Exception(
                        (on770001['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$CompletedLiteral, $PendingLiteral, $RejectedLiteral, $ExpiredLiteral>",
                      );
                    }()),
                updateMeta: on770001.containsKey('updateMeta')
                    ? Defined(
                        (on770001['updateMeta'] as IMap<String, dynamic>).then(
                          (on435726) => (
                            action: (on435726['action'] as String),
                            details: on435726.containsKey('details')
                                ? Defined(
                                    (on435726['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on566116, on419678) =>
                                              MapEntry(on566116, on419678),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on435726.containsKey('name')
                                ? Defined((on435726['name'] as String))
                                : Undefined<String>(),
                            role: on435726.containsKey('role')
                                ? Defined((on435726['role'] as String))
                                : Undefined<String>(),
                            userId: on435726.containsKey('userId')
                                ? Defined((on435726['userId'] as String))
                                : Undefined<String>(),
                          ),
                        ),
                      )
                    : Undefined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(),
                updatedAt: on770001.containsKey('updatedAt')
                    ? Defined((on770001['updatedAt'] as double))
                    : Undefined<double>(),
              ),
            ),
          )
          .toIList(),
    ),
  );
}

typedef ListPendingFieldSignUpsResponse = ({
  String continueCursor,
  IList<CashCountFieldSignUpsId> deletedIds,
  bool isDone,
  IList<
    ({
      CashCountFieldSignUpsId $_id,
      Optional<double> completedAt,
      Optional<
        ({
          String action,
          Optional<IMap<String, dynamic>> details,
          Optional<String> name,
          Optional<String> role,
          Optional<String> userId,
        })
      >
      completedMeta,
      double createdAt,
      UsersId creatorId,
      Optional<double> deletedAt,
      Optional<
        ({
          String action,
          Optional<IMap<String, dynamic>> details,
          Optional<String> name,
          Optional<String> role,
          Optional<String> userId,
        })
      >
      deletedMeta,
      ({
        String deviceId,
        String deviceModel,
        String deviceName,
        String deviceOs,
      })
      deviceInfo,
      Optional<double> expiredAt,
      Optional<String> mongoId,
      String phoneNumber,
      Optional<double> rejectionAt,
      Optional<
        ({
          String action,
          Optional<IMap<String, dynamic>> details,
          Optional<String> name,
          Optional<String> role,
          Optional<String> userId,
        })
      >
      rejectionMeta,
      Optional<String> rejectionReason,
      Optional<double> statUpdatedAt,
      Union4<
        $CompletedLiteral,
        $PendingLiteral,
        $RejectedLiteral,
        $ExpiredLiteral
      >
      status,
      Optional<
        ({
          String action,
          Optional<IMap<String, dynamic>> details,
          Optional<String> name,
          Optional<String> role,
          Optional<String> userId,
        })
      >
      updateMeta,
      Optional<double> updatedAt,
    })
  >
  list,
});
