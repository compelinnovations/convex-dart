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
            (on929851) => encodeValue(on929851),
            (on299667) => encodeValue(on299667),
          ),
        ),
    },
  );
}

CashCountFieldSignUpsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on985189) => (
      continueCursor: (on985189['continueCursor'] as String),
      deletedIds: (on985189['deletedIds'] as IList<dynamic>)
          .map((on669297) => CashCountFieldSignUpsId(on669297 as String))
          .toIList(),
      isDone: (on985189['isDone'] as bool),
      list: (on985189['list'] as IList<dynamic>)
          .map(
            (on726539) => (on726539 as IMap<String, dynamic>).then(
              (on370401) => (
                $_creationTime: (on370401['_creationTime'] as double),
                $_id: CashCountFieldSignUpsId(on370401['_id'] as String),
                businessName: (on370401['businessName'] as String),
                cashCountTeamId: on370401.containsKey('cashCountTeamId')
                    ? Defined<CashCountTeamsId>(
                        CashCountTeamsId(on370401['cashCountTeamId'] as String),
                      )
                    : Undefined<CashCountTeamsId>(),
                cashCountUserFullName:
                    on370401.containsKey('cashCountUserFullName')
                    ? Defined<String>(
                        (on370401['cashCountUserFullName'] as String),
                      )
                    : Undefined<String>(),
                cashCountUserId: on370401.containsKey('cashCountUserId')
                    ? Defined<CashCountAuthUsersId>(
                        CashCountAuthUsersId(
                          on370401['cashCountUserId'] as String,
                        ),
                      )
                    : Undefined<CashCountAuthUsersId>(),
                cashCountUserRole: on370401.containsKey('cashCountUserRole')
                    ? Defined<String>((on370401['cashCountUserRole'] as String))
                    : Undefined<String>(),
                commissionAmount: on370401.containsKey('commissionAmount')
                    ? Defined<double>((on370401['commissionAmount'] as double))
                    : Undefined<double>(),
                createMeta: on370401.containsKey('createMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on370401['createMeta'] as IMap<String, dynamic>).then(
                          (on598302) => (
                            action: (on598302['action'] as String),
                            details: on598302.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on598302['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on182598, on20374) =>
                                              MapEntry(on182598, on20374),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on598302.containsKey('name')
                                ? Defined<String>((on598302['name'] as String))
                                : Undefined<String>(),
                            role: on598302.containsKey('role')
                                ? Defined<String>((on598302['role'] as String))
                                : Undefined<String>(),
                            userId: on598302.containsKey('userId')
                                ? Defined<String>(
                                    (on598302['userId'] as String),
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
                createdAt: (on370401['createdAt'] as double),
                creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
                  try {
                    return FieldAgentsId(on370401['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return ShippingClientsId(on370401['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return (on370401['creatorId'] as String);
                  } catch (e) {}

                  throw Exception(
                    (on370401['creatorId'].toString() ?? "null") +
                        r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
                  );
                }()),
                dateEarned: on370401.containsKey('dateEarned')
                    ? Defined<double>((on370401['dateEarned'] as double))
                    : Undefined<double>(),
                deletedAt: on370401.containsKey('deletedAt')
                    ? Defined<double>((on370401['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on370401.containsKey('deletedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on370401['deletedMeta'] as IMap<String, dynamic>).then(
                          (on117806) => (
                            action: (on117806['action'] as String),
                            details: on117806.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on117806['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on243573, on376216) =>
                                              MapEntry(on243573, on376216),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on117806.containsKey('name')
                                ? Defined<String>((on117806['name'] as String))
                                : Undefined<String>(),
                            role: on117806.containsKey('role')
                                ? Defined<String>((on117806['role'] as String))
                                : Undefined<String>(),
                            userId: on117806.containsKey('userId')
                                ? Defined<String>(
                                    (on117806['userId'] as String),
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
                deviceId: (on370401['deviceId'] as String),
                deviceInfo: (on370401['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on344261) => (
                        deviceId: (on344261['deviceId'] as String),
                        deviceModel: (on344261['deviceModel'] as String),
                        deviceName: (on344261['deviceName'] as String),
                        deviceOs: (on344261['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on370401.containsKey('expiredAt')
                    ? Defined<double>((on370401['expiredAt'] as double))
                    : Undefined<double>(),
                fieldAgentId: FieldAgentsId(on370401['fieldAgentId'] as String),
                fieldAgentName: on370401.containsKey('fieldAgentName')
                    ? Defined<String>((on370401['fieldAgentName'] as String))
                    : Undefined<String>(),
                invalidRejectionReason:
                    on370401.containsKey('invalidRejectionReason')
                    ? Defined<String>(
                        (on370401['invalidRejectionReason'] as String),
                      )
                    : Undefined<String>(),
                mongoId: (on370401['mongoId'] as String),
                mongoTeamId: (on370401['mongoTeamId'] as String),
                monthTxnsCount: on370401.containsKey('monthTxnsCount')
                    ? Defined<double>((on370401['monthTxnsCount'] as double))
                    : Undefined<double>(),
                paidAt: on370401.containsKey('paidAt')
                    ? Defined<double>((on370401['paidAt'] as double))
                    : Undefined<double>(),
                paymentBatchId: on370401.containsKey('paymentBatchId')
                    ? Defined<FieldAgentPaymentBatchesId>(
                        FieldAgentPaymentBatchesId(
                          on370401['paymentBatchId'] as String,
                        ),
                      )
                    : Undefined<FieldAgentPaymentBatchesId>(),
                paymentStatus: on370401.containsKey('paymentStatus')
                    ? Defined<String>((on370401['paymentStatus'] as String))
                    : Undefined<String>(),
                periodEndDate: on370401.containsKey('periodEndDate')
                    ? Defined<double>((on370401['periodEndDate'] as double))
                    : Undefined<double>(),
                periodStartDate: on370401.containsKey('periodStartDate')
                    ? Defined<double>((on370401['periodStartDate'] as double))
                    : Undefined<double>(),
                phoneNumber: (on370401['phoneNumber'] as String),
                processedAt: on370401.containsKey('processedAt')
                    ? Defined<double>((on370401['processedAt'] as double))
                    : Undefined<double>(),
                referralCode: (on370401['referralCode'] as String),
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
                      if (map.containsKey(on370401['status'])) {
                        return map[on370401['status']];
                      }
                      throw Exception(
                        (on370401['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$ApprovedLiteral, $PendingLiteral, $InvalidLiteral, $RejectedLiteral>",
                      );
                    }()),
                teamId: on370401.containsKey('teamId')
                    ? Defined<String>((on370401['teamId'] as String))
                    : Undefined<String>(),
                txnsCount: on370401.containsKey('txnsCount')
                    ? Defined<double>((on370401['txnsCount'] as double))
                    : Undefined<double>(),
                updateMeta: on370401.containsKey('updateMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on370401['updateMeta'] as IMap<String, dynamic>).then(
                          (on570079) => (
                            action: (on570079['action'] as String),
                            details: on570079.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on570079['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on634091, on291345) =>
                                              MapEntry(on634091, on291345),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on570079.containsKey('name')
                                ? Defined<String>((on570079['name'] as String))
                                : Undefined<String>(),
                            role: on570079.containsKey('role')
                                ? Defined<String>((on570079['role'] as String))
                                : Undefined<String>(),
                            userId: on570079.containsKey('userId')
                                ? Defined<String>(
                                    (on570079['userId'] as String),
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
                updatedAt: on370401.containsKey('updatedAt')
                    ? Defined<double>((on370401['updatedAt'] as double))
                    : Undefined<double>(),
                weekOf: on370401.containsKey('weekOf')
                    ? Defined<String>((on370401['weekOf'] as String))
                    : Undefined<String>(),
                weekTxnsCount: on370401.containsKey('weekTxnsCount')
                    ? Defined<double>((on370401['weekTxnsCount'] as double))
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
