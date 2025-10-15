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
            (on730057) => encodeValue(on730057),
            (on187409) => encodeValue(on187409),
          ),
        ),
    },
  );
}

ListPendingFieldSignUpsResponse deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on54369) => (
      continueCursor: (on54369['continueCursor'] as String),
      deletedIds: (on54369['deletedIds'] as IList<dynamic>)
          .map((on168782) => CashCountFieldSignUpsId(on168782 as String))
          .toIList(),
      isDone: (on54369['isDone'] as bool),
      list: (on54369['list'] as IList<dynamic>)
          .map(
            (on439909) => (on439909 as IMap<String, dynamic>).then(
              (on434787) => (
                $_creationTime: (on434787['_creationTime'] as double),
                $_id: CashCountFieldSignUpsId(on434787['_id'] as String),
                completedAt: on434787.containsKey('completedAt')
                    ? Defined<double>((on434787['completedAt'] as double))
                    : Undefined<double>(),
                completedMeta: on434787.containsKey('completedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on434787['completedMeta'] as IMap<String, dynamic>)
                            .then(
                              (on298728) => (
                                action: (on298728['action'] as String),
                                details: on298728.containsKey('details')
                                    ? Defined<IMap<String, dynamic>>(
                                        (on298728['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on928148, on306470) =>
                                                  MapEntry(on928148, on306470),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on298728.containsKey('name')
                                    ? Defined<String>(
                                        (on298728['name'] as String),
                                      )
                                    : Undefined<String>(),
                                role: on298728.containsKey('role')
                                    ? Defined<String>(
                                        (on298728['role'] as String),
                                      )
                                    : Undefined<String>(),
                                userId: on298728.containsKey('userId')
                                    ? Defined<String>(
                                        (on298728['userId'] as String),
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
                createMeta: on434787.containsKey('createMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on434787['createMeta'] as IMap<String, dynamic>).then(
                          (on592506) => (
                            action: (on592506['action'] as String),
                            details: on592506.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on592506['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on466447, on420220) =>
                                              MapEntry(on466447, on420220),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on592506.containsKey('name')
                                ? Defined<String>((on592506['name'] as String))
                                : Undefined<String>(),
                            role: on592506.containsKey('role')
                                ? Defined<String>((on592506['role'] as String))
                                : Undefined<String>(),
                            userId: on592506.containsKey('userId')
                                ? Defined<String>(
                                    (on592506['userId'] as String),
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
                createdAt: (on434787['createdAt'] as double),
                creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
                  try {
                    return FieldAgentsId(on434787['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return ShippingClientsId(on434787['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return (on434787['creatorId'] as String);
                  } catch (e) {}

                  throw Exception(
                    (on434787['creatorId'].toString() ?? "null") +
                        r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
                  );
                }()),
                deletedAt: on434787.containsKey('deletedAt')
                    ? Defined<double>((on434787['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on434787.containsKey('deletedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on434787['deletedMeta'] as IMap<String, dynamic>).then(
                          (on699919) => (
                            action: (on699919['action'] as String),
                            details: on699919.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on699919['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on140058, on156426) =>
                                              MapEntry(on140058, on156426),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on699919.containsKey('name')
                                ? Defined<String>((on699919['name'] as String))
                                : Undefined<String>(),
                            role: on699919.containsKey('role')
                                ? Defined<String>((on699919['role'] as String))
                                : Undefined<String>(),
                            userId: on699919.containsKey('userId')
                                ? Defined<String>(
                                    (on699919['userId'] as String),
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
                deviceId: (on434787['deviceId'] as String),
                deviceInfo: (on434787['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on773866) => (
                        deviceId: (on773866['deviceId'] as String),
                        deviceModel: (on773866['deviceModel'] as String),
                        deviceName: (on773866['deviceName'] as String),
                        deviceOs: (on773866['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on434787.containsKey('expiredAt')
                    ? Defined<double>((on434787['expiredAt'] as double))
                    : Undefined<double>(),
                fieldAgentId: FieldAgentsId(on434787['fieldAgentId'] as String),
                mongoId: (on434787['mongoId'] as String),
                phoneNumber: (on434787['phoneNumber'] as String),
                referralCode: (on434787['referralCode'] as String),
                rejectionAt: on434787.containsKey('rejectionAt')
                    ? Defined<double>((on434787['rejectionAt'] as double))
                    : Undefined<double>(),
                rejectionMeta: on434787.containsKey('rejectionMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on434787['rejectionMeta'] as IMap<String, dynamic>)
                            .then(
                              (on110451) => (
                                action: (on110451['action'] as String),
                                details: on110451.containsKey('details')
                                    ? Defined<IMap<String, dynamic>>(
                                        (on110451['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on525241, on38152) =>
                                                  MapEntry(on525241, on38152),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on110451.containsKey('name')
                                    ? Defined<String>(
                                        (on110451['name'] as String),
                                      )
                                    : Undefined<String>(),
                                role: on110451.containsKey('role')
                                    ? Defined<String>(
                                        (on110451['role'] as String),
                                      )
                                    : Undefined<String>(),
                                userId: on110451.containsKey('userId')
                                    ? Defined<String>(
                                        (on110451['userId'] as String),
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
                rejectionReason: on434787.containsKey('rejectionReason')
                    ? Defined<String>((on434787['rejectionReason'] as String))
                    : Undefined<String>(),
                statUpdatedAt: on434787.containsKey('statUpdatedAt')
                    ? Defined<double>((on434787['statUpdatedAt'] as double))
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
                      if (map.containsKey(on434787['status'])) {
                        return map[on434787['status']];
                      }
                      throw Exception(
                        (on434787['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$CompletedLiteral, $PendingLiteral, $RejectedLiteral, $ExpiredLiteral>",
                      );
                    }()),
                teamId: on434787.containsKey('teamId')
                    ? Defined<String>((on434787['teamId'] as String))
                    : Undefined<String>(),
                updateMeta: on434787.containsKey('updateMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on434787['updateMeta'] as IMap<String, dynamic>).then(
                          (on788402) => (
                            action: (on788402['action'] as String),
                            details: on788402.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on788402['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on996719, on446831) =>
                                              MapEntry(on996719, on446831),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on788402.containsKey('name')
                                ? Defined<String>((on788402['name'] as String))
                                : Undefined<String>(),
                            role: on788402.containsKey('role')
                                ? Defined<String>((on788402['role'] as String))
                                : Undefined<String>(),
                            userId: on788402.containsKey('userId')
                                ? Defined<String>(
                                    (on788402['userId'] as String),
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
                updatedAt: on434787.containsKey('updatedAt')
                    ? Defined<double>((on434787['updatedAt'] as double))
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
