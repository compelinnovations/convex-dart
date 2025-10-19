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
            (on606771) => encodeValue(on606771),
            (on451884) => encodeValue(on451884),
          ),
        ),
    },
  );
}

CashCountFieldSignUpsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on17923) => (
      continueCursor: (on17923['continueCursor'] as String),
      deletedIds: (on17923['deletedIds'] as IList<dynamic>)
          .map((on111595) => CashCountFieldSignUpsId(on111595 as String))
          .toIList(),
      isDone: (on17923['isDone'] as bool),
      list: (on17923['list'] as IList<dynamic>)
          .map(
            (on940857) => (on940857 as IMap<String, dynamic>).then(
              (on690616) => (
                $_creationTime: (on690616['_creationTime'] as double),
                $_id: CashCountFieldSignUpsId(on690616['_id'] as String),
                completedAt: on690616.containsKey('completedAt')
                    ? Defined<double>((on690616['completedAt'] as double))
                    : Undefined<double>(),
                completedMeta: on690616.containsKey('completedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on690616['completedMeta'] as IMap<String, dynamic>)
                            .then(
                              (on98200) => (
                                action: (on98200['action'] as String),
                                details: on98200.containsKey('details')
                                    ? Defined<IMap<String, dynamic>>(
                                        (on98200['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on615614, on478974) =>
                                                  MapEntry(on615614, on478974),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on98200.containsKey('name')
                                    ? Defined<String>(
                                        (on98200['name'] as String),
                                      )
                                    : Undefined<String>(),
                                role: on98200.containsKey('role')
                                    ? Defined<String>(
                                        (on98200['role'] as String),
                                      )
                                    : Undefined<String>(),
                                userId: on98200.containsKey('userId')
                                    ? Defined<String>(
                                        (on98200['userId'] as String),
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
                createMeta: on690616.containsKey('createMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on690616['createMeta'] as IMap<String, dynamic>).then(
                          (on607731) => (
                            action: (on607731['action'] as String),
                            details: on607731.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on607731['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on209134, on946291) =>
                                              MapEntry(on209134, on946291),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on607731.containsKey('name')
                                ? Defined<String>((on607731['name'] as String))
                                : Undefined<String>(),
                            role: on607731.containsKey('role')
                                ? Defined<String>((on607731['role'] as String))
                                : Undefined<String>(),
                            userId: on607731.containsKey('userId')
                                ? Defined<String>(
                                    (on607731['userId'] as String),
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
                createdAt: (on690616['createdAt'] as double),
                creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
                  try {
                    return FieldAgentsId(on690616['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return ShippingClientsId(on690616['creatorId'] as String);
                  } catch (e) {}

                  try {
                    return (on690616['creatorId'] as String);
                  } catch (e) {}

                  throw Exception(
                    (on690616['creatorId'].toString() ?? "null") +
                        r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
                  );
                }()),
                deletedAt: on690616.containsKey('deletedAt')
                    ? Defined<double>((on690616['deletedAt'] as double))
                    : Undefined<double>(),
                deletedMeta: on690616.containsKey('deletedMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on690616['deletedMeta'] as IMap<String, dynamic>).then(
                          (on920651) => (
                            action: (on920651['action'] as String),
                            details: on920651.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on920651['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on866344, on796327) =>
                                              MapEntry(on866344, on796327),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on920651.containsKey('name')
                                ? Defined<String>((on920651['name'] as String))
                                : Undefined<String>(),
                            role: on920651.containsKey('role')
                                ? Defined<String>((on920651['role'] as String))
                                : Undefined<String>(),
                            userId: on920651.containsKey('userId')
                                ? Defined<String>(
                                    (on920651['userId'] as String),
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
                deviceId: (on690616['deviceId'] as String),
                deviceInfo: (on690616['deviceInfo'] as IMap<String, dynamic>)
                    .then(
                      (on528563) => (
                        deviceId: (on528563['deviceId'] as String),
                        deviceModel: (on528563['deviceModel'] as String),
                        deviceName: (on528563['deviceName'] as String),
                        deviceOs: (on528563['deviceOs'] as String),
                      ),
                    ),
                expiredAt: on690616.containsKey('expiredAt')
                    ? Defined<double>((on690616['expiredAt'] as double))
                    : Undefined<double>(),
                fieldAgentId: FieldAgentsId(on690616['fieldAgentId'] as String),
                mongoId: (on690616['mongoId'] as String),
                phoneNumber: (on690616['phoneNumber'] as String),
                referralCode: (on690616['referralCode'] as String),
                rejectionAt: on690616.containsKey('rejectionAt')
                    ? Defined<double>((on690616['rejectionAt'] as double))
                    : Undefined<double>(),
                rejectionMeta: on690616.containsKey('rejectionMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on690616['rejectionMeta'] as IMap<String, dynamic>)
                            .then(
                              (on197414) => (
                                action: (on197414['action'] as String),
                                details: on197414.containsKey('details')
                                    ? Defined<IMap<String, dynamic>>(
                                        (on197414['details']
                                                as IMap<String, dynamic>)
                                            .map(
                                              (on376176, on98050) =>
                                                  MapEntry(on376176, on98050),
                                            ),
                                      )
                                    : Undefined<IMap<String, dynamic>>(),
                                name: on197414.containsKey('name')
                                    ? Defined<String>(
                                        (on197414['name'] as String),
                                      )
                                    : Undefined<String>(),
                                role: on197414.containsKey('role')
                                    ? Defined<String>(
                                        (on197414['role'] as String),
                                      )
                                    : Undefined<String>(),
                                userId: on197414.containsKey('userId')
                                    ? Defined<String>(
                                        (on197414['userId'] as String),
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
                rejectionReason: on690616.containsKey('rejectionReason')
                    ? Defined<String>((on690616['rejectionReason'] as String))
                    : Undefined<String>(),
                statUpdatedAt: on690616.containsKey('statUpdatedAt')
                    ? Defined<double>((on690616['statUpdatedAt'] as double))
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
                      if (map.containsKey(on690616['status'])) {
                        return map[on690616['status']];
                      }
                      throw Exception(
                        (on690616['status'].toString() ?? "null") +
                            r" cannot be deserialized into a Union4<$CompletedLiteral, $PendingLiteral, $RejectedLiteral, $ExpiredLiteral>",
                      );
                    }()),
                teamId: on690616.containsKey('teamId')
                    ? Defined<String>((on690616['teamId'] as String))
                    : Undefined<String>(),
                updateMeta: on690616.containsKey('updateMeta')
                    ? Defined<
                        ({
                          String action,
                          Optional<IMap<String, dynamic>> details,
                          Optional<String> name,
                          Optional<String> role,
                          Optional<String> userId,
                        })
                      >(
                        (on690616['updateMeta'] as IMap<String, dynamic>).then(
                          (on529646) => (
                            action: (on529646['action'] as String),
                            details: on529646.containsKey('details')
                                ? Defined<IMap<String, dynamic>>(
                                    (on529646['details']
                                            as IMap<String, dynamic>)
                                        .map(
                                          (on48833, on739971) =>
                                              MapEntry(on48833, on739971),
                                        ),
                                  )
                                : Undefined<IMap<String, dynamic>>(),
                            name: on529646.containsKey('name')
                                ? Defined<String>((on529646['name'] as String))
                                : Undefined<String>(),
                            role: on529646.containsKey('role')
                                ? Defined<String>((on529646['role'] as String))
                                : Undefined<String>(),
                            userId: on529646.containsKey('userId')
                                ? Defined<String>(
                                    (on529646['userId'] as String),
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
                updatedAt: on690616.containsKey('updatedAt')
                    ? Defined<double>((on690616['updatedAt'] as double))
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
