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
            (on558371) => encodeValue(on558371),
            (on971525) => encodeValue(on971525),
          ),
        ),
    },
  );
}

ListPendingFieldSignUpsResponse deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on450108) => (
      continueCursor: (on450108['continueCursor'] as String),
      deletedIds: (on450108['deletedIds'] as IList<dynamic>)
          .map((on638344) => CashCountFieldSignUpsId(on638344 as String))
          .toIList(),
      isDone: (on450108['isDone'] as bool),
      list: (on450108['list'] as IList<dynamic>)
          .map(
            (on75806) => (on75806 as IMap<String, dynamic>).then(
              (on311880) => (
                $_creationTime: (on311880['_creationTime'] as double),
                $_id: CashCountFieldSignUpsId(on311880['_id'] as String),
                completedAt: on311880.containsKey('completedAt')
                    ? Defined((on311880['completedAt'] as double))
                    : Undefined<double>(),
                completedMeta: on311880.containsKey('completedMeta')
                    ? Defined(
                        (on311880['completedMeta'] as IMap<String, dynamic>)
                            .then(
                              (on48114) => (
                                action: (on48114['action'] as String),
                                details: on48114.containsKey('details')
                                    ? Defined(
                                        (on48114['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on329669, on338143) =>
                                                  MapEntry(on329669, on338143),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on48114.containsKey('name')
                                    ? Defined((on48114['name'] as String))
                                    : Undefined<String>(),
                                role: on48114.containsKey('role')
                                    ? Defined((on48114['role'] as String))
                                    : Undefined<String>(),
                                userId: on48114.containsKey('userId')
                                    ? Defined((on48114['userId'] as String))
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
                createMeta: on311880.containsKey('createMeta')
                    ? Defined(
                        (on311880['createMeta'] as IMap<String, dynamic>).then(
                          (on862872) => (
                            action: (on862872['action'] as String),
                            details: on862872.containsKey('details')
                                ? Defined(
                                    (on862872['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on388322, on813239) =>
                                              MapEntry(on388322, on813239),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on862872.containsKey('name')
                                ? Defined((on862872['name'] as String))
                                : Undefined<String>(),
                            role: on862872.containsKey('role')
                                ? Defined((on862872['role'] as String))
                                : Undefined<String>(),
                            userId: on862872.containsKey('userId')
                                ? Defined((on862872['userId'] as String))
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
                createdAt: (on311880['createdAt'] as double),
                creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
                  try {
                    return FieldAgentsId(on311880['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return ShippingClientsId(on311880['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return (on311880['creatorId'] as String);
                  } catch (e) {}

                  throw Exception(
                    (on311880['creatorId'].toString() ?? "null") +
                        r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
                  );
                }()),
                deletedAt: on311880.containsKey('deletedAt')
                    ? Defined((on311880['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on311880.containsKey('deletedMeta')
                    ? Defined(
                        (on311880['deletedMeta'] as IMap<String, dynamic>).then(
                          (on55502) => (
                            action: (on55502['action'] as String),
                            details: on55502.containsKey('details')
                                ? Defined(
                                    (on55502['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on342991, on361381) =>
                                              MapEntry(on342991, on361381),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on55502.containsKey('name')
                                ? Defined((on55502['name'] as String))
                                : Undefined<String>(),
                            role: on55502.containsKey('role')
                                ? Defined((on55502['role'] as String))
                                : Undefined<String>(),
                            userId: on55502.containsKey('userId')
                                ? Defined((on55502['userId'] as String))
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
                deviceId: (on311880['deviceId'] as String),
                deviceInfo: (on311880['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on936299) => (
                        deviceId: (on936299['deviceId'] as String),
                        deviceModel: (on936299['deviceModel'] as String),
                        deviceName: (on936299['deviceName'] as String),
                        deviceOs: (on936299['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on311880.containsKey('expiredAt')
                    ? Defined((on311880['expiredAt'] as double))
                    : Undefined<double>(),
                fieldAgentId: FieldAgentsId(on311880['fieldAgentId'] as String),
                mongoId: (on311880['mongoId'] as String),
                phoneNumber: (on311880['phoneNumber'] as String),
                referralCode: (on311880['referralCode'] as String),
                rejectionAt: on311880.containsKey('rejectionAt')
                    ? Defined((on311880['rejectionAt'] as double))
                    : Undefined<double>(),
                rejectionMeta: on311880.containsKey('rejectionMeta')
                    ? Defined(
                        (on311880['rejectionMeta'] as IMap<String, dynamic>)
                            .then(
                              (on648108) => (
                                action: (on648108['action'] as String),
                                details: on648108.containsKey('details')
                                    ? Defined(
                                        (on648108['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on360379, on242990) =>
                                                  MapEntry(on360379, on242990),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on648108.containsKey('name')
                                    ? Defined((on648108['name'] as String))
                                    : Undefined<String>(),
                                role: on648108.containsKey('role')
                                    ? Defined((on648108['role'] as String))
                                    : Undefined<String>(),
                                userId: on648108.containsKey('userId')
                                    ? Defined((on648108['userId'] as String))
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
                rejectionReason: on311880.containsKey('rejectionReason')
                    ? Defined((on311880['rejectionReason'] as String))
                    : Undefined<String>(),
                statUpdatedAt: on311880.containsKey('statUpdatedAt')
                    ? Defined((on311880['statUpdatedAt'] as double))
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
                      if (map.containsKey(on311880['status'])) {
                        return map[on311880['status']];
                      }
                      throw Exception(
                        (on311880['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$CompletedLiteral, $PendingLiteral, $RejectedLiteral, $ExpiredLiteral>",
                      );
                    }()),
                teamId: on311880.containsKey('teamId')
                    ? Defined((on311880['teamId'] as String))
                    : Undefined<String>(),
                updateMeta: on311880.containsKey('updateMeta')
                    ? Defined(
                        (on311880['updateMeta'] as IMap<String, dynamic>).then(
                          (on511518) => (
                            action: (on511518['action'] as String),
                            details: on511518.containsKey('details')
                                ? Defined(
                                    (on511518['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on417013, on780985) =>
                                              MapEntry(on417013, on780985),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on511518.containsKey('name')
                                ? Defined((on511518['name'] as String))
                                : Undefined<String>(),
                            role: on511518.containsKey('role')
                                ? Defined((on511518['role'] as String))
                                : Undefined<String>(),
                            userId: on511518.containsKey('userId')
                                ? Defined((on511518['userId'] as String))
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
                updatedAt: on311880.containsKey('updatedAt')
                    ? Defined((on311880['updatedAt'] as double))
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
