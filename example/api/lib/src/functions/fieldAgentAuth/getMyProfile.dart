// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final getMyProfile = QueryOperation<void, FieldAgentDoc>(
  'app/fieldAgentAuth:getMyProfile',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(void args) {
  return hashmapToBtreemap(hashmap: {});
}

FieldAgentDoc deserialize(DartValue map) {
  return (
    body: (decodeValue(map) as IMap<String, dynamic>?)?.then(
      (on689979) => (
        $_creationTime: (on689979['_creationTime'] as double),
        $_id: FieldAgentsId(on689979['_id'] as String),
        ayekooLeaderboardPosition:
            on689979.containsKey('ayekooLeaderboardPosition')
            ? Defined<double>((on689979['ayekooLeaderboardPosition'] as double))
            : Undefined<double>(),
        cashCountLeaderboardPosition:
            on689979.containsKey('cashCountLeaderboardPosition')
            ? Defined<double>(
                (on689979['cashCountLeaderboardPosition'] as double),
              )
            : Undefined<double>(),
        countryCityId: on689979.containsKey('countryCityId')
            ? Defined<CountryCitiesId>(
                CountryCitiesId(on689979['countryCityId'] as String),
              )
            : Undefined<CountryCitiesId>(),
        countryCityName: on689979.containsKey('countryCityName')
            ? Defined<String>((on689979['countryCityName'] as String))
            : Undefined<String>(),
        countryCode: on689979.containsKey('countryCode')
            ? Defined<String>((on689979['countryCode'] as String))
            : Undefined<String>(),
        countryISO: (on689979['countryISO'] as String),
        countryName: (on689979['countryName'] as String),
        countryStateId: on689979.containsKey('countryStateId')
            ? Defined<CountryStatesId>(
                CountryStatesId(on689979['countryStateId'] as String),
              )
            : Undefined<CountryStatesId>(),
        countryStateName: on689979.containsKey('countryStateName')
            ? Defined<String>((on689979['countryStateName'] as String))
            : Undefined<String>(),
        createMeta: on689979.containsKey('createMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on689979['createMeta'] as IMap<String, dynamic>).then(
                  (on559409) => (
                    action: (on559409['action'] as String),
                    details: on559409.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on559409['details'] as IMap<String, dynamic>).map(
                              (on35665, on697161) =>
                                  MapEntry(on35665, on697161),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on559409.containsKey('name')
                        ? Defined<String>((on559409['name'] as String))
                        : Undefined<String>(),
                    role: on559409.containsKey('role')
                        ? Defined<String>((on559409['role'] as String))
                        : Undefined<String>(),
                    userId: on559409.containsKey('userId')
                        ? Defined<String>((on559409['userId'] as String))
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
        createdAt: (on689979['createdAt'] as double),
        creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
          try {
            return FieldAgentsId(on689979['creatorId'] as String);
          } catch (e) {}

          try {
            return ShippingClientsId(on689979['creatorId'] as String);
          } catch (e) {}

          try {
            return (on689979['creatorId'] as String);
          } catch (e) {}

          throw Exception(
            (on689979['creatorId'].toString() ?? "null") +
                r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
          );
        }()),
        dateBirth: on689979.containsKey('dateBirth')
            ? Defined<double>((on689979['dateBirth'] as double))
            : Undefined<double>(),
        deletedAt: on689979.containsKey('deletedAt')
            ? Defined<double>((on689979['deletedAt'] as double))
            : Undefined<double>(),
        deletedMeta: on689979.containsKey('deletedMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on689979['deletedMeta'] as IMap<String, dynamic>).then(
                  (on339941) => (
                    action: (on339941['action'] as String),
                    details: on339941.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on339941['details'] as IMap<String, dynamic>).map(
                              (on805867, on331180) =>
                                  MapEntry(on805867, on331180),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on339941.containsKey('name')
                        ? Defined<String>((on339941['name'] as String))
                        : Undefined<String>(),
                    role: on339941.containsKey('role')
                        ? Defined<String>((on339941['role'] as String))
                        : Undefined<String>(),
                    userId: on339941.containsKey('userId')
                        ? Defined<String>((on339941['userId'] as String))
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
        email: (on689979['email'] as String),
        firstName: (on689979['firstName'] as String),
        fullName: on689979.containsKey('fullName')
            ? Defined<String>((on689979['fullName'] as String))
            : Undefined<String>(),
        gender: Union2<$MaleLiteral, $FemaleLiteral>(() {
          final map = {'Male': $MaleLiteral(), 'Female': $FemaleLiteral()};
          if (map.containsKey(on689979['gender'])) {
            return map[on689979['gender']];
          }
          throw Exception(
            (on689979['gender'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$MaleLiteral, $FemaleLiteral>",
          );
        }()),
        invitationId: on689979.containsKey('invitationId')
            ? Defined<String>((on689979['invitationId'] as String))
            : Undefined<String>(),
        invitationStatus: on689979.containsKey('invitationStatus')
            ? Defined<String>((on689979['invitationStatus'] as String))
            : Undefined<String>(),
        lastName: (on689979['lastName'] as String),
        middleName: on689979.containsKey('middleName')
            ? Defined<String>((on689979['middleName'] as String))
            : Undefined<String>(),
        phoneNumber: (on689979['phoneNumber'] as String),
        profileImage: on689979.containsKey('profileImage')
            ? Defined<
                ({
                  Optional<String> blurHash,
                  Optional<String> mime,
                  Optional<String> name,
                  Optional<double> size,
                  Optional<StorageId?> storageId,
                  Optional<String> url,
                })
              >(
                (on689979['profileImage'] as IMap<String, dynamic>).then(
                  (on454680) => (
                    blurHash: on454680.containsKey('blurHash')
                        ? Defined<String>((on454680['blurHash'] as String))
                        : Undefined<String>(),
                    mime: on454680.containsKey('mime')
                        ? Defined<String>((on454680['mime'] as String))
                        : Undefined<String>(),
                    name: on454680.containsKey('name')
                        ? Defined<String>((on454680['name'] as String))
                        : Undefined<String>(),
                    size: on454680.containsKey('size')
                        ? Defined<double>((on454680['size'] as double))
                        : Undefined<double>(),
                    storageId: on454680.containsKey('storageId')
                        ? Defined<StorageId?>(
                            on454680['storageId'] == null
                                ? null
                                : StorageId(on454680['storageId'] as String),
                          )
                        : Undefined<StorageId?>(),
                    url: on454680.containsKey('url')
                        ? Defined<String>((on454680['url'] as String))
                        : Undefined<String>(),
                  ),
                ),
              )
            : Undefined<
                ({
                  Optional<String> blurHash,
                  Optional<String> mime,
                  Optional<String> name,
                  Optional<double> size,
                  Optional<StorageId?> storageId,
                  Optional<String> url,
                })
              >(),
        project: Union2<$CashCountLiteral, $AyekooLiteral>(() {
          final map = {
            'CashCount': $CashCountLiteral(),
            'Ayekoo': $AyekooLiteral(),
          };
          if (map.containsKey(on689979['project'])) {
            return map[on689979['project']];
          }
          throw Exception(
            (on689979['project'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$CashCountLiteral, $AyekooLiteral>",
          );
        }()),
        referralCode: (on689979['referralCode'] as String),
        status: (on689979['status'] as String),
        teamId: on689979.containsKey('teamId')
            ? Defined<String>((on689979['teamId'] as String))
            : Undefined<String>(),
        totalAyekooAllocationsCount:
            on689979.containsKey('totalAyekooAllocationsCount')
            ? Defined<double>(
                (on689979['totalAyekooAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsApprovedCount:
            on689979.containsKey('totalAyekooCollectionsApprovedCount')
            ? Defined<double>(
                (on689979['totalAyekooCollectionsApprovedCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsCount:
            on689979.containsKey('totalAyekooCollectionsCount')
            ? Defined<double>(
                (on689979['totalAyekooCollectionsCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsInvalidCount:
            on689979.containsKey('totalAyekooCollectionsInvalidCount')
            ? Defined<double>(
                (on689979['totalAyekooCollectionsInvalidCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsPendingCount:
            on689979.containsKey('totalAyekooCollectionsPendingCount')
            ? Defined<double>(
                (on689979['totalAyekooCollectionsPendingCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsRejectedCount:
            on689979.containsKey('totalAyekooCollectionsRejectedCount')
            ? Defined<double>(
                (on689979['totalAyekooCollectionsRejectedCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountAllocationsCount:
            on689979.containsKey('totalCashCountAllocationsCount')
            ? Defined<double>(
                (on689979['totalCashCountAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsApprovedCount:
            on689979.containsKey('totalCashCountFieldSignUpsApprovedCount')
            ? Defined<double>(
                (on689979['totalCashCountFieldSignUpsApprovedCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsCount:
            on689979.containsKey('totalCashCountFieldSignUpsCount')
            ? Defined<double>(
                (on689979['totalCashCountFieldSignUpsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsInvalidCount:
            on689979.containsKey('totalCashCountFieldSignUpsInvalidCount')
            ? Defined<double>(
                (on689979['totalCashCountFieldSignUpsInvalidCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsPendingCount:
            on689979.containsKey('totalCashCountFieldSignUpsPendingCount')
            ? Defined<double>(
                (on689979['totalCashCountFieldSignUpsPendingCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsRejectedCount:
            on689979.containsKey('totalCashCountFieldSignUpsRejectedCount')
            ? Defined<double>(
                (on689979['totalCashCountFieldSignUpsRejectedCount'] as double),
              )
            : Undefined<double>(),
        updateMeta: on689979.containsKey('updateMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on689979['updateMeta'] as IMap<String, dynamic>).then(
                  (on207508) => (
                    action: (on207508['action'] as String),
                    details: on207508.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on207508['details'] as IMap<String, dynamic>).map(
                              (on106048, on115189) =>
                                  MapEntry(on106048, on115189),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on207508.containsKey('name')
                        ? Defined<String>((on207508['name'] as String))
                        : Undefined<String>(),
                    role: on207508.containsKey('role')
                        ? Defined<String>((on207508['role'] as String))
                        : Undefined<String>(),
                    userId: on207508.containsKey('userId')
                        ? Defined<String>((on207508['userId'] as String))
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
        updatedAt: on689979.containsKey('updatedAt')
            ? Defined<double>((on689979['updatedAt'] as double))
            : Undefined<double>(),
        userId: on689979.containsKey('userId')
            ? Defined<String>((on689979['userId'] as String))
            : Undefined<String>(),
      ),
    ),
  );
}

typedef FieldAgentDoc = ({
  ({
    double $_creationTime,
    FieldAgentsId $_id,
    Optional<double> ayekooLeaderboardPosition,
    Optional<double> cashCountLeaderboardPosition,
    Optional<CountryCitiesId> countryCityId,
    Optional<String> countryCityName,
    Optional<String> countryCode,
    String countryISO,
    String countryName,
    Optional<CountryStatesId> countryStateId,
    Optional<String> countryStateName,
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
    Optional<double> dateBirth,
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
    String email,
    String firstName,
    Optional<String> fullName,
    Union2<$MaleLiteral, $FemaleLiteral> gender,
    Optional<String> invitationId,
    Optional<String> invitationStatus,
    String lastName,
    Optional<String> middleName,
    String phoneNumber,
    Optional<
      ({
        Optional<String> blurHash,
        Optional<String> mime,
        Optional<String> name,
        Optional<double> size,
        Optional<StorageId?> storageId,
        Optional<String> url,
      })
    >
    profileImage,
    Union2<$CashCountLiteral, $AyekooLiteral> project,
    String referralCode,
    String status,
    Optional<String> teamId,
    Optional<double> totalAyekooAllocationsCount,
    Optional<double> totalAyekooCollectionsApprovedCount,
    Optional<double> totalAyekooCollectionsCount,
    Optional<double> totalAyekooCollectionsInvalidCount,
    Optional<double> totalAyekooCollectionsPendingCount,
    Optional<double> totalAyekooCollectionsRejectedCount,
    Optional<double> totalCashCountAllocationsCount,
    Optional<double> totalCashCountFieldSignUpsApprovedCount,
    Optional<double> totalCashCountFieldSignUpsCount,
    Optional<double> totalCashCountFieldSignUpsInvalidCount,
    Optional<double> totalCashCountFieldSignUpsPendingCount,
    Optional<double> totalCashCountFieldSignUpsRejectedCount,
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
    Optional<String> userId,
  })?
  body,
});
