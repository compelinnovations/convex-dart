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
            (on25492) => encodeValue(on25492),
            (on847051) => encodeValue(on847051),
          ),
        ),
    },
  );
}

ListPendingFieldSignUpsResponse deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on609760) => (
      continueCursor: (on609760['continueCursor'] as String),
      deletedIds: (on609760['deletedIds'] as IList<dynamic>)
          .map((on842640) => CashCountFieldSignUpsId(on842640 as String))
          .toIList(),
      isDone: (on609760['isDone'] as bool),
      list: (on609760['list'] as IList<dynamic>)
          .map(
            (on434279) => (on434279 as IMap<String, dynamic>).then(
              (on777540) => (
                $_id: CashCountFieldSignUpsId(on777540['_id'] as String),
                completedAt: on777540.containsKey('completedAt')
                    ? Defined((on777540['completedAt'] as double))
                    : Undefined<double>(),
                completedMeta: on777540.containsKey('completedMeta')
                    ? Defined(
                        (on777540['completedMeta'] as IMap<String, dynamic>)
                            .then(
                              (on864137) => (
                                action: (on864137['action'] as String),
                                details: on864137.containsKey('details')
                                    ? Defined(
                                        (on864137['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on541820, on920593) =>
                                                  MapEntry(on541820, on920593),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on864137.containsKey('name')
                                    ? Defined((on864137['name'] as String))
                                    : Undefined<String>(),
                                role: on864137.containsKey('role')
                                    ? Defined((on864137['role'] as String))
                                    : Undefined<String>(),
                                userId: on864137.containsKey('userId')
                                    ? Defined((on864137['userId'] as String))
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
                createdAt: (on777540['createdAt'] as double),
                creatorId: UsersId(on777540['creatorId'] as String),
                deletedAt: on777540.containsKey('deletedAt')
                    ? Defined((on777540['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on777540.containsKey('deletedMeta')
                    ? Defined(
                        (on777540['deletedMeta'] as IMap<String, dynamic>).then(
                          (on374398) => (
                            action: (on374398['action'] as String),
                            details: on374398.containsKey('details')
                                ? Defined(
                                    (on374398['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on485352, on815387) =>
                                              MapEntry(on485352, on815387),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on374398.containsKey('name')
                                ? Defined((on374398['name'] as String))
                                : Undefined<String>(),
                            role: on374398.containsKey('role')
                                ? Defined((on374398['role'] as String))
                                : Undefined<String>(),
                            userId: on374398.containsKey('userId')
                                ? Defined((on374398['userId'] as String))
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
                deviceInfo: (on777540['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on201042) => (
                        deviceId: (on201042['deviceId'] as String),
                        deviceModel: (on201042['deviceModel'] as String),
                        deviceName: (on201042['deviceName'] as String),
                        deviceOs: (on201042['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on777540.containsKey('expiredAt')
                    ? Defined((on777540['expiredAt'] as double))
                    : Undefined<double>(),
                mongoId: on777540.containsKey('mongoId')
                    ? Defined((on777540['mongoId'] as String))
                    : Undefined<String>(),
                phoneNumber: (on777540['phoneNumber'] as String),
                rejectionAt: on777540.containsKey('rejectionAt')
                    ? Defined((on777540['rejectionAt'] as double))
                    : Undefined<double>(),
                rejectionMeta: on777540.containsKey('rejectionMeta')
                    ? Defined(
                        (on777540['rejectionMeta'] as IMap<String, dynamic>)
                            .then(
                              (on978469) => (
                                action: (on978469['action'] as String),
                                details: on978469.containsKey('details')
                                    ? Defined(
                                        (on978469['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on257384, on482994) =>
                                                  MapEntry(on257384, on482994),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on978469.containsKey('name')
                                    ? Defined((on978469['name'] as String))
                                    : Undefined<String>(),
                                role: on978469.containsKey('role')
                                    ? Defined((on978469['role'] as String))
                                    : Undefined<String>(),
                                userId: on978469.containsKey('userId')
                                    ? Defined((on978469['userId'] as String))
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
                rejectionReason: on777540.containsKey('rejectionReason')
                    ? Defined((on777540['rejectionReason'] as String))
                    : Undefined<String>(),
                statUpdatedAt: on777540.containsKey('statUpdatedAt')
                    ? Defined((on777540['statUpdatedAt'] as double))
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
                      if (map.containsKey(on777540['status'])) {
                        return map[on777540['status']];
                      }
                      throw Exception(
                        (on777540['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$CompletedLiteral, $PendingLiteral, $RejectedLiteral, $ExpiredLiteral>",
                      );
                    }()),
                updateMeta: on777540.containsKey('updateMeta')
                    ? Defined(
                        (on777540['updateMeta'] as IMap<String, dynamic>).then(
                          (on111676) => (
                            action: (on111676['action'] as String),
                            details: on111676.containsKey('details')
                                ? Defined(
                                    (on111676['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on610117, on810451) =>
                                              MapEntry(on610117, on810451),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on111676.containsKey('name')
                                ? Defined((on111676['name'] as String))
                                : Undefined<String>(),
                            role: on111676.containsKey('role')
                                ? Defined((on111676['role'] as String))
                                : Undefined<String>(),
                            userId: on111676.containsKey('userId')
                                ? Defined((on111676['userId'] as String))
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
                updatedAt: on777540.containsKey('updatedAt')
                    ? Defined((on777540['updatedAt'] as double))
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
