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
            (on461166) => encodeValue(on461166),
            (on730538) => encodeValue(on730538),
          ),
        ),
    },
  );
}

ListPendingFieldSignUpsResponse deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on910131) => (
      continueCursor: (on910131['continueCursor'] as String),
      deletedIds: (on910131['deletedIds'] as IList<dynamic>)
          .map((on265520) => CashCountFieldSignUpsId(on265520 as String))
          .toIList(),
      isDone: (on910131['isDone'] as bool),
      list: (on910131['list'] as IList<dynamic>)
          .map(
            (on476816) => (on476816 as IMap<String, dynamic>).then(
              (on666559) => (
                $_id: CashCountFieldSignUpsId(on666559['_id'] as String),
                completedAt: on666559.containsKey('completedAt')
                    ? Defined((on666559['completedAt'] as double))
                    : Undefined<double>(),
                completedMeta: on666559.containsKey('completedMeta')
                    ? Defined(
                        (on666559['completedMeta'] as IMap<String, dynamic>)
                            .then(
                              (on313148) => (
                                action: (on313148['action'] as String),
                                details: on313148.containsKey('details')
                                    ? Defined(
                                        (on313148['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on746450, on694192) =>
                                                  MapEntry(on746450, on694192),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on313148.containsKey('name')
                                    ? Defined((on313148['name'] as String))
                                    : Undefined<String>(),
                                role: on313148.containsKey('role')
                                    ? Defined((on313148['role'] as String))
                                    : Undefined<String>(),
                                userId: on313148.containsKey('userId')
                                    ? Defined((on313148['userId'] as String))
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
                createdAt: (on666559['createdAt'] as double),
                creatorId: UsersId(on666559['creatorId'] as String),
                deletedAt: on666559.containsKey('deletedAt')
                    ? Defined((on666559['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on666559.containsKey('deletedMeta')
                    ? Defined(
                        (on666559['deletedMeta'] as IMap<String, dynamic>).then(
                          (on460241) => (
                            action: (on460241['action'] as String),
                            details: on460241.containsKey('details')
                                ? Defined(
                                    (on460241['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on569759, on115539) =>
                                              MapEntry(on569759, on115539),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on460241.containsKey('name')
                                ? Defined((on460241['name'] as String))
                                : Undefined<String>(),
                            role: on460241.containsKey('role')
                                ? Defined((on460241['role'] as String))
                                : Undefined<String>(),
                            userId: on460241.containsKey('userId')
                                ? Defined((on460241['userId'] as String))
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
                deviceInfo: (on666559['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on746060) => (
                        deviceId: (on746060['deviceId'] as String),
                        deviceModel: (on746060['deviceModel'] as String),
                        deviceName: (on746060['deviceName'] as String),
                        deviceOs: (on746060['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on666559.containsKey('expiredAt')
                    ? Defined((on666559['expiredAt'] as double))
                    : Undefined<double>(),
                mongoId: on666559.containsKey('mongoId')
                    ? Defined((on666559['mongoId'] as String))
                    : Undefined<String>(),
                phoneNumber: (on666559['phoneNumber'] as String),
                rejectionAt: on666559.containsKey('rejectionAt')
                    ? Defined((on666559['rejectionAt'] as double))
                    : Undefined<double>(),
                rejectionMeta: on666559.containsKey('rejectionMeta')
                    ? Defined(
                        (on666559['rejectionMeta'] as IMap<String, dynamic>)
                            .then(
                              (on628145) => (
                                action: (on628145['action'] as String),
                                details: on628145.containsKey('details')
                                    ? Defined(
                                        (on628145['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on516676, on507470) =>
                                                  MapEntry(on516676, on507470),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on628145.containsKey('name')
                                    ? Defined((on628145['name'] as String))
                                    : Undefined<String>(),
                                role: on628145.containsKey('role')
                                    ? Defined((on628145['role'] as String))
                                    : Undefined<String>(),
                                userId: on628145.containsKey('userId')
                                    ? Defined((on628145['userId'] as String))
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
                rejectionReason: on666559.containsKey('rejectionReason')
                    ? Defined((on666559['rejectionReason'] as String))
                    : Undefined<String>(),
                statUpdatedAt: on666559.containsKey('statUpdatedAt')
                    ? Defined((on666559['statUpdatedAt'] as double))
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
                      if (map.containsKey(on666559['status'])) {
                        return map[on666559['status']];
                      }
                      throw Exception(
                        (on666559['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$CompletedLiteral, $PendingLiteral, $RejectedLiteral, $ExpiredLiteral>",
                      );
                    }()),
                updateMeta: on666559.containsKey('updateMeta')
                    ? Defined(
                        (on666559['updateMeta'] as IMap<String, dynamic>).then(
                          (on975176) => (
                            action: (on975176['action'] as String),
                            details: on975176.containsKey('details')
                                ? Defined(
                                    (on975176['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on584923, on256433) =>
                                              MapEntry(on584923, on256433),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on975176.containsKey('name')
                                ? Defined((on975176['name'] as String))
                                : Undefined<String>(),
                            role: on975176.containsKey('role')
                                ? Defined((on975176['role'] as String))
                                : Undefined<String>(),
                            userId: on975176.containsKey('userId')
                                ? Defined((on975176['userId'] as String))
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
                updatedAt: on666559.containsKey('updatedAt')
                    ? Defined((on666559['updatedAt'] as double))
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
