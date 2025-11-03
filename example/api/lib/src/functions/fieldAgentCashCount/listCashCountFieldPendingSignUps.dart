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
            (on540229) => encodeValue(on540229),
            (on760238) => encodeValue(on760238),
          ),
        ),
    },
  );
}

CashCountFieldSignUpsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on710918) => (
      continueCursor: (on710918['continueCursor'] as String),
      deletedIds: (on710918['deletedIds'] as IList<dynamic>)
          .map((on852588) => CashCountFieldSignUpsId(on852588 as String))
          .toIList(),
      isDone: (on710918['isDone'] as bool),
      list: (on710918['list'] as IList<dynamic>)
          .map(
            (on257540) => (on257540 as IMap<String, dynamic>).then(
              (on46947) => (
                $_creationTime: (on46947['_creationTime'] as double),
                $_id: CashCountFieldSignUpsId(on46947['_id'] as String),
                businessName: (on46947['businessName'] as String),
                cashCountTeamId: on46947.containsKey('cashCountTeamId')
                    ? Defined<CashCountTeamsId>(
                        CashCountTeamsId(on46947['cashCountTeamId'] as String),
                      )
                    : Undefined<CashCountTeamsId>(),
                cashCountUserFullName:
                    on46947.containsKey('cashCountUserFullName')
                    ? Defined<String>(
                        (on46947['cashCountUserFullName'] as String),
                      )
                    : Undefined<String>(),
                cashCountUserId: on46947.containsKey('cashCountUserId')
                    ? Defined<CashCountAuthUsersId>(
                        CashCountAuthUsersId(
                          on46947['cashCountUserId'] as String,
                        ),
                      )
                    : Undefined<CashCountAuthUsersId>(),
                cashCountUserRole: on46947.containsKey('cashCountUserRole')
                    ? Defined<String>((on46947['cashCountUserRole'] as String))
                    : Undefined<String>(),
                commissionAmount: on46947.containsKey('commissionAmount')
                    ? Defined<double>((on46947['commissionAmount'] as double))
                    : Undefined<double>(),
                createMeta: on46947.containsKey('createMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on46947['createMeta'] as IMap<String, dynamic>).then(
                          (on718177) => (
                            action: (on718177['action'] as String),
                            details: on718177.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on718177['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on812444, on433559) =>
                                              MapEntry(on812444, on433559),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on718177.containsKey('name')
                                ? Defined<String>((on718177['name'] as String))
                                : Undefined<String>(),
                            role: on718177.containsKey('role')
                                ? Defined<String>((on718177['role'] as String))
                                : Undefined<String>(),
                            userId: on718177.containsKey('userId')
                                ? Defined<String>(
                                    (on718177['userId'] as String),
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
                createdAt: (on46947['createdAt'] as double),
                creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
                  try {
                    return FieldAgentsId(on46947['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return ShippingClientsId(on46947['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return (on46947['creatorId'] as String);
                  } catch (e) {}

                  throw Exception(
                    (on46947['creatorId'].toString() ?? "null") +
                        r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
                  );
                }()),
                dateEarned: on46947.containsKey('dateEarned')
                    ? Defined<double>((on46947['dateEarned'] as double))
                    : Undefined<double>(),
                deletedAt: on46947.containsKey('deletedAt')
                    ? Defined<double>((on46947['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on46947.containsKey('deletedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on46947['deletedMeta'] as IMap<String, dynamic>).then(
                          (on28368) => (
                            action: (on28368['action'] as String),
                            details: on28368.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on28368['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on656782, on870788) =>
                                              MapEntry(on656782, on870788),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on28368.containsKey('name')
                                ? Defined<String>((on28368['name'] as String))
                                : Undefined<String>(),
                            role: on28368.containsKey('role')
                                ? Defined<String>((on28368['role'] as String))
                                : Undefined<String>(),
                            userId: on28368.containsKey('userId')
                                ? Defined<String>((on28368['userId'] as String))
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
                deviceId: (on46947['deviceId'] as String),
                deviceInfo: (on46947['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on108692) => (
                        deviceId: (on108692['deviceId'] as String),
                        deviceModel: (on108692['deviceModel'] as String),
                        deviceName: (on108692['deviceName'] as String),
                        deviceOs: (on108692['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on46947.containsKey('expiredAt')
                    ? Defined<double>((on46947['expiredAt'] as double))
                    : Undefined<double>(),
                fieldAgentId: FieldAgentsId(on46947['fieldAgentId'] as String),
                fieldAgentName: on46947.containsKey('fieldAgentName')
                    ? Defined<String>((on46947['fieldAgentName'] as String))
                    : Undefined<String>(),
                invalidRejectionReason:
                    on46947.containsKey('invalidRejectionReason')
                    ? Defined<String>(
                        (on46947['invalidRejectionReason'] as String),
                      )
                    : Undefined<String>(),
                mongoId: (on46947['mongoId'] as String),
                mongoTeamId: (on46947['mongoTeamId'] as String),
                monthTxnsCount: on46947.containsKey('monthTxnsCount')
                    ? Defined<double>((on46947['monthTxnsCount'] as double))
                    : Undefined<double>(),
                paidAt: on46947.containsKey('paidAt')
                    ? Defined<double>((on46947['paidAt'] as double))
                    : Undefined<double>(),
                paymentBatchId: on46947.containsKey('paymentBatchId')
                    ? Defined<FieldAgentPaymentBatchesId>(
                        FieldAgentPaymentBatchesId(
                          on46947['paymentBatchId'] as String,
                        ),
                      )
                    : Undefined<FieldAgentPaymentBatchesId>(),
                paymentStatus: on46947.containsKey('paymentStatus')
                    ? Defined<String>((on46947['paymentStatus'] as String))
                    : Undefined<String>(),
                periodEndDate: on46947.containsKey('periodEndDate')
                    ? Defined<double>((on46947['periodEndDate'] as double))
                    : Undefined<double>(),
                periodStartDate: on46947.containsKey('periodStartDate')
                    ? Defined<double>((on46947['periodStartDate'] as double))
                    : Undefined<double>(),
                phoneNumber: (on46947['phoneNumber'] as String),
                processedAt: on46947.containsKey('processedAt')
                    ? Defined<double>((on46947['processedAt'] as double))
                    : Undefined<double>(),
                referralCode: (on46947['referralCode'] as String),
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
                      if (map.containsKey(on46947['status'])) {
                        return map[on46947['status']];
                      }
                      throw Exception(
                        (on46947['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$ApprovedLiteral, $PendingLiteral, $InvalidLiteral, $RejectedLiteral>",
                      );
                    }()),
                teamId: on46947.containsKey('teamId')
                    ? Defined<String>((on46947['teamId'] as String))
                    : Undefined<String>(),
                txnsCount: on46947.containsKey('txnsCount')
                    ? Defined<double>((on46947['txnsCount'] as double))
                    : Undefined<double>(),
                updateMeta: on46947.containsKey('updateMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on46947['updateMeta'] as IMap<String, dynamic>).then(
                          (on8535) => (
                            action: (on8535['action'] as String),
                            details: on8535.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on8535['details'] as IMap<String, dynamic>)
                                        .map(
                                          (on343381, on389263) =>
                                              MapEntry(on343381, on389263),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on8535.containsKey('name')
                                ? Defined<String>((on8535['name'] as String))
                                : Undefined<String>(),
                            role: on8535.containsKey('role')
                                ? Defined<String>((on8535['role'] as String))
                                : Undefined<String>(),
                            userId: on8535.containsKey('userId')
                                ? Defined<String>((on8535['userId'] as String))
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
                updatedAt: on46947.containsKey('updatedAt')
                    ? Defined<double>((on46947['updatedAt'] as double))
                    : Undefined<double>(),
                weekOf: on46947.containsKey('weekOf')
                    ? Defined<String>((on46947['weekOf'] as String))
                    : Undefined<String>(),
                weekTxnsCount: on46947.containsKey('weekTxnsCount')
                    ? Defined<double>((on46947['weekTxnsCount'] as double))
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
