// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "../../models/json/list_query.dart";
import "../../functions/fieldAgentCashCount/listCashCountFieldPendingSignUps.dart"
    show CashCountFieldSignUpsDoc;

final listCashCountFieldInvalidSignUps =
    QueryOperation<ListQuery, CashCountFieldSignUpsDoc>(
      'app/fieldAgentCashCount:listCashCountFieldInvalidSignUps',
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
            (on862088) => encodeValue(on862088),
            (on974039) => encodeValue(on974039),
          ),
        ),
    },
  );
}

CashCountFieldSignUpsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on103133) => (
      continueCursor: (on103133['continueCursor'] as String),
      deletedIds: (on103133['deletedIds'] as IList<dynamic>)
          .map((on453323) => CashCountFieldSignUpsId(on453323 as String))
          .toIList(),
      isDone: (on103133['isDone'] as bool),
      list: (on103133['list'] as IList<dynamic>)
          .map(
            (on59284) => (on59284 as IMap<String, dynamic>).then(
              (on264275) => (
                $_creationTime: (on264275['_creationTime'] as double),
                $_id: CashCountFieldSignUpsId(on264275['_id'] as String),
                businessName: (on264275['businessName'] as String),
                cashCountTeamId: on264275.containsKey('cashCountTeamId')
                    ? Defined<CashCountTeamsId>(
                        CashCountTeamsId(on264275['cashCountTeamId'] as String),
                      )
                    : Undefined<CashCountTeamsId>(),
                cashCountUserFullName:
                    on264275.containsKey('cashCountUserFullName')
                    ? Defined<String>(
                        (on264275['cashCountUserFullName'] as String),
                      )
                    : Undefined<String>(),
                cashCountUserId: on264275.containsKey('cashCountUserId')
                    ? Defined<CashCountAuthUsersId>(
                        CashCountAuthUsersId(
                          on264275['cashCountUserId'] as String,
                        ),
                      )
                    : Undefined<CashCountAuthUsersId>(),
                cashCountUserRole: on264275.containsKey('cashCountUserRole')
                    ? Defined<String>((on264275['cashCountUserRole'] as String))
                    : Undefined<String>(),
                commissionAmount: on264275.containsKey('commissionAmount')
                    ? Defined<double>((on264275['commissionAmount'] as double))
                    : Undefined<double>(),
                createMeta: on264275.containsKey('createMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on264275['createMeta'] as IMap<String, dynamic>).then(
                          (on643117) => (
                            action: (on643117['action'] as String),
                            details: on643117.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on643117['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on869766, on526537) =>
                                              MapEntry(on869766, on526537),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on643117.containsKey('name')
                                ? Defined<String>((on643117['name'] as String))
                                : Undefined<String>(),
                            role: on643117.containsKey('role')
                                ? Defined<String>((on643117['role'] as String))
                                : Undefined<String>(),
                            userId: on643117.containsKey('userId')
                                ? Defined<String>(
                                    (on643117['userId'] as String),
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
                createdAt: (on264275['createdAt'] as double),
                creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
                  try {
                    return FieldAgentsId(on264275['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return ShippingClientsId(on264275['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return (on264275['creatorId'] as String);
                  } catch (e) {}

                  throw Exception(
                    (on264275['creatorId'].toString() ?? "null") +
                        r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
                  );
                }()),
                dateEarned: on264275.containsKey('dateEarned')
                    ? Defined<double>((on264275['dateEarned'] as double))
                    : Undefined<double>(),
                deletedAt: on264275.containsKey('deletedAt')
                    ? Defined<double>((on264275['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on264275.containsKey('deletedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on264275['deletedMeta'] as IMap<String, dynamic>).then(
                          (on968424) => (
                            action: (on968424['action'] as String),
                            details: on968424.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on968424['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on386570, on166163) =>
                                              MapEntry(on386570, on166163),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on968424.containsKey('name')
                                ? Defined<String>((on968424['name'] as String))
                                : Undefined<String>(),
                            role: on968424.containsKey('role')
                                ? Defined<String>((on968424['role'] as String))
                                : Undefined<String>(),
                            userId: on968424.containsKey('userId')
                                ? Defined<String>(
                                    (on968424['userId'] as String),
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
                deviceId: (on264275['deviceId'] as String),
                deviceInfo: (on264275['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on321299) => (
                        deviceId: (on321299['deviceId'] as String),
                        deviceModel: (on321299['deviceModel'] as String),
                        deviceName: (on321299['deviceName'] as String),
                        deviceOs: (on321299['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on264275.containsKey('expiredAt')
                    ? Defined<double>((on264275['expiredAt'] as double))
                    : Undefined<double>(),
                fieldAgentId: FieldAgentsId(on264275['fieldAgentId'] as String),
                fieldAgentName: on264275.containsKey('fieldAgentName')
                    ? Defined<String>((on264275['fieldAgentName'] as String))
                    : Undefined<String>(),
                invalidRejectionReason:
                    on264275.containsKey('invalidRejectionReason')
                    ? Defined<String>(
                        (on264275['invalidRejectionReason'] as String),
                      )
                    : Undefined<String>(),
                mongoId: (on264275['mongoId'] as String),
                mongoTeamId: (on264275['mongoTeamId'] as String),
                monthTxnsCount: on264275.containsKey('monthTxnsCount')
                    ? Defined<double>((on264275['monthTxnsCount'] as double))
                    : Undefined<double>(),
                paidAt: on264275.containsKey('paidAt')
                    ? Defined<double>((on264275['paidAt'] as double))
                    : Undefined<double>(),
                paymentBatchId: on264275.containsKey('paymentBatchId')
                    ? Defined<FieldAgentPaymentBatchesId>(
                        FieldAgentPaymentBatchesId(
                          on264275['paymentBatchId'] as String,
                        ),
                      )
                    : Undefined<FieldAgentPaymentBatchesId>(),
                paymentStatus: on264275.containsKey('paymentStatus')
                    ? Defined<String>((on264275['paymentStatus'] as String))
                    : Undefined<String>(),
                periodEndDate: on264275.containsKey('periodEndDate')
                    ? Defined<double>((on264275['periodEndDate'] as double))
                    : Undefined<double>(),
                periodStartDate: on264275.containsKey('periodStartDate')
                    ? Defined<double>((on264275['periodStartDate'] as double))
                    : Undefined<double>(),
                phoneNumber: (on264275['phoneNumber'] as String),
                processedAt: on264275.containsKey('processedAt')
                    ? Defined<double>((on264275['processedAt'] as double))
                    : Undefined<double>(),
                referralCode: (on264275['referralCode'] as String),
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
                      if (map.containsKey(on264275['status'])) {
                        return map[on264275['status']];
                      }
                      throw Exception(
                        (on264275['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$ApprovedLiteral, $PendingLiteral, $InvalidLiteral, $RejectedLiteral>",
                      );
                    }()),
                teamId: on264275.containsKey('teamId')
                    ? Defined<String>((on264275['teamId'] as String))
                    : Undefined<String>(),
                txnsCount: on264275.containsKey('txnsCount')
                    ? Defined<double>((on264275['txnsCount'] as double))
                    : Undefined<double>(),
                updateMeta: on264275.containsKey('updateMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on264275['updateMeta'] as IMap<String, dynamic>).then(
                          (on599176) => (
                            action: (on599176['action'] as String),
                            details: on599176.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on599176['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on706521, on803763) =>
                                              MapEntry(on706521, on803763),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on599176.containsKey('name')
                                ? Defined<String>((on599176['name'] as String))
                                : Undefined<String>(),
                            role: on599176.containsKey('role')
                                ? Defined<String>((on599176['role'] as String))
                                : Undefined<String>(),
                            userId: on599176.containsKey('userId')
                                ? Defined<String>(
                                    (on599176['userId'] as String),
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
                updatedAt: on264275.containsKey('updatedAt')
                    ? Defined<double>((on264275['updatedAt'] as double))
                    : Undefined<double>(),
                weekOf: on264275.containsKey('weekOf')
                    ? Defined<String>((on264275['weekOf'] as String))
                    : Undefined<String>(),
                weekTxnsCount: on264275.containsKey('weekTxnsCount')
                    ? Defined<double>((on264275['weekTxnsCount'] as double))
                    : Undefined<double>(),
              ),
            ),
          )
          .toIList(),
    ),
  );
}
