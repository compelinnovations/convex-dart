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
            (on536660) => encodeValue(on536660),
            (on726193) => encodeValue(on726193),
          ),
        ),
    },
  );
}

CashCountFieldSignUpsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on266278) => (
      continueCursor: (on266278['continueCursor'] as String),
      deletedIds: (on266278['deletedIds'] as IList<dynamic>)
          .map((on636800) => CashCountFieldSignUpsId(on636800 as String))
          .toIList(),
      isDone: (on266278['isDone'] as bool),
      list: (on266278['list'] as IList<dynamic>)
          .map(
            (on261783) => (on261783 as IMap<String, dynamic>).then(
              (on790846) => (
                $_creationTime: (on790846['_creationTime'] as double),
                $_id: CashCountFieldSignUpsId(on790846['_id'] as String),
                businessName: (on790846['businessName'] as String),
                cashCountTeamId: on790846.containsKey('cashCountTeamId')
                    ? Defined<CashCountTeamsId>(
                        CashCountTeamsId(on790846['cashCountTeamId'] as String),
                      )
                    : Undefined<CashCountTeamsId>(),
                cashCountUserFullName:
                    on790846.containsKey('cashCountUserFullName')
                    ? Defined<String>(
                        (on790846['cashCountUserFullName'] as String),
                      )
                    : Undefined<String>(),
                cashCountUserId: on790846.containsKey('cashCountUserId')
                    ? Defined<CashCountAuthUsersId>(
                        CashCountAuthUsersId(
                          on790846['cashCountUserId'] as String,
                        ),
                      )
                    : Undefined<CashCountAuthUsersId>(),
                cashCountUserRole: on790846.containsKey('cashCountUserRole')
                    ? Defined<String>((on790846['cashCountUserRole'] as String))
                    : Undefined<String>(),
                commissionAmount: on790846.containsKey('commissionAmount')
                    ? Defined<double>((on790846['commissionAmount'] as double))
                    : Undefined<double>(),
                createMeta: on790846.containsKey('createMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on790846['createMeta'] as IMap<String, dynamic>).then(
                          (on199449) => (
                            action: (on199449['action'] as String),
                            details: on199449.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on199449['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on636135, on515939) =>
                                              MapEntry(on636135, on515939),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on199449.containsKey('name')
                                ? Defined<String>((on199449['name'] as String))
                                : Undefined<String>(),
                            role: on199449.containsKey('role')
                                ? Defined<String>((on199449['role'] as String))
                                : Undefined<String>(),
                            userId: on199449.containsKey('userId')
                                ? Defined<String>(
                                    (on199449['userId'] as String),
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
                createdAt: (on790846['createdAt'] as double),
                creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
                  try {
                    return FieldAgentsId(on790846['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return ShippingClientsId(on790846['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return (on790846['creatorId'] as String);
                  } catch (e) {}

                  throw Exception(
                    (on790846['creatorId'].toString() ?? "null") +
                        r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
                  );
                }()),
                dateEarned: on790846.containsKey('dateEarned')
                    ? Defined<double>((on790846['dateEarned'] as double))
                    : Undefined<double>(),
                deletedAt: on790846.containsKey('deletedAt')
                    ? Defined<double>((on790846['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on790846.containsKey('deletedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on790846['deletedMeta'] as IMap<String, dynamic>).then(
                          (on112125) => (
                            action: (on112125['action'] as String),
                            details: on112125.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on112125['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on179693, on35122) =>
                                              MapEntry(on179693, on35122),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on112125.containsKey('name')
                                ? Defined<String>((on112125['name'] as String))
                                : Undefined<String>(),
                            role: on112125.containsKey('role')
                                ? Defined<String>((on112125['role'] as String))
                                : Undefined<String>(),
                            userId: on112125.containsKey('userId')
                                ? Defined<String>(
                                    (on112125['userId'] as String),
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
                deviceId: (on790846['deviceId'] as String),
                deviceInfo: (on790846['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on588913) => (
                        deviceId: (on588913['deviceId'] as String),
                        deviceModel: (on588913['deviceModel'] as String),
                        deviceName: (on588913['deviceName'] as String),
                        deviceOs: (on588913['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on790846.containsKey('expiredAt')
                    ? Defined<double>((on790846['expiredAt'] as double))
                    : Undefined<double>(),
                fieldAgentId: FieldAgentsId(on790846['fieldAgentId'] as String),
                fieldAgentName: on790846.containsKey('fieldAgentName')
                    ? Defined<String>((on790846['fieldAgentName'] as String))
                    : Undefined<String>(),
                invalidRejectionReason:
                    on790846.containsKey('invalidRejectionReason')
                    ? Defined<String>(
                        (on790846['invalidRejectionReason'] as String),
                      )
                    : Undefined<String>(),
                mongoId: (on790846['mongoId'] as String),
                mongoTeamId: (on790846['mongoTeamId'] as String),
                monthTxnsCount: on790846.containsKey('monthTxnsCount')
                    ? Defined<double>((on790846['monthTxnsCount'] as double))
                    : Undefined<double>(),
                paidAt: on790846.containsKey('paidAt')
                    ? Defined<double>((on790846['paidAt'] as double))
                    : Undefined<double>(),
                paymentBatchId: on790846.containsKey('paymentBatchId')
                    ? Defined<FieldAgentPaymentBatchesId>(
                        FieldAgentPaymentBatchesId(
                          on790846['paymentBatchId'] as String,
                        ),
                      )
                    : Undefined<FieldAgentPaymentBatchesId>(),
                paymentStatus: on790846.containsKey('paymentStatus')
                    ? Defined<String>((on790846['paymentStatus'] as String))
                    : Undefined<String>(),
                periodEndDate: on790846.containsKey('periodEndDate')
                    ? Defined<double>((on790846['periodEndDate'] as double))
                    : Undefined<double>(),
                periodStartDate: on790846.containsKey('periodStartDate')
                    ? Defined<double>((on790846['periodStartDate'] as double))
                    : Undefined<double>(),
                phoneNumber: (on790846['phoneNumber'] as String),
                processedAt: on790846.containsKey('processedAt')
                    ? Defined<double>((on790846['processedAt'] as double))
                    : Undefined<double>(),
                referralCode: (on790846['referralCode'] as String),
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
                      if (map.containsKey(on790846['status'])) {
                        return map[on790846['status']];
                      }
                      throw Exception(
                        (on790846['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$ApprovedLiteral, $PendingLiteral, $InvalidLiteral, $RejectedLiteral>",
                      );
                    }()),
                teamId: on790846.containsKey('teamId')
                    ? Defined<String>((on790846['teamId'] as String))
                    : Undefined<String>(),
                txnsCount: on790846.containsKey('txnsCount')
                    ? Defined<double>((on790846['txnsCount'] as double))
                    : Undefined<double>(),
                updateMeta: on790846.containsKey('updateMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on790846['updateMeta'] as IMap<String, dynamic>).then(
                          (on508431) => (
                            action: (on508431['action'] as String),
                            details: on508431.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on508431['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on542321, on782893) =>
                                              MapEntry(on542321, on782893),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on508431.containsKey('name')
                                ? Defined<String>((on508431['name'] as String))
                                : Undefined<String>(),
                            role: on508431.containsKey('role')
                                ? Defined<String>((on508431['role'] as String))
                                : Undefined<String>(),
                            userId: on508431.containsKey('userId')
                                ? Defined<String>(
                                    (on508431['userId'] as String),
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
                updatedAt: on790846.containsKey('updatedAt')
                    ? Defined<double>((on790846['updatedAt'] as double))
                    : Undefined<double>(),
                weekOf: on790846.containsKey('weekOf')
                    ? Defined<String>((on790846['weekOf'] as String))
                    : Undefined<String>(),
                weekTxnsCount: on790846.containsKey('weekTxnsCount')
                    ? Defined<double>((on790846['weekTxnsCount'] as double))
                    : Undefined<double>(),
              ),
            ),
          )
          .toIList(),
    ),
  );
}
