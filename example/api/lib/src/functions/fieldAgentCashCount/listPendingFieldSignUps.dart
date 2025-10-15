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
            (on945219) => encodeValue(on945219),
            (on25395) => encodeValue(on25395),
          ),
        ),
    },
  );
}

ListPendingFieldSignUpsResponse deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on211439) => (
      continueCursor: (on211439['continueCursor'] as String),
      deletedIds: (on211439['deletedIds'] as IList<dynamic>)
          .map((on705298) => CashCountFieldSignUpsId(on705298 as String))
          .toIList(),
      isDone: (on211439['isDone'] as bool),
      list: (on211439['list'] as IList<dynamic>)
          .map(
            (on605268) => (on605268 as IMap<String, dynamic>).then(
              (on85186) => (
                $_creationTime: (on85186['_creationTime'] as double),
                $_id: CashCountFieldSignUpsId(on85186['_id'] as String),
                completedAt: on85186.containsKey('completedAt')
                    ? Defined((on85186['completedAt'] as double))
                    : Undefined<double>(),
                completedMeta: on85186.containsKey('completedMeta')
                    ? Defined(
                        (on85186['completedMeta'] as IMap<String, dynamic>)
                            .then(
                              (on415241) => (
                                action: (on415241['action'] as String),
                                details: on415241.containsKey('details')
                                    ? Defined(
                                        (on415241['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on787952, on564689) =>
                                                  MapEntry(on787952, on564689),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on415241.containsKey('name')
                                    ? Defined((on415241['name'] as String))
                                    : Undefined<String>(),
                                role: on415241.containsKey('role')
                                    ? Defined((on415241['role'] as String))
                                    : Undefined<String>(),
                                userId: on415241.containsKey('userId')
                                    ? Defined((on415241['userId'] as String))
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
                createMeta: on85186.containsKey('createMeta')
                    ? Defined(
                        (on85186['createMeta'] as IMap<String, dynamic>).then(
                          (on416272) => (
                            action: (on416272['action'] as String),
                            details: on416272.containsKey('details')
                                ? Defined(
                                    (on416272['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on311225, on479299) =>
                                              MapEntry(on311225, on479299),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on416272.containsKey('name')
                                ? Defined((on416272['name'] as String))
                                : Undefined<String>(),
                            role: on416272.containsKey('role')
                                ? Defined((on416272['role'] as String))
                                : Undefined<String>(),
                            userId: on416272.containsKey('userId')
                                ? Defined((on416272['userId'] as String))
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
                createdAt: (on85186['createdAt'] as double),
                creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
                  try {
                    return FieldAgentsId(on85186['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return ShippingClientsId(on85186['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return (on85186['creatorId'] as String);
                  } catch (e) {}

                  throw Exception(
                    (on85186['creatorId'].toString() ?? "null") +
                        r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
                  );
                }()),
                deletedAt: on85186.containsKey('deletedAt')
                    ? Defined((on85186['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on85186.containsKey('deletedMeta')
                    ? Defined(
                        (on85186['deletedMeta'] as IMap<String, dynamic>).then(
                          (on731399) => (
                            action: (on731399['action'] as String),
                            details: on731399.containsKey('details')
                                ? Defined(
                                    (on731399['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on567977, on380994) =>
                                              MapEntry(on567977, on380994),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on731399.containsKey('name')
                                ? Defined((on731399['name'] as String))
                                : Undefined<String>(),
                            role: on731399.containsKey('role')
                                ? Defined((on731399['role'] as String))
                                : Undefined<String>(),
                            userId: on731399.containsKey('userId')
                                ? Defined((on731399['userId'] as String))
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
                deviceId: (on85186['deviceId'] as String),
                deviceInfo: (on85186['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on324159) => (
                        deviceId: (on324159['deviceId'] as String),
                        deviceModel: (on324159['deviceModel'] as String),
                        deviceName: (on324159['deviceName'] as String),
                        deviceOs: (on324159['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on85186.containsKey('expiredAt')
                    ? Defined((on85186['expiredAt'] as double))
                    : Undefined<double>(),
                fieldAgentId: FieldAgentsId(on85186['fieldAgentId'] as String),
                mongoId: (on85186['mongoId'] as String),
                phoneNumber: (on85186['phoneNumber'] as String),
                referralCode: (on85186['referralCode'] as String),
                rejectionAt: on85186.containsKey('rejectionAt')
                    ? Defined((on85186['rejectionAt'] as double))
                    : Undefined<double>(),
                rejectionMeta: on85186.containsKey('rejectionMeta')
                    ? Defined(
                        (on85186['rejectionMeta'] as IMap<String, dynamic>)
                            .then(
                              (on658675) => (
                                action: (on658675['action'] as String),
                                details: on658675.containsKey('details')
                                    ? Defined(
                                        (on658675['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on524718, on340680) =>
                                                  MapEntry(on524718, on340680),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on658675.containsKey('name')
                                    ? Defined((on658675['name'] as String))
                                    : Undefined<String>(),
                                role: on658675.containsKey('role')
                                    ? Defined((on658675['role'] as String))
                                    : Undefined<String>(),
                                userId: on658675.containsKey('userId')
                                    ? Defined((on658675['userId'] as String))
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
                rejectionReason: on85186.containsKey('rejectionReason')
                    ? Defined((on85186['rejectionReason'] as String))
                    : Undefined<String>(),
                statUpdatedAt: on85186.containsKey('statUpdatedAt')
                    ? Defined((on85186['statUpdatedAt'] as double))
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
                      if (map.containsKey(on85186['status'])) {
                        return map[on85186['status']];
                      }
                      throw Exception(
                        (on85186['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$CompletedLiteral, $PendingLiteral, $RejectedLiteral, $ExpiredLiteral>",
                      );
                    }()),
                teamId: on85186.containsKey('teamId')
                    ? Defined((on85186['teamId'] as String))
                    : Undefined<String>(),
                updateMeta: on85186.containsKey('updateMeta')
                    ? Defined(
                        (on85186['updateMeta'] as IMap<String, dynamic>).then(
                          (on434159) => (
                            action: (on434159['action'] as String),
                            details: on434159.containsKey('details')
                                ? Defined(
                                    (on434159['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on900400, on761566) =>
                                              MapEntry(on900400, on761566),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on434159.containsKey('name')
                                ? Defined((on434159['name'] as String))
                                : Undefined<String>(),
                            role: on434159.containsKey('role')
                                ? Defined((on434159['role'] as String))
                                : Undefined<String>(),
                            userId: on434159.containsKey('userId')
                                ? Defined((on434159['userId'] as String))
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
                updatedAt: on85186.containsKey('updatedAt')
                    ? Defined((on85186['updatedAt'] as double))
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
      double $_creationTime,
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
      Union3<FieldAgentsId, ShippingClientsId, String> creatorId,
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
      Optional<String> teamId,
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
