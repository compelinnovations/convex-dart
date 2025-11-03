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
      (on952298) => (
        $_creationTime: (on952298['_creationTime'] as double),
        $_id: FieldAgentsId(on952298['_id'] as String),
        ayekooLeaderboardPosition:
            on952298.containsKey('ayekooLeaderboardPosition')
            ? Defined<double>((on952298['ayekooLeaderboardPosition'] as double))
            : Undefined<double>(),
        cashCountLeaderboardPosition:
            on952298.containsKey('cashCountLeaderboardPosition')
            ? Defined<double>(
                (on952298['cashCountLeaderboardPosition'] as double),
              )
            : Undefined<double>(),
        countryCityId: on952298.containsKey('countryCityId')
            ? Defined<CountryCitiesId>(
                CountryCitiesId(on952298['countryCityId'] as String),
              )
            : Undefined<CountryCitiesId>(),
        countryCityName: on952298.containsKey('countryCityName')
            ? Defined<String>((on952298['countryCityName'] as String))
            : Undefined<String>(),
        countryCode: on952298.containsKey('countryCode')
            ? Defined<String>((on952298['countryCode'] as String))
            : Undefined<String>(),
        countryISO: (on952298['countryISO'] as String),
        countryName: (on952298['countryName'] as String),
        countryStateId: on952298.containsKey('countryStateId')
            ? Defined<CountryStatesId>(
                CountryStatesId(on952298['countryStateId'] as String),
              )
            : Undefined<CountryStatesId>(),
        countryStateName: on952298.containsKey('countryStateName')
            ? Defined<String>((on952298['countryStateName'] as String))
            : Undefined<String>(),
        createMeta: on952298.containsKey('createMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on952298['createMeta'] as IMap<String, dynamic>).then(
                  (on302551) => (
                    action: (on302551['action'] as String),
                    details: on302551.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on302551['details'] as IMap<String, dynamic>).map(
                              (on999309, on814893) =>
                                  MapEntry(on999309, on814893),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on302551.containsKey('name')
                        ? Defined<String>((on302551['name'] as String))
                        : Undefined<String>(),
                    role: on302551.containsKey('role')
                        ? Defined<String>((on302551['role'] as String))
                        : Undefined<String>(),
                    userId: on302551.containsKey('userId')
                        ? Defined<String>((on302551['userId'] as String))
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
        createdAt: (on952298['createdAt'] as double),
        creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
          try {
            return FieldAgentsId(on952298['creatorId'] as String);
          } catch (e) {}

          try {
            return ShippingClientsId(on952298['creatorId'] as String);
          } catch (e) {}

          try {
            return (on952298['creatorId'] as String);
          } catch (e) {}

          throw Exception(
            (on952298['creatorId'].toString() ?? "null") +
                r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
          );
        }()),
        dateBirth: on952298.containsKey('dateBirth')
            ? Defined<double>((on952298['dateBirth'] as double))
            : Undefined<double>(),
        deletedAt: on952298.containsKey('deletedAt')
            ? Defined<double>((on952298['deletedAt'] as double))
            : Undefined<double>(),
        deletedMeta: on952298.containsKey('deletedMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on952298['deletedMeta'] as IMap<String, dynamic>).then(
                  (on876682) => (
                    action: (on876682['action'] as String),
                    details: on876682.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on876682['details'] as IMap<String, dynamic>).map(
                              (on609181, on383138) =>
                                  MapEntry(on609181, on383138),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on876682.containsKey('name')
                        ? Defined<String>((on876682['name'] as String))
                        : Undefined<String>(),
                    role: on876682.containsKey('role')
                        ? Defined<String>((on876682['role'] as String))
                        : Undefined<String>(),
                    userId: on876682.containsKey('userId')
                        ? Defined<String>((on876682['userId'] as String))
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
        email: (on952298['email'] as String),
        firstName: (on952298['firstName'] as String),
        fullName: on952298.containsKey('fullName')
            ? Defined<String>((on952298['fullName'] as String))
            : Undefined<String>(),
        gender: Union2<$MaleLiteral, $FemaleLiteral>(() {
          final map = {'Male': $MaleLiteral(), 'Female': $FemaleLiteral()};
          if (map.containsKey(on952298['gender'])) {
            return map[on952298['gender']];
          }
          throw Exception(
            (on952298['gender'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$MaleLiteral, $FemaleLiteral>",
          );
        }()),
        invitationId: on952298.containsKey('invitationId')
            ? Defined<String>((on952298['invitationId'] as String))
            : Undefined<String>(),
        invitationStatus: on952298.containsKey('invitationStatus')
            ? Defined<String>((on952298['invitationStatus'] as String))
            : Undefined<String>(),
        lastName: (on952298['lastName'] as String),
        middleName: on952298.containsKey('middleName')
            ? Defined<String>((on952298['middleName'] as String))
            : Undefined<String>(),
        phoneNumber: (on952298['phoneNumber'] as String),
        profileImage: on952298.containsKey('profileImage')
            ? Defined<
                ({
                  Optional<String> blurHash,
                  Optional<String> mime,
                  Optional<String> name,
                  Optional<double> size,
                  Optional<StorageId> storageId,
                  Optional<String> url,
                })
              >(
                (on952298['profileImage'] as IMap<String, dynamic>).then(
                  (on787125) => (
                    blurHash: on787125.containsKey('blurHash')
                        ? Defined<String>((on787125['blurHash'] as String))
                        : Undefined<String>(),
                    mime: on787125.containsKey('mime')
                        ? Defined<String>((on787125['mime'] as String))
                        : Undefined<String>(),
                    name: on787125.containsKey('name')
                        ? Defined<String>((on787125['name'] as String))
                        : Undefined<String>(),
                    size: on787125.containsKey('size')
                        ? Defined<double>((on787125['size'] as double))
                        : Undefined<double>(),
                    storageId: on787125.containsKey('storageId')
                        ? Defined<StorageId>(
                            StorageId(on787125['storageId'] as String),
                          )
                        : Undefined<StorageId>(),
                    url: on787125.containsKey('url')
                        ? Defined<String>((on787125['url'] as String))
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
                  Optional<StorageId> storageId,
                  Optional<String> url,
                })
              >(),
        project: Union2<$CashCountLiteral, $AyekooLiteral>(() {
          final map = {
            'CashCount': $CashCountLiteral(),
            'Ayekoo': $AyekooLiteral(),
          };
          if (map.containsKey(on952298['project'])) {
            return map[on952298['project']];
          }
          throw Exception(
            (on952298['project'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$CashCountLiteral, $AyekooLiteral>",
          );
        }()),
        referralCode: (on952298['referralCode'] as String),
        status: (on952298['status'] as String),
        teamId: on952298.containsKey('teamId')
            ? Defined<String>((on952298['teamId'] as String))
            : Undefined<String>(),
        totalAyekooAllocationsCount:
            on952298.containsKey('totalAyekooAllocationsCount')
            ? Defined<double>(
                (on952298['totalAyekooAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsApprovedCount:
            on952298.containsKey('totalAyekooCollectionsApprovedCount')
            ? Defined<double>(
                (on952298['totalAyekooCollectionsApprovedCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsCount:
            on952298.containsKey('totalAyekooCollectionsCount')
            ? Defined<double>(
                (on952298['totalAyekooCollectionsCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsInvalidCount:
            on952298.containsKey('totalAyekooCollectionsInvalidCount')
            ? Defined<double>(
                (on952298['totalAyekooCollectionsInvalidCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsPendingCount:
            on952298.containsKey('totalAyekooCollectionsPendingCount')
            ? Defined<double>(
                (on952298['totalAyekooCollectionsPendingCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsRejectedCount:
            on952298.containsKey('totalAyekooCollectionsRejectedCount')
            ? Defined<double>(
                (on952298['totalAyekooCollectionsRejectedCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountAllocationsCount:
            on952298.containsKey('totalCashCountAllocationsCount')
            ? Defined<double>(
                (on952298['totalCashCountAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsApprovedCount:
            on952298.containsKey('totalCashCountFieldSignUpsApprovedCount')
            ? Defined<double>(
                (on952298['totalCashCountFieldSignUpsApprovedCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsCount:
            on952298.containsKey('totalCashCountFieldSignUpsCount')
            ? Defined<double>(
                (on952298['totalCashCountFieldSignUpsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsInvalidCount:
            on952298.containsKey('totalCashCountFieldSignUpsInvalidCount')
            ? Defined<double>(
                (on952298['totalCashCountFieldSignUpsInvalidCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsPendingCount:
            on952298.containsKey('totalCashCountFieldSignUpsPendingCount')
            ? Defined<double>(
                (on952298['totalCashCountFieldSignUpsPendingCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsRejectedCount:
            on952298.containsKey('totalCashCountFieldSignUpsRejectedCount')
            ? Defined<double>(
                (on952298['totalCashCountFieldSignUpsRejectedCount'] as double),
              )
            : Undefined<double>(),
        updateMeta: on952298.containsKey('updateMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on952298['updateMeta'] as IMap<String, dynamic>).then(
                  (on106470) => (
                    action: (on106470['action'] as String),
                    details: on106470.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on106470['details'] as IMap<String, dynamic>).map(
                              (on926667, on704833) =>
                                  MapEntry(on926667, on704833),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on106470.containsKey('name')
                        ? Defined<String>((on106470['name'] as String))
                        : Undefined<String>(),
                    role: on106470.containsKey('role')
                        ? Defined<String>((on106470['role'] as String))
                        : Undefined<String>(),
                    userId: on106470.containsKey('userId')
                        ? Defined<String>((on106470['userId'] as String))
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
        updatedAt: on952298.containsKey('updatedAt')
            ? Defined<double>((on952298['updatedAt'] as double))
            : Undefined<double>(),
        userId: on952298.containsKey('userId')
            ? Defined<String>((on952298['userId'] as String))
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
        Optional<StorageId> storageId,
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
