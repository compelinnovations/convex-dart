// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "../../models/json/list_query.dart";

final listPendingFieldSignUps =
    QueryOperation<ListQuery, CashCountFieldSignUpsDoc>(
      'app/fieldAgentCashCount:listPendingFieldSignUps',
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
            (on396499) => encodeValue(on396499),
            (on602454) => encodeValue(on602454),
          ),
        ),
    },
  );
}

CashCountFieldSignUpsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on787700) => (
      continueCursor: (on787700['continueCursor'] as String),
      deletedIds: (on787700['deletedIds'] as IList<dynamic>)
          .map((on188718) => CashCountFieldSignUpsId(on188718 as String))
          .toIList(),
      isDone: (on787700['isDone'] as bool),
      list: (on787700['list'] as IList<dynamic>)
          .map(
            (on699406) => (on699406 as IMap<String, dynamic>).then(
              (on406562) => (
                $_creationTime: (on406562['_creationTime'] as double),
                $_id: CashCountFieldSignUpsId(on406562['_id'] as String),
                completedAt: on406562.containsKey('completedAt')
                    ? Defined<double>((on406562['completedAt'] as double))
                    : Undefined<double>(),
                completedMeta: on406562.containsKey('completedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on406562['completedMeta'] as IMap<String, dynamic>)
                            .then(
                              (on402908) => (
                                action: (on402908['action'] as String),
                                details: on402908.containsKey('details')
                                    ? Defined<IMap<String, dynamic>>(
                                        (on402908['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on30305, on428536) =>
                                                  MapEntry(on30305, on428536),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on402908.containsKey('name')
                                    ? Defined<String>(
                                        (on402908['name'] as String),
                                      )
                                    : Undefined<String>(),
                                role: on402908.containsKey('role')
                                    ? Defined<String>(
                                        (on402908['role'] as String),
                                      )
                                    : Undefined<String>(),
                                userId: on402908.containsKey('userId')
                                    ? Defined<String>(
                                        (on402908['userId'] as String),
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
                createMeta: on406562.containsKey('createMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on406562['createMeta'] as IMap<String, dynamic>).then(
                          (on589395) => (
                            action: (on589395['action'] as String),
                            details: on589395.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on589395['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on645291, on874159) =>
                                              MapEntry(on645291, on874159),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on589395.containsKey('name')
                                ? Defined<String>((on589395['name'] as String))
                                : Undefined<String>(),
                            role: on589395.containsKey('role')
                                ? Defined<String>((on589395['role'] as String))
                                : Undefined<String>(),
                            userId: on589395.containsKey('userId')
                                ? Defined<String>(
                                    (on589395['userId'] as String),
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
                createdAt: (on406562['createdAt'] as double),
                creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
                  try {
                    return FieldAgentsId(on406562['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return ShippingClientsId(on406562['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return (on406562['creatorId'] as String);
                  } catch (e) {}

                  throw Exception(
                    (on406562['creatorId'].toString() ?? "null") +
                        r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
                  );
                }()),
                deletedAt: on406562.containsKey('deletedAt')
                    ? Defined<double>((on406562['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on406562.containsKey('deletedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on406562['deletedMeta'] as IMap<String, dynamic>).then(
                          (on406225) => (
                            action: (on406225['action'] as String),
                            details: on406225.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on406225['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on963863, on4432) =>
                                              MapEntry(on963863, on4432),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on406225.containsKey('name')
                                ? Defined<String>((on406225['name'] as String))
                                : Undefined<String>(),
                            role: on406225.containsKey('role')
                                ? Defined<String>((on406225['role'] as String))
                                : Undefined<String>(),
                            userId: on406225.containsKey('userId')
                                ? Defined<String>(
                                    (on406225['userId'] as String),
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
                deviceId: (on406562['deviceId'] as String),
                deviceInfo: (on406562['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on530358) => (
                        deviceId: (on530358['deviceId'] as String),
                        deviceModel: (on530358['deviceModel'] as String),
                        deviceName: (on530358['deviceName'] as String),
                        deviceOs: (on530358['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on406562.containsKey('expiredAt')
                    ? Defined<double>((on406562['expiredAt'] as double))
                    : Undefined<double>(),
                fieldAgentId: FieldAgentsId(on406562['fieldAgentId'] as String),
                mongoId: (on406562['mongoId'] as String),
                phoneNumber: (on406562['phoneNumber'] as String),
                referralCode: (on406562['referralCode'] as String),
                rejectionAt: on406562.containsKey('rejectionAt')
                    ? Defined<double>((on406562['rejectionAt'] as double))
                    : Undefined<double>(),
                rejectionMeta: on406562.containsKey('rejectionMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on406562['rejectionMeta'] as IMap<String, dynamic>)
                            .then(
                              (on921167) => (
                                action: (on921167['action'] as String),
                                details: on921167.containsKey('details')
                                    ? Defined<IMap<String, dynamic>>(
                                        (on921167['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on504225, on542754) =>
                                                  MapEntry(on504225, on542754),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on921167.containsKey('name')
                                    ? Defined<String>(
                                        (on921167['name'] as String),
                                      )
                                    : Undefined<String>(),
                                role: on921167.containsKey('role')
                                    ? Defined<String>(
                                        (on921167['role'] as String),
                                      )
                                    : Undefined<String>(),
                                userId: on921167.containsKey('userId')
                                    ? Defined<String>(
                                        (on921167['userId'] as String),
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
                rejectionReason: on406562.containsKey('rejectionReason')
                    ? Defined<String>((on406562['rejectionReason'] as String))
                    : Undefined<String>(),
                statUpdatedAt: on406562.containsKey('statUpdatedAt')
                    ? Defined<double>((on406562['statUpdatedAt'] as double))
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
                      if (map.containsKey(on406562['status'])) {
                        return map[on406562['status']];
                      }
                      throw Exception(
                        (on406562['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$CompletedLiteral, $PendingLiteral, $RejectedLiteral, $ExpiredLiteral>",
                      );
                    }()),
                teamId: on406562.containsKey('teamId')
                    ? Defined<String>((on406562['teamId'] as String))
                    : Undefined<String>(),
                updateMeta: on406562.containsKey('updateMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on406562['updateMeta'] as IMap<String, dynamic>).then(
                          (on977401) => (
                            action: (on977401['action'] as String),
                            details: on977401.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on977401['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on384371, on530752) =>
                                              MapEntry(on384371, on530752),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on977401.containsKey('name')
                                ? Defined<String>((on977401['name'] as String))
                                : Undefined<String>(),
                            role: on977401.containsKey('role')
                                ? Defined<String>((on977401['role'] as String))
                                : Undefined<String>(),
                            userId: on977401.containsKey('userId')
                                ? Defined<String>(
                                    (on977401['userId'] as String),
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
                updatedAt: on406562.containsKey('updatedAt')
                    ? Defined<double>((on406562['updatedAt'] as double))
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
