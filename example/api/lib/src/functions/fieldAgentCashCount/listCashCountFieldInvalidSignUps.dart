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
            (on799843) => encodeValue(on799843),
            (on235107) => encodeValue(on235107),
          ),
        ),
    },
  );
}

CashCountFieldSignUpsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on388050) => (
      continueCursor: (on388050['continueCursor'] as String),
      deletedIds: (on388050['deletedIds'] as IList<dynamic>)
          .map((on87383) => CashCountFieldSignUpsId(on87383 as String))
          .toIList(),
      isDone: (on388050['isDone'] as bool),
      list: (on388050['list'] as IList<dynamic>)
          .map(
            (on165877) => (on165877 as IMap<String, dynamic>).then(
              (on398538) => (
                $_creationTime: (on398538['_creationTime'] as double),
                $_id: CashCountFieldSignUpsId(on398538['_id'] as String),
                businessName: (on398538['businessName'] as String),
                cashCountTeamId: on398538.containsKey('cashCountTeamId')
                    ? Defined<CashCountTeamsId>(
                        CashCountTeamsId(on398538['cashCountTeamId'] as String),
                      )
                    : Undefined<CashCountTeamsId>(),
                cashCountUserFullName:
                    on398538.containsKey('cashCountUserFullName')
                    ? Defined<String>(
                        (on398538['cashCountUserFullName'] as String),
                      )
                    : Undefined<String>(),
                cashCountUserId: on398538.containsKey('cashCountUserId')
                    ? Defined<CashCountAuthUsersId>(
                        CashCountAuthUsersId(
                          on398538['cashCountUserId'] as String,
                        ),
                      )
                    : Undefined<CashCountAuthUsersId>(),
                cashCountUserRole: on398538.containsKey('cashCountUserRole')
                    ? Defined<String>((on398538['cashCountUserRole'] as String))
                    : Undefined<String>(),
                commissionAmount: on398538.containsKey('commissionAmount')
                    ? Defined<double>((on398538['commissionAmount'] as double))
                    : Undefined<double>(),
                createMeta: on398538.containsKey('createMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on398538['createMeta'] as IMap<String, dynamic>).then(
                          (on594238) => (
                            action: (on594238['action'] as String),
                            details: on594238.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on594238['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on677240, on157062) =>
                                              MapEntry(on677240, on157062),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on594238.containsKey('name')
                                ? Defined<String>((on594238['name'] as String))
                                : Undefined<String>(),
                            role: on594238.containsKey('role')
                                ? Defined<String>((on594238['role'] as String))
                                : Undefined<String>(),
                            userId: on594238.containsKey('userId')
                                ? Defined<String>(
                                    (on594238['userId'] as String),
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
                createdAt: (on398538['createdAt'] as double),
                creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
                  try {
                    return FieldAgentsId(on398538['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return ShippingClientsId(on398538['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return (on398538['creatorId'] as String);
                  } catch (e) {}

                  throw Exception(
                    (on398538['creatorId'].toString() ?? "null") +
                        r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
                  );
                }()),
                dateEarned: on398538.containsKey('dateEarned')
                    ? Defined<double>((on398538['dateEarned'] as double))
                    : Undefined<double>(),
                deletedAt: on398538.containsKey('deletedAt')
                    ? Defined<double>((on398538['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on398538.containsKey('deletedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on398538['deletedMeta'] as IMap<String, dynamic>).then(
                          (on74171) => (
                            action: (on74171['action'] as String),
                            details: on74171.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on74171['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on531859, on412322) =>
                                              MapEntry(on531859, on412322),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on74171.containsKey('name')
                                ? Defined<String>((on74171['name'] as String))
                                : Undefined<String>(),
                            role: on74171.containsKey('role')
                                ? Defined<String>((on74171['role'] as String))
                                : Undefined<String>(),
                            userId: on74171.containsKey('userId')
                                ? Defined<String>((on74171['userId'] as String))
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
                deviceId: (on398538['deviceId'] as String),
                deviceInfo: (on398538['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on758083) => (
                        deviceId: (on758083['deviceId'] as String),
                        deviceModel: (on758083['deviceModel'] as String),
                        deviceName: (on758083['deviceName'] as String),
                        deviceOs: (on758083['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on398538.containsKey('expiredAt')
                    ? Defined<double>((on398538['expiredAt'] as double))
                    : Undefined<double>(),
                fieldAgentId: FieldAgentsId(on398538['fieldAgentId'] as String),
                fieldAgentName: on398538.containsKey('fieldAgentName')
                    ? Defined<String>((on398538['fieldAgentName'] as String))
                    : Undefined<String>(),
                invalidRejectionReason:
                    on398538.containsKey('invalidRejectionReason')
                    ? Defined<String>(
                        (on398538['invalidRejectionReason'] as String),
                      )
                    : Undefined<String>(),
                mongoId: (on398538['mongoId'] as String),
                mongoTeamId: (on398538['mongoTeamId'] as String),
                monthTxnsCount: on398538.containsKey('monthTxnsCount')
                    ? Defined<double>((on398538['monthTxnsCount'] as double))
                    : Undefined<double>(),
                paidAt: on398538.containsKey('paidAt')
                    ? Defined<double>((on398538['paidAt'] as double))
                    : Undefined<double>(),
                paymentBatchId: on398538.containsKey('paymentBatchId')
                    ? Defined<FieldAgentPaymentBatchesId>(
                        FieldAgentPaymentBatchesId(
                          on398538['paymentBatchId'] as String,
                        ),
                      )
                    : Undefined<FieldAgentPaymentBatchesId>(),
                paymentStatus: on398538.containsKey('paymentStatus')
                    ? Defined<String>((on398538['paymentStatus'] as String))
                    : Undefined<String>(),
                periodEndDate: on398538.containsKey('periodEndDate')
                    ? Defined<double>((on398538['periodEndDate'] as double))
                    : Undefined<double>(),
                periodStartDate: on398538.containsKey('periodStartDate')
                    ? Defined<double>((on398538['periodStartDate'] as double))
                    : Undefined<double>(),
                phoneNumber: (on398538['phoneNumber'] as String),
                processedAt: on398538.containsKey('processedAt')
                    ? Defined<double>((on398538['processedAt'] as double))
                    : Undefined<double>(),
                referralCode: (on398538['referralCode'] as String),
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
                      if (map.containsKey(on398538['status'])) {
                        return map[on398538['status']];
                      }
                      throw Exception(
                        (on398538['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$ApprovedLiteral, $PendingLiteral, $InvalidLiteral, $RejectedLiteral>",
                      );
                    }()),
                teamId: on398538.containsKey('teamId')
                    ? Defined<String>((on398538['teamId'] as String))
                    : Undefined<String>(),
                txnsCount: on398538.containsKey('txnsCount')
                    ? Defined<double>((on398538['txnsCount'] as double))
                    : Undefined<double>(),
                updateMeta: on398538.containsKey('updateMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on398538['updateMeta'] as IMap<String, dynamic>).then(
                          (on959087) => (
                            action: (on959087['action'] as String),
                            details: on959087.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on959087['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on730339, on654021) =>
                                              MapEntry(on730339, on654021),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on959087.containsKey('name')
                                ? Defined<String>((on959087['name'] as String))
                                : Undefined<String>(),
                            role: on959087.containsKey('role')
                                ? Defined<String>((on959087['role'] as String))
                                : Undefined<String>(),
                            userId: on959087.containsKey('userId')
                                ? Defined<String>(
                                    (on959087['userId'] as String),
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
                updatedAt: on398538.containsKey('updatedAt')
                    ? Defined<double>((on398538['updatedAt'] as double))
                    : Undefined<double>(),
                weekOf: on398538.containsKey('weekOf')
                    ? Defined<String>((on398538['weekOf'] as String))
                    : Undefined<String>(),
                weekTxnsCount: on398538.containsKey('weekTxnsCount')
                    ? Defined<double>((on398538['weekTxnsCount'] as double))
                    : Undefined<double>(),
              ),
            ),
          )
          .toIList(),
    ),
  );
}
