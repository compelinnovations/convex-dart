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
            (on834367) => encodeValue(on834367),
            (on62907) => encodeValue(on62907),
          ),
        ),
    },
  );
}

ListPendingFieldSignUpsResponse deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on957120) => (
      continueCursor: (on957120['continueCursor'] as String),
      deletedIds: (on957120['deletedIds'] as IList<dynamic>)
          .map((on861713) => CashCountFieldSignUpsId(on861713 as String))
          .toIList(),
      isDone: (on957120['isDone'] as bool),
      list: (on957120['list'] as IList<dynamic>)
          .map(
            (on173890) => (on173890 as IMap<String, dynamic>).then(
              (on219526) => (
                $_creationTime: (on219526['_creationTime'] as double),
                $_id: CashCountFieldSignUpsId(on219526['_id'] as String),
                completedAt: on219526.containsKey('completedAt')
                    ? Defined<double>((on219526['completedAt'] as double))
                    : Undefined<double>(),
                completedMeta: on219526.containsKey('completedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on219526['completedMeta'] as IMap<String, dynamic>)
                            .then(
                              (on283879) => (
                                action: (on283879['action'] as String),
                                details: on283879.containsKey('details')
                                    ? Defined<IMap<String, dynamic>>(
                                        (on283879['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on67914, on621523) =>
                                                  MapEntry(on67914, on621523),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on283879.containsKey('name')
                                    ? Defined<String>(
                                        (on283879['name'] as String),
                                      )
                                    : Undefined<String>(),
                                role: on283879.containsKey('role')
                                    ? Defined<String>(
                                        (on283879['role'] as String),
                                      )
                                    : Undefined<String>(),
                                userId: on283879.containsKey('userId')
                                    ? Defined<String>(
                                        (on283879['userId'] as String),
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
                createMeta: on219526.containsKey('createMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on219526['createMeta'] as IMap<String, dynamic>).then(
                          (on963020) => (
                            action: (on963020['action'] as String),
                            details: on963020.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on963020['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on345640, on495622) =>
                                              MapEntry(on345640, on495622),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on963020.containsKey('name')
                                ? Defined<String>((on963020['name'] as String))
                                : Undefined<String>(),
                            role: on963020.containsKey('role')
                                ? Defined<String>((on963020['role'] as String))
                                : Undefined<String>(),
                            userId: on963020.containsKey('userId')
                                ? Defined<String>(
                                    (on963020['userId'] as String),
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
                createdAt: (on219526['createdAt'] as double),
                creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
                  try {
                    return FieldAgentsId(on219526['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return ShippingClientsId(on219526['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return (on219526['creatorId'] as String);
                  } catch (e) {}

                  throw Exception(
                    (on219526['creatorId'].toString() ?? "null") +
                        r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
                  );
                }()),
                deletedAt: on219526.containsKey('deletedAt')
                    ? Defined<double>((on219526['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on219526.containsKey('deletedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on219526['deletedMeta'] as IMap<String, dynamic>).then(
                          (on209705) => (
                            action: (on209705['action'] as String),
                            details: on209705.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on209705['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on759135, on701555) =>
                                              MapEntry(on759135, on701555),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on209705.containsKey('name')
                                ? Defined<String>((on209705['name'] as String))
                                : Undefined<String>(),
                            role: on209705.containsKey('role')
                                ? Defined<String>((on209705['role'] as String))
                                : Undefined<String>(),
                            userId: on209705.containsKey('userId')
                                ? Defined<String>(
                                    (on209705['userId'] as String),
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
                deviceId: (on219526['deviceId'] as String),
                deviceInfo: (on219526['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on45638) => (
                        deviceId: (on45638['deviceId'] as String),
                        deviceModel: (on45638['deviceModel'] as String),
                        deviceName: (on45638['deviceName'] as String),
                        deviceOs: (on45638['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on219526.containsKey('expiredAt')
                    ? Defined<double>((on219526['expiredAt'] as double))
                    : Undefined<double>(),
                fieldAgentId: FieldAgentsId(on219526['fieldAgentId'] as String),
                mongoId: (on219526['mongoId'] as String),
                phoneNumber: (on219526['phoneNumber'] as String),
                referralCode: (on219526['referralCode'] as String),
                rejectionAt: on219526.containsKey('rejectionAt')
                    ? Defined<double>((on219526['rejectionAt'] as double))
                    : Undefined<double>(),
                rejectionMeta: on219526.containsKey('rejectionMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on219526['rejectionMeta'] as IMap<String, dynamic>)
                            .then(
                              (on122876) => (
                                action: (on122876['action'] as String),
                                details: on122876.containsKey('details')
                                    ? Defined<IMap<String, dynamic>>(
                                        (on122876['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on55327, on230153) =>
                                                  MapEntry(on55327, on230153),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on122876.containsKey('name')
                                    ? Defined<String>(
                                        (on122876['name'] as String),
                                      )
                                    : Undefined<String>(),
                                role: on122876.containsKey('role')
                                    ? Defined<String>(
                                        (on122876['role'] as String),
                                      )
                                    : Undefined<String>(),
                                userId: on122876.containsKey('userId')
                                    ? Defined<String>(
                                        (on122876['userId'] as String),
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
                rejectionReason: on219526.containsKey('rejectionReason')
                    ? Defined<String>((on219526['rejectionReason'] as String))
                    : Undefined<String>(),
                statUpdatedAt: on219526.containsKey('statUpdatedAt')
                    ? Defined<double>((on219526['statUpdatedAt'] as double))
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
                      if (map.containsKey(on219526['status'])) {
                        return map[on219526['status']];
                      }
                      throw Exception(
                        (on219526['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$CompletedLiteral, $PendingLiteral, $RejectedLiteral, $ExpiredLiteral>",
                      );
                    }()),
                teamId: on219526.containsKey('teamId')
                    ? Defined<String>((on219526['teamId'] as String))
                    : Undefined<String>(),
                updateMeta: on219526.containsKey('updateMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on219526['updateMeta'] as IMap<String, dynamic>).then(
                          (on828333) => (
                            action: (on828333['action'] as String),
                            details: on828333.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on828333['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on125460, on298622) =>
                                              MapEntry(on125460, on298622),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on828333.containsKey('name')
                                ? Defined<String>((on828333['name'] as String))
                                : Undefined<String>(),
                            role: on828333.containsKey('role')
                                ? Defined<String>((on828333['role'] as String))
                                : Undefined<String>(),
                            userId: on828333.containsKey('userId')
                                ? Defined<String>(
                                    (on828333['userId'] as String),
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
                updatedAt: on219526.containsKey('updatedAt')
                    ? Defined<double>((on219526['updatedAt'] as double))
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
