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
            (on137848) => encodeValue(on137848),
            (on60728) => encodeValue(on60728),
          ),
        ),
    },
  );
}

CashCountFieldSignUpsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on741948) => (
      continueCursor: (on741948['continueCursor'] as String),
      deletedIds: (on741948['deletedIds'] as IList<dynamic>)
          .map((on879380) => CashCountFieldSignUpsId(on879380 as String))
          .toIList(),
      isDone: (on741948['isDone'] as bool),
      list: (on741948['list'] as IList<dynamic>)
          .map(
            (on877137) => (on877137 as IMap<String, dynamic>).then(
              (on15941) => (
                $_creationTime: (on15941['_creationTime'] as double),
                $_id: CashCountFieldSignUpsId(on15941['_id'] as String),
                completedAt: on15941.containsKey('completedAt')
                    ? Defined<double>((on15941['completedAt'] as double))
                    : Undefined<double>(),
                completedMeta: on15941.containsKey('completedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on15941['completedMeta'] as IMap<String, dynamic>)
                            .then(
                              (on773490) => (
                                action: (on773490['action'] as String),
                                details: on773490.containsKey('details')
                                    ? Defined<IMap<String, dynamic>>(
                                        (on773490['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on820439, on258910) =>
                                                  MapEntry(on820439, on258910),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on773490.containsKey('name')
                                    ? Defined<String>(
                                        (on773490['name'] as String),
                                      )
                                    : Undefined<String>(),
                                role: on773490.containsKey('role')
                                    ? Defined<String>(
                                        (on773490['role'] as String),
                                      )
                                    : Undefined<String>(),
                                userId: on773490.containsKey('userId')
                                    ? Defined<String>(
                                        (on773490['userId'] as String),
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
                createMeta: on15941.containsKey('createMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on15941['createMeta'] as IMap<String, dynamic>).then(
                          (on959611) => (
                            action: (on959611['action'] as String),
                            details: on959611.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on959611['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on57741, on884677) =>
                                              MapEntry(on57741, on884677),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on959611.containsKey('name')
                                ? Defined<String>((on959611['name'] as String))
                                : Undefined<String>(),
                            role: on959611.containsKey('role')
                                ? Defined<String>((on959611['role'] as String))
                                : Undefined<String>(),
                            userId: on959611.containsKey('userId')
                                ? Defined<String>(
                                    (on959611['userId'] as String),
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
                createdAt: (on15941['createdAt'] as double),
                creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
                  try {
                    return FieldAgentsId(on15941['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return ShippingClientsId(on15941['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return (on15941['creatorId'] as String);
                  } catch (e) {}

                  throw Exception(
                    (on15941['creatorId'].toString() ?? "null") +
                        r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
                  );
                }()),
                deletedAt: on15941.containsKey('deletedAt')
                    ? Defined<double>((on15941['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on15941.containsKey('deletedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on15941['deletedMeta'] as IMap<String, dynamic>).then(
                          (on758630) => (
                            action: (on758630['action'] as String),
                            details: on758630.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on758630['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on20404, on483549) =>
                                              MapEntry(on20404, on483549),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on758630.containsKey('name')
                                ? Defined<String>((on758630['name'] as String))
                                : Undefined<String>(),
                            role: on758630.containsKey('role')
                                ? Defined<String>((on758630['role'] as String))
                                : Undefined<String>(),
                            userId: on758630.containsKey('userId')
                                ? Defined<String>(
                                    (on758630['userId'] as String),
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
                deviceId: (on15941['deviceId'] as String),
                deviceInfo: (on15941['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on81520) => (
                        deviceId: (on81520['deviceId'] as String),
                        deviceModel: (on81520['deviceModel'] as String),
                        deviceName: (on81520['deviceName'] as String),
                        deviceOs: (on81520['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on15941.containsKey('expiredAt')
                    ? Defined<double>((on15941['expiredAt'] as double))
                    : Undefined<double>(),
                fieldAgentId: FieldAgentsId(on15941['fieldAgentId'] as String),
                mongoId: (on15941['mongoId'] as String),
                phoneNumber: (on15941['phoneNumber'] as String),
                referralCode: (on15941['referralCode'] as String),
                rejectionAt: on15941.containsKey('rejectionAt')
                    ? Defined<double>((on15941['rejectionAt'] as double))
                    : Undefined<double>(),
                rejectionMeta: on15941.containsKey('rejectionMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on15941['rejectionMeta'] as IMap<String, dynamic>)
                            .then(
                              (on299595) => (
                                action: (on299595['action'] as String),
                                details: on299595.containsKey('details')
                                    ? Defined<IMap<String, dynamic>>(
                                        (on299595['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on787643, on919768) =>
                                                  MapEntry(on787643, on919768),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on299595.containsKey('name')
                                    ? Defined<String>(
                                        (on299595['name'] as String),
                                      )
                                    : Undefined<String>(),
                                role: on299595.containsKey('role')
                                    ? Defined<String>(
                                        (on299595['role'] as String),
                                      )
                                    : Undefined<String>(),
                                userId: on299595.containsKey('userId')
                                    ? Defined<String>(
                                        (on299595['userId'] as String),
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
                rejectionReason: on15941.containsKey('rejectionReason')
                    ? Defined<String>((on15941['rejectionReason'] as String))
                    : Undefined<String>(),
                statUpdatedAt: on15941.containsKey('statUpdatedAt')
                    ? Defined<double>((on15941['statUpdatedAt'] as double))
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
                      if (map.containsKey(on15941['status'])) {
                        return map[on15941['status']];
                      }
                      throw Exception(
                        (on15941['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$CompletedLiteral, $PendingLiteral, $RejectedLiteral, $ExpiredLiteral>",
                      );
                    }()),
                teamId: on15941.containsKey('teamId')
                    ? Defined<String>((on15941['teamId'] as String))
                    : Undefined<String>(),
                updateMeta: on15941.containsKey('updateMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on15941['updateMeta'] as IMap<String, dynamic>).then(
                          (on78159) => (
                            action: (on78159['action'] as String),
                            details: on78159.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on78159['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on374456, on706568) =>
                                              MapEntry(on374456, on706568),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on78159.containsKey('name')
                                ? Defined<String>((on78159['name'] as String))
                                : Undefined<String>(),
                            role: on78159.containsKey('role')
                                ? Defined<String>((on78159['role'] as String))
                                : Undefined<String>(),
                            userId: on78159.containsKey('userId')
                                ? Defined<String>((on78159['userId'] as String))
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
                updatedAt: on15941.containsKey('updatedAt')
                    ? Defined<double>((on15941['updatedAt'] as double))
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
