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
            (on395101) => encodeValue(on395101),
            (on847015) => encodeValue(on847015),
          ),
        ),
    },
  );
}

ListPendingFieldSignUpsResponse deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on391301) => (
      continueCursor: (on391301['continueCursor'] as String),
      deletedIds: (on391301['deletedIds'] as IList<dynamic>)
          .map((on408389) => CashCountFieldSignUpsId(on408389 as String))
          .toIList(),
      isDone: (on391301['isDone'] as bool),
      list: (on391301['list'] as IList<dynamic>)
          .map(
            (on701009) => (on701009 as IMap<String, dynamic>).then(
              (on80379) => (
                $_id: CashCountFieldSignUpsId(on80379['_id'] as String),
                completedAt: on80379.containsKey('completedAt')
                    ? Defined((on80379['completedAt'] as double))
                    : Undefined<double>(),
                completedMeta: on80379.containsKey('completedMeta')
                    ? Defined(
                        (on80379['completedMeta'] as IMap<String, dynamic>)
                            .then(
                              (on356858) => (
                                action: (on356858['action'] as String),
                                details: on356858.containsKey('details')
                                    ? Defined(
                                        (on356858['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on382685, on774178) =>
                                                  MapEntry(on382685, on774178),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on356858.containsKey('name')
                                    ? Defined((on356858['name'] as String))
                                    : Undefined<String>(),
                                role: on356858.containsKey('role')
                                    ? Defined((on356858['role'] as String))
                                    : Undefined<String>(),
                                userId: on356858.containsKey('userId')
                                    ? Defined((on356858['userId'] as String))
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
                createMeta: on80379.containsKey('createMeta')
                    ? Defined(
                        (on80379['createMeta'] as IMap<String, dynamic>).then(
                          (on445404) => (
                            action: (on445404['action'] as String),
                            details: on445404.containsKey('details')
                                ? Defined(
                                    (on445404['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on75121, on153441) =>
                                              MapEntry(on75121, on153441),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on445404.containsKey('name')
                                ? Defined((on445404['name'] as String))
                                : Undefined<String>(),
                            role: on445404.containsKey('role')
                                ? Defined((on445404['role'] as String))
                                : Undefined<String>(),
                            userId: on445404.containsKey('userId')
                                ? Defined((on445404['userId'] as String))
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
                createdAt: (on80379['createdAt'] as double),
                deletedAt: on80379.containsKey('deletedAt')
                    ? Defined((on80379['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on80379.containsKey('deletedMeta')
                    ? Defined(
                        (on80379['deletedMeta'] as IMap<String, dynamic>).then(
                          (on742312) => (
                            action: (on742312['action'] as String),
                            details: on742312.containsKey('details')
                                ? Defined(
                                    (on742312['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on889157, on798480) =>
                                              MapEntry(on889157, on798480),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on742312.containsKey('name')
                                ? Defined((on742312['name'] as String))
                                : Undefined<String>(),
                            role: on742312.containsKey('role')
                                ? Defined((on742312['role'] as String))
                                : Undefined<String>(),
                            userId: on742312.containsKey('userId')
                                ? Defined((on742312['userId'] as String))
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
                deviceId: (on80379['deviceId'] as String),
                deviceInfo: (on80379['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on35217) => (
                        deviceId: (on35217['deviceId'] as String),
                        deviceModel: (on35217['deviceModel'] as String),
                        deviceName: (on35217['deviceName'] as String),
                        deviceOs: (on35217['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on80379.containsKey('expiredAt')
                    ? Defined((on80379['expiredAt'] as double))
                    : Undefined<double>(),
                fieldAgentId: FieldAgentsId(on80379['fieldAgentId'] as String),
                mongoId: (on80379['mongoId'] as String),
                phoneNumber: (on80379['phoneNumber'] as String),
                referralCode: (on80379['referralCode'] as String),
                rejectionAt: on80379.containsKey('rejectionAt')
                    ? Defined((on80379['rejectionAt'] as double))
                    : Undefined<double>(),
                rejectionMeta: on80379.containsKey('rejectionMeta')
                    ? Defined(
                        (on80379['rejectionMeta'] as IMap<String, dynamic>)
                            .then(
                              (on963236) => (
                                action: (on963236['action'] as String),
                                details: on963236.containsKey('details')
                                    ? Defined(
                                        (on963236['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on329289, on211993) =>
                                                  MapEntry(on329289, on211993),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on963236.containsKey('name')
                                    ? Defined((on963236['name'] as String))
                                    : Undefined<String>(),
                                role: on963236.containsKey('role')
                                    ? Defined((on963236['role'] as String))
                                    : Undefined<String>(),
                                userId: on963236.containsKey('userId')
                                    ? Defined((on963236['userId'] as String))
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
                rejectionReason: on80379.containsKey('rejectionReason')
                    ? Defined((on80379['rejectionReason'] as String))
                    : Undefined<String>(),
                statUpdatedAt: on80379.containsKey('statUpdatedAt')
                    ? Defined((on80379['statUpdatedAt'] as double))
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
                      if (map.containsKey(on80379['status'])) {
                        return map[on80379['status']];
                      }
                      throw Exception(
                        (on80379['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$CompletedLiteral, $PendingLiteral, $RejectedLiteral, $ExpiredLiteral>",
                      );
                    }()),
                updateMeta: on80379.containsKey('updateMeta')
                    ? Defined(
                        (on80379['updateMeta'] as IMap<String, dynamic>).then(
                          (on617830) => (
                            action: (on617830['action'] as String),
                            details: on617830.containsKey('details')
                                ? Defined(
                                    (on617830['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on264124, on404050) =>
                                              MapEntry(on264124, on404050),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on617830.containsKey('name')
                                ? Defined((on617830['name'] as String))
                                : Undefined<String>(),
                            role: on617830.containsKey('role')
                                ? Defined((on617830['role'] as String))
                                : Undefined<String>(),
                            userId: on617830.containsKey('userId')
                                ? Defined((on617830['userId'] as String))
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
                updatedAt: on80379.containsKey('updatedAt')
                    ? Defined((on80379['updatedAt'] as double))
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
      Optional<
        ({
          String action,
          Optional<IMap<String, dynamic>> details,
          Optional<String> name,
          Optional<String> role,
          Optional<String> userId,
        })
      >
      createMeta,
      double createdAt,
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
      String deviceId,
      ({
        String deviceId,
        String deviceModel,
        String deviceName,
        String deviceOs,
      })
      deviceInfo,
      Optional<double> expiredAt,
      FieldAgentsId fieldAgentId,
      String mongoId,
      String phoneNumber,
      String referralCode,
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
