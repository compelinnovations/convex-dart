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
      (on773751) => (
        $_creationTime: (on773751['_creationTime'] as double),
        $_id: FieldAgentsId(on773751['_id'] as String),
        ayekooLeaderboardPosition:
            on773751.containsKey('ayekooLeaderboardPosition')
            ? Defined<double>((on773751['ayekooLeaderboardPosition'] as double))
            : Undefined<double>(),
        cashCountLeaderboardPosition:
            on773751.containsKey('cashCountLeaderboardPosition')
            ? Defined<double>(
                (on773751['cashCountLeaderboardPosition'] as double),
              )
            : Undefined<double>(),
        countryCityId: on773751.containsKey('countryCityId')
            ? Defined<CountryCitiesId>(
                CountryCitiesId(on773751['countryCityId'] as String),
              )
            : Undefined<CountryCitiesId>(),
        countryCityName: on773751.containsKey('countryCityName')
            ? Defined<String>((on773751['countryCityName'] as String))
            : Undefined<String>(),
        countryCode: on773751.containsKey('countryCode')
            ? Defined<String>((on773751['countryCode'] as String))
            : Undefined<String>(),
        countryISO: (on773751['countryISO'] as String),
        countryName: (on773751['countryName'] as String),
        countryStateId: on773751.containsKey('countryStateId')
            ? Defined<CountryStatesId>(
                CountryStatesId(on773751['countryStateId'] as String),
              )
            : Undefined<CountryStatesId>(),
        countryStateName: on773751.containsKey('countryStateName')
            ? Defined<String>((on773751['countryStateName'] as String))
            : Undefined<String>(),
        createMeta: on773751.containsKey('createMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on773751['createMeta'] as IMap<String, dynamic>).then(
                  (on57557) => (
                    action: (on57557['action'] as String),
                    details: on57557.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on57557['details'] as IMap<String, dynamic>).map(
                              (on399504, on986825) =>
                                  MapEntry(on399504, on986825),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on57557.containsKey('name')
                        ? Defined<String>((on57557['name'] as String))
                        : Undefined<String>(),
                    role: on57557.containsKey('role')
                        ? Defined<String>((on57557['role'] as String))
                        : Undefined<String>(),
                    userId: on57557.containsKey('userId')
                        ? Defined<String>((on57557['userId'] as String))
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
        createdAt: (on773751['createdAt'] as double),
        creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
          try {
            return FieldAgentsId(on773751['creatorId'] as String);
          } catch (e) {}

          try {
            return ShippingClientsId(on773751['creatorId'] as String);
          } catch (e) {}

          try {
            return (on773751['creatorId'] as String);
          } catch (e) {}

          throw Exception(
            (on773751['creatorId'].toString() ?? "null") +
                r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
          );
        }()),
        dateBirth: on773751.containsKey('dateBirth')
            ? Defined<double>((on773751['dateBirth'] as double))
            : Undefined<double>(),
        deletedAt: on773751.containsKey('deletedAt')
            ? Defined<double>((on773751['deletedAt'] as double))
            : Undefined<double>(),
        deletedMeta: on773751.containsKey('deletedMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on773751['deletedMeta'] as IMap<String, dynamic>).then(
                  (on828781) => (
                    action: (on828781['action'] as String),
                    details: on828781.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on828781['details'] as IMap<String, dynamic>).map(
                              (on278263, on821735) =>
                                  MapEntry(on278263, on821735),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on828781.containsKey('name')
                        ? Defined<String>((on828781['name'] as String))
                        : Undefined<String>(),
                    role: on828781.containsKey('role')
                        ? Defined<String>((on828781['role'] as String))
                        : Undefined<String>(),
                    userId: on828781.containsKey('userId')
                        ? Defined<String>((on828781['userId'] as String))
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
        email: (on773751['email'] as String),
        firstName: (on773751['firstName'] as String),
        fullName: on773751.containsKey('fullName')
            ? Defined<String>((on773751['fullName'] as String))
            : Undefined<String>(),
        gender: Union2<$MaleLiteral, $FemaleLiteral>(() {
          final map = {'Male': $MaleLiteral(), 'Female': $FemaleLiteral()};
          if (map.containsKey(on773751['gender'])) {
            return map[on773751['gender']];
          }
          throw Exception(
            (on773751['gender'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$MaleLiteral, $FemaleLiteral>",
          );
        }()),
        invitationId: on773751.containsKey('invitationId')
            ? Defined<String>((on773751['invitationId'] as String))
            : Undefined<String>(),
        invitationStatus: on773751.containsKey('invitationStatus')
            ? Defined<String>((on773751['invitationStatus'] as String))
            : Undefined<String>(),
        lastName: (on773751['lastName'] as String),
        middleName: on773751.containsKey('middleName')
            ? Defined<String>((on773751['middleName'] as String))
            : Undefined<String>(),
        phoneNumber: (on773751['phoneNumber'] as String),
        profileImage: on773751.containsKey('profileImage')
            ? Defined<
                ({
                  Optional<String> blurHash,
                  Optional<String> mime,
                  Optional<String> name,
                  Optional<double> size,
                  StorageId? storageId,
                  Optional<String> url,
                })
              >(
                (on773751['profileImage'] as IMap<String, dynamic>).then(
                  (on924067) => (
                    blurHash: on924067.containsKey('blurHash')
                        ? Defined<String>((on924067['blurHash'] as String))
                        : Undefined<String>(),
                    mime: on924067.containsKey('mime')
                        ? Defined<String>((on924067['mime'] as String))
                        : Undefined<String>(),
                    name: on924067.containsKey('name')
                        ? Defined<String>((on924067['name'] as String))
                        : Undefined<String>(),
                    size: on924067.containsKey('size')
                        ? Defined<double>((on924067['size'] as double))
                        : Undefined<double>(),
                    storageId: on924067['storageId'] == null
                        ? null
                        : StorageId(on924067['storageId'] as String),
                    url: on924067.containsKey('url')
                        ? Defined<String>((on924067['url'] as String))
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
                  StorageId? storageId,
                  Optional<String> url,
                })
              >(),
        project: Union2<$CashCountLiteral, $AyekooLiteral>(() {
          final map = {
            'CashCount': $CashCountLiteral(),
            'Ayekoo': $AyekooLiteral(),
          };
          if (map.containsKey(on773751['project'])) {
            return map[on773751['project']];
          }
          throw Exception(
            (on773751['project'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$CashCountLiteral, $AyekooLiteral>",
          );
        }()),
        referralCode: (on773751['referralCode'] as String),
        status: (on773751['status'] as String),
        teamId: on773751.containsKey('teamId')
            ? Defined<String>((on773751['teamId'] as String))
            : Undefined<String>(),
        totalAyekooAllocationsCount:
            on773751.containsKey('totalAyekooAllocationsCount')
            ? Defined<double>(
                (on773751['totalAyekooAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsApprovedCount:
            on773751.containsKey('totalAyekooCollectionsApprovedCount')
            ? Defined<double>(
                (on773751['totalAyekooCollectionsApprovedCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsCount:
            on773751.containsKey('totalAyekooCollectionsCount')
            ? Defined<double>(
                (on773751['totalAyekooCollectionsCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsInvalidCount:
            on773751.containsKey('totalAyekooCollectionsInvalidCount')
            ? Defined<double>(
                (on773751['totalAyekooCollectionsInvalidCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsPendingCount:
            on773751.containsKey('totalAyekooCollectionsPendingCount')
            ? Defined<double>(
                (on773751['totalAyekooCollectionsPendingCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsRejectedCount:
            on773751.containsKey('totalAyekooCollectionsRejectedCount')
            ? Defined<double>(
                (on773751['totalAyekooCollectionsRejectedCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountAllocationsCount:
            on773751.containsKey('totalCashCountAllocationsCount')
            ? Defined<double>(
                (on773751['totalCashCountAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsApprovedCount:
            on773751.containsKey('totalCashCountFieldSignUpsApprovedCount')
            ? Defined<double>(
                (on773751['totalCashCountFieldSignUpsApprovedCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsCount:
            on773751.containsKey('totalCashCountFieldSignUpsCount')
            ? Defined<double>(
                (on773751['totalCashCountFieldSignUpsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsInvalidCount:
            on773751.containsKey('totalCashCountFieldSignUpsInvalidCount')
            ? Defined<double>(
                (on773751['totalCashCountFieldSignUpsInvalidCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsPendingCount:
            on773751.containsKey('totalCashCountFieldSignUpsPendingCount')
            ? Defined<double>(
                (on773751['totalCashCountFieldSignUpsPendingCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsRejectedCount:
            on773751.containsKey('totalCashCountFieldSignUpsRejectedCount')
            ? Defined<double>(
                (on773751['totalCashCountFieldSignUpsRejectedCount'] as double),
              )
            : Undefined<double>(),
        updateMeta: on773751.containsKey('updateMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on773751['updateMeta'] as IMap<String, dynamic>).then(
                  (on893138) => (
                    action: (on893138['action'] as String),
                    details: on893138.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on893138['details'] as IMap<String, dynamic>).map(
                              (on753490, on414372) =>
                                  MapEntry(on753490, on414372),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on893138.containsKey('name')
                        ? Defined<String>((on893138['name'] as String))
                        : Undefined<String>(),
                    role: on893138.containsKey('role')
                        ? Defined<String>((on893138['role'] as String))
                        : Undefined<String>(),
                    userId: on893138.containsKey('userId')
                        ? Defined<String>((on893138['userId'] as String))
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
        updatedAt: on773751.containsKey('updatedAt')
            ? Defined<double>((on773751['updatedAt'] as double))
            : Undefined<double>(),
        userId: on773751.containsKey('userId')
            ? Defined<String>((on773751['userId'] as String))
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
        StorageId? storageId,
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
