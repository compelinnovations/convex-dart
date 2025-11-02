// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "../../models/json/list_query.dart";

final listCashCountFieldPendingSignUps =
    QueryOperation<ListQuery, CashCountFieldSignUpsDoc>(
      'app/fieldAgentCashCount:listCashCountFieldPendingSignUps',
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
            (on901112) => encodeValue(on901112),
            (on608080) => encodeValue(on608080),
          ),
        ),
    },
  );
}

CashCountFieldSignUpsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on507396) => (
      continueCursor: (on507396['continueCursor'] as String),
      deletedIds: (on507396['deletedIds'] as IList<dynamic>)
          .map((on553822) => CashCountFieldSignUpsId(on553822 as String))
          .toIList(),
      isDone: (on507396['isDone'] as bool),
      list: (on507396['list'] as IList<dynamic>)
          .map(
            (on775187) => (on775187 as IMap<String, dynamic>).then(
              (on40116) => (
                $_creationTime: (on40116['_creationTime'] as double),
                $_id: CashCountFieldSignUpsId(on40116['_id'] as String),
                businessName: (on40116['businessName'] as String),
                cashCountTeamId: on40116.containsKey('cashCountTeamId')
                    ? Defined<CashCountTeamsId>(
                        CashCountTeamsId(on40116['cashCountTeamId'] as String),
                      )
                    : Undefined<CashCountTeamsId>(),
                cashCountUserFullName:
                    on40116.containsKey('cashCountUserFullName')
                    ? Defined<String>(
                        (on40116['cashCountUserFullName'] as String),
                      )
                    : Undefined<String>(),
                cashCountUserId: on40116.containsKey('cashCountUserId')
                    ? Defined<CashCountAuthUsersId>(
                        CashCountAuthUsersId(
                          on40116['cashCountUserId'] as String,
                        ),
                      )
                    : Undefined<CashCountAuthUsersId>(),
                cashCountUserRole: on40116.containsKey('cashCountUserRole')
                    ? Defined<String>((on40116['cashCountUserRole'] as String))
                    : Undefined<String>(),
                commissionAmount: on40116.containsKey('commissionAmount')
                    ? Defined<double>((on40116['commissionAmount'] as double))
                    : Undefined<double>(),
                createMeta: on40116.containsKey('createMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on40116['createMeta'] as IMap<String, dynamic>).then(
                          (on568557) => (
                            action: (on568557['action'] as String),
                            details: on568557.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on568557['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on953158, on819496) =>
                                              MapEntry(on953158, on819496),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on568557.containsKey('name')
                                ? Defined<String>((on568557['name'] as String))
                                : Undefined<String>(),
                            role: on568557.containsKey('role')
                                ? Defined<String>((on568557['role'] as String))
                                : Undefined<String>(),
                            userId: on568557.containsKey('userId')
                                ? Defined<String>(
                                    (on568557['userId'] as String),
                                  )
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
                createdAt: (on40116['createdAt'] as double),
                creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
                  try {
                    return FieldAgentsId(on40116['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return ShippingClientsId(on40116['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return (on40116['creatorId'] as String);
                  } catch (e) {}

                  throw Exception(
                    (on40116['creatorId'].toString() ?? "null") +
                        r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
                  );
                }()),
                dateEarned: on40116.containsKey('dateEarned')
                    ? Defined<double>((on40116['dateEarned'] as double))
                    : Undefined<double>(),
                deletedAt: on40116.containsKey('deletedAt')
                    ? Defined<double>((on40116['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on40116.containsKey('deletedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on40116['deletedMeta'] as IMap<String, dynamic>).then(
                          (on850432) => (
                            action: (on850432['action'] as String),
                            details: on850432.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on850432['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on445266, on267088) =>
                                              MapEntry(on445266, on267088),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on850432.containsKey('name')
                                ? Defined<String>((on850432['name'] as String))
                                : Undefined<String>(),
                            role: on850432.containsKey('role')
                                ? Defined<String>((on850432['role'] as String))
                                : Undefined<String>(),
                            userId: on850432.containsKey('userId')
                                ? Defined<String>(
                                    (on850432['userId'] as String),
                                  )
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
                deviceId: (on40116['deviceId'] as String),
                deviceInfo: (on40116['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on724149) => (
                        deviceId: (on724149['deviceId'] as String),
                        deviceModel: (on724149['deviceModel'] as String),
                        deviceName: (on724149['deviceName'] as String),
                        deviceOs: (on724149['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on40116.containsKey('expiredAt')
                    ? Defined<double>((on40116['expiredAt'] as double))
                    : Undefined<double>(),
                fieldAgentId: FieldAgentsId(on40116['fieldAgentId'] as String),
                fieldAgentName: on40116.containsKey('fieldAgentName')
                    ? Defined<String>((on40116['fieldAgentName'] as String))
                    : Undefined<String>(),
                invalidRejectionReason:
                    on40116.containsKey('invalidRejectionReason')
                    ? Defined<String>(
                        (on40116['invalidRejectionReason'] as String),
                      )
                    : Undefined<String>(),
                mongoId: (on40116['mongoId'] as String),
                mongoTeamId: (on40116['mongoTeamId'] as String),
                monthTxnsCount: on40116.containsKey('monthTxnsCount')
                    ? Defined<double>((on40116['monthTxnsCount'] as double))
                    : Undefined<double>(),
                paidAt: on40116.containsKey('paidAt')
                    ? Defined<double>((on40116['paidAt'] as double))
                    : Undefined<double>(),
                paymentBatchId: on40116.containsKey('paymentBatchId')
                    ? Defined<FieldAgentPaymentBatchesId>(
                        FieldAgentPaymentBatchesId(
                          on40116['paymentBatchId'] as String,
                        ),
                      )
                    : Undefined<FieldAgentPaymentBatchesId>(),
                paymentStatus: on40116.containsKey('paymentStatus')
                    ? Defined<String>((on40116['paymentStatus'] as String))
                    : Undefined<String>(),
                periodEndDate: on40116.containsKey('periodEndDate')
                    ? Defined<double>((on40116['periodEndDate'] as double))
                    : Undefined<double>(),
                periodStartDate: on40116.containsKey('periodStartDate')
                    ? Defined<double>((on40116['periodStartDate'] as double))
                    : Undefined<double>(),
                phoneNumber: (on40116['phoneNumber'] as String),
                processedAt: on40116.containsKey('processedAt')
                    ? Defined<double>((on40116['processedAt'] as double))
                    : Undefined<double>(),
                referralCode: (on40116['referralCode'] as String),
                status:
                    Union4<
                      $ApprovedLiteral,
                      $PendingLiteral,
                      $InvalidLiteral,
                      $RejectedLiteral
                    >(() {
                      final map = {
                        'Approved': $ApprovedLiteral(),
                        'Pending': $PendingLiteral(),
                        'Invalid': $InvalidLiteral(),
                        'Rejected': $RejectedLiteral(),
                      };
                      if (map.containsKey(on40116['status'])) {
                        return map[on40116['status']];
                      }
                      throw Exception(
                        (on40116['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$ApprovedLiteral, $PendingLiteral, $InvalidLiteral, $RejectedLiteral>",
                      );
                    }()),
                teamId: on40116.containsKey('teamId')
                    ? Defined<String>((on40116['teamId'] as String))
                    : Undefined<String>(),
                txnsCount: on40116.containsKey('txnsCount')
                    ? Defined<double>((on40116['txnsCount'] as double))
                    : Undefined<double>(),
                updateMeta: on40116.containsKey('updateMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on40116['updateMeta'] as IMap<String, dynamic>).then(
                          (on675256) => (
                            action: (on675256['action'] as String),
                            details: on675256.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on675256['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on128236, on226634) =>
                                              MapEntry(on128236, on226634),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on675256.containsKey('name')
                                ? Defined<String>((on675256['name'] as String))
                                : Undefined<String>(),
                            role: on675256.containsKey('role')
                                ? Defined<String>((on675256['role'] as String))
                                : Undefined<String>(),
                            userId: on675256.containsKey('userId')
                                ? Defined<String>(
                                    (on675256['userId'] as String),
                                  )
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
                updatedAt: on40116.containsKey('updatedAt')
                    ? Defined<double>((on40116['updatedAt'] as double))
                    : Undefined<double>(),
                weekOf: on40116.containsKey('weekOf')
                    ? Defined<String>((on40116['weekOf'] as String))
                    : Undefined<String>(),
                weekTxnsCount: on40116.containsKey('weekTxnsCount')
                    ? Defined<double>((on40116['weekTxnsCount'] as double))
                    : Undefined<double>(),
              ),
            ),
          )
          .toIList(),
    ),
  );
}

typedef CashCountFieldSignUpsDoc = ({
  String continueCursor,
  IList<CashCountFieldSignUpsId> deletedIds,
  bool isDone,
  IList<
    ({
      double $_creationTime,
      CashCountFieldSignUpsId $_id,
      String businessName,
      Optional<CashCountTeamsId> cashCountTeamId,
      Optional<String> cashCountUserFullName,
      Optional<CashCountAuthUsersId> cashCountUserId,
      Optional<String> cashCountUserRole,
      Optional<double> commissionAmount,
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
      Optional<double> dateEarned,
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
      Optional<String> fieldAgentName,
      Optional<String> invalidRejectionReason,
      String mongoId,
      String mongoTeamId,
      Optional<double> monthTxnsCount,
      Optional<double> paidAt,
      Optional<FieldAgentPaymentBatchesId> paymentBatchId,
      Optional<String> paymentStatus,
      Optional<double> periodEndDate,
      Optional<double> periodStartDate,
      String phoneNumber,
      Optional<double> processedAt,
      String referralCode,
      Union4<
        $ApprovedLiteral,
        $PendingLiteral,
        $InvalidLiteral,
        $RejectedLiteral
      >
      status,
      Optional<String> teamId,
      Optional<double> txnsCount,
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
      Optional<String> weekOf,
      Optional<double> weekTxnsCount,
    })
  >
  list,
});
