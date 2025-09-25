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
      'fieldAgents:listPendingFieldSignUps',
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
            (on822567) => encodeValue(on822567),
            (on854480) => encodeValue(on854480),
          ),
        ),
    },
  );
}

ListPendingFieldSignUpsResponse deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on316361) => (
      continueCursor: (on316361['continueCursor'] as String),
      deletedIds: (on316361['deletedIds'] as IList<dynamic>)
          .map((on335788) => CashCountFieldSignUpsId(on335788 as String))
          .toIList(),
      isDone: (on316361['isDone'] as bool),
      list: (on316361['list'] as IList<dynamic>)
          .map(
            (on520461) => (on520461 as IMap<String, dynamic>).then(
              (on769136) => (
                $_id: CashCountFieldSignUpsId(on769136['_id'] as String),
                completedAt: on769136.containsKey('completedAt')
                    ? Defined((on769136['completedAt'] as double))
                    : Undefined<double>(),
                completedMeta: on769136.containsKey('completedMeta')
                    ? Defined(
                        (on769136['completedMeta'] as IMap<String, dynamic>)
                            .then(
                              (on353029) => (
                                action: (on353029['action'] as String),
                                details: on353029.containsKey('details')
                                    ? Defined(
                                        (on353029['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on102500, on29293) =>
                                                  MapEntry(on102500, on29293),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on353029.containsKey('name')
                                    ? Defined((on353029['name'] as String))
                                    : Undefined<String>(),
                                role: on353029.containsKey('role')
                                    ? Defined((on353029['role'] as String))
                                    : Undefined<String>(),
                                userId: on353029.containsKey('userId')
                                    ? Defined((on353029['userId'] as String))
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
                createdAt: (on769136['createdAt'] as double),
                creatorId: UsersId(on769136['creatorId'] as String),
                deletedAt: on769136.containsKey('deletedAt')
                    ? Defined((on769136['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on769136.containsKey('deletedMeta')
                    ? Defined(
                        (on769136['deletedMeta'] as IMap<String, dynamic>).then(
                          (on344412) => (
                            action: (on344412['action'] as String),
                            details: on344412.containsKey('details')
                                ? Defined(
                                    (on344412['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on488772, on406430) =>
                                              MapEntry(on488772, on406430),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on344412.containsKey('name')
                                ? Defined((on344412['name'] as String))
                                : Undefined<String>(),
                            role: on344412.containsKey('role')
                                ? Defined((on344412['role'] as String))
                                : Undefined<String>(),
                            userId: on344412.containsKey('userId')
                                ? Defined((on344412['userId'] as String))
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
                deviceInfo: (on769136['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on500502) => (
                        deviceId: (on500502['deviceId'] as String),
                        deviceModel: (on500502['deviceModel'] as String),
                        deviceName: (on500502['deviceName'] as String),
                        deviceOs: (on500502['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on769136.containsKey('expiredAt')
                    ? Defined((on769136['expiredAt'] as double))
                    : Undefined<double>(),
                mongoId: on769136.containsKey('mongoId')
                    ? Defined((on769136['mongoId'] as String))
                    : Undefined<String>(),
                phoneNumber: (on769136['phoneNumber'] as String),
                rejectionAt: on769136.containsKey('rejectionAt')
                    ? Defined((on769136['rejectionAt'] as double))
                    : Undefined<double>(),
                rejectionMeta: on769136.containsKey('rejectionMeta')
                    ? Defined(
                        (on769136['rejectionMeta'] as IMap<String, dynamic>)
                            .then(
                              (on513570) => (
                                action: (on513570['action'] as String),
                                details: on513570.containsKey('details')
                                    ? Defined(
                                        (on513570['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on87392, on996057) =>
                                                  MapEntry(on87392, on996057),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on513570.containsKey('name')
                                    ? Defined((on513570['name'] as String))
                                    : Undefined<String>(),
                                role: on513570.containsKey('role')
                                    ? Defined((on513570['role'] as String))
                                    : Undefined<String>(),
                                userId: on513570.containsKey('userId')
                                    ? Defined((on513570['userId'] as String))
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
                rejectionReason: on769136.containsKey('rejectionReason')
                    ? Defined((on769136['rejectionReason'] as String))
                    : Undefined<String>(),
                statUpdatedAt: on769136.containsKey('statUpdatedAt')
                    ? Defined((on769136['statUpdatedAt'] as double))
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
                      if (map.containsKey(on769136['status'])) {
                        return map[on769136['status']];
                      }
                      throw Exception(
                        (on769136['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$CompletedLiteral, $PendingLiteral, $RejectedLiteral, $ExpiredLiteral>",
                      );
                    }()),
                updateMeta: on769136.containsKey('updateMeta')
                    ? Defined(
                        (on769136['updateMeta'] as IMap<String, dynamic>).then(
                          (on735579) => (
                            action: (on735579['action'] as String),
                            details: on735579.containsKey('details')
                                ? Defined(
                                    (on735579['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on350192, on897256) =>
                                              MapEntry(on350192, on897256),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on735579.containsKey('name')
                                ? Defined((on735579['name'] as String))
                                : Undefined<String>(),
                            role: on735579.containsKey('role')
                                ? Defined((on735579['role'] as String))
                                : Undefined<String>(),
                            userId: on735579.containsKey('userId')
                                ? Defined((on735579['userId'] as String))
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
                updatedAt: on769136.containsKey('updatedAt')
                    ? Defined((on769136['updatedAt'] as double))
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
