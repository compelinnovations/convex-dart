// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final getMyProfile = QueryOperation<void, GetMyProfileResponse>(
  'app/fieldAgentAuth:getMyProfile',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(void args) {
  return hashmapToBtreemap(hashmap: {});
}

GetMyProfileResponse deserialize(DartValue map) {
  return (
    body: (decodeValue(map) as IMap<String, dynamic>?)?.then(
      (on510933) => (
        $_creationTime: (on510933['_creationTime'] as double),
        $_id: FieldAgentsId(on510933['_id'] as String),
        countryCityId: on510933.containsKey('countryCityId')
            ? Defined<CountryCitiesId>(
                CountryCitiesId(on510933['countryCityId'] as String),
              )
            : Undefined<CountryCitiesId>(),
        countryCityName: on510933.containsKey('countryCityName')
            ? Defined<String>((on510933['countryCityName'] as String))
            : Undefined<String>(),
        countryCode: on510933.containsKey('countryCode')
            ? Defined<String>((on510933['countryCode'] as String))
            : Undefined<String>(),
        countryISO: (on510933['countryISO'] as String),
        countryName: (on510933['countryName'] as String),
        countryStateId: on510933.containsKey('countryStateId')
            ? Defined<CountryStatesId>(
                CountryStatesId(on510933['countryStateId'] as String),
              )
            : Undefined<CountryStatesId>(),
        countryStateName: on510933.containsKey('countryStateName')
            ? Defined<String>((on510933['countryStateName'] as String))
            : Undefined<String>(),
        createMeta: on510933.containsKey('createMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on510933['createMeta'] as IMap<String, dynamic>).then(
                  (on275919) => (
                    action: (on275919['action'] as String),
                    details: on275919.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on275919['details'] as IMap<String, dynamic>).map(
                              (on389219, on844403) =>
                                  MapEntry(on389219, on844403),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on275919.containsKey('name')
                        ? Defined<String>((on275919['name'] as String))
                        : Undefined<String>(),
                    role: on275919.containsKey('role')
                        ? Defined<String>((on275919['role'] as String))
                        : Undefined<String>(),
                    userId: on275919.containsKey('userId')
                        ? Defined<String>((on275919['userId'] as String))
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
        createdAt: (on510933['createdAt'] as double),
        creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
          try {
            return FieldAgentsId(on510933['creatorId'] as String);
          } catch (e) {}

          try {
            return ShippingClientsId(on510933['creatorId'] as String);
          } catch (e) {}

          try {
            return (on510933['creatorId'] as String);
          } catch (e) {}

          throw Exception(
            (on510933['creatorId'].toString() ?? "null") +
                r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
          );
        }()),
        dateBirth: on510933.containsKey('dateBirth')
            ? Defined<double>((on510933['dateBirth'] as double))
            : Undefined<double>(),
        deletedAt: on510933.containsKey('deletedAt')
            ? Defined<double>((on510933['deletedAt'] as double))
            : Undefined<double>(),
        deletedMeta: on510933.containsKey('deletedMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on510933['deletedMeta'] as IMap<String, dynamic>).then(
                  (on276867) => (
                    action: (on276867['action'] as String),
                    details: on276867.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on276867['details'] as IMap<String, dynamic>).map(
                              (on124032, on654449) =>
                                  MapEntry(on124032, on654449),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on276867.containsKey('name')
                        ? Defined<String>((on276867['name'] as String))
                        : Undefined<String>(),
                    role: on276867.containsKey('role')
                        ? Defined<String>((on276867['role'] as String))
                        : Undefined<String>(),
                    userId: on276867.containsKey('userId')
                        ? Defined<String>((on276867['userId'] as String))
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
        email: (on510933['email'] as String),
        firstName: (on510933['firstName'] as String),
        fullName: on510933.containsKey('fullName')
            ? Defined<String>((on510933['fullName'] as String))
            : Undefined<String>(),
        gender: Union2<$MaleLiteral, $FemaleLiteral>(() {
          final map = {'Male': $MaleLiteral(), 'Female': $FemaleLiteral()};
          if (map.containsKey(on510933['gender'])) {
            return map[on510933['gender']];
          }
          throw Exception(
            (on510933['gender'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$MaleLiteral, $FemaleLiteral>",
          );
        }()),
        invitationId: on510933.containsKey('invitationId')
            ? Defined<String>((on510933['invitationId'] as String))
            : Undefined<String>(),
        lastName: (on510933['lastName'] as String),
        middleName: on510933.containsKey('middleName')
            ? Defined<String>((on510933['middleName'] as String))
            : Undefined<String>(),
        phoneNumber: (on510933['phoneNumber'] as String),
        profileImage: on510933.containsKey('profileImage')
            ? Defined<
                ({
                  Optional<String> blurHash,
                  Optional<String> mime,
                  Optional<String> name,
                  Optional<double> size,
                  StorageId? storageId,
                })
              >(
                (on510933['profileImage'] as IMap<String, dynamic>).then(
                  (on709990) => (
                    blurHash: on709990.containsKey('blurHash')
                        ? Defined<String>((on709990['blurHash'] as String))
                        : Undefined<String>(),
                    mime: on709990.containsKey('mime')
                        ? Defined<String>((on709990['mime'] as String))
                        : Undefined<String>(),
                    name: on709990.containsKey('name')
                        ? Defined<String>((on709990['name'] as String))
                        : Undefined<String>(),
                    size: on709990.containsKey('size')
                        ? Defined<double>((on709990['size'] as double))
                        : Undefined<double>(),
                    storageId: on709990['storageId'] == null
                        ? null
                        : StorageId(on709990['storageId'] as String),
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
                })
              >(),
        project: Union2<$CashCountLiteral, $AyekooLiteral>(() {
          final map = {
            'CashCount': $CashCountLiteral(),
            'Ayekoo': $AyekooLiteral(),
          };
          if (map.containsKey(on510933['project'])) {
            return map[on510933['project']];
          }
          throw Exception(
            (on510933['project'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$CashCountLiteral, $AyekooLiteral>",
          );
        }()),
        referralCode: (on510933['referralCode'] as String),
        status: (on510933['status'] as String),
        teamId: on510933.containsKey('teamId')
            ? Defined<String>((on510933['teamId'] as String))
            : Undefined<String>(),
        totalAyekooAllocationsCount:
            on510933.containsKey('totalAyekooAllocationsCount')
            ? Defined<double>(
                (on510933['totalAyekooAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsCount:
            on510933.containsKey('totalAyekooCollectionsCount')
            ? Defined<double>(
                (on510933['totalAyekooCollectionsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountAllocationsCount:
            on510933.containsKey('totalCashCountAllocationsCount')
            ? Defined<double>(
                (on510933['totalCashCountAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsCount:
            on510933.containsKey('totalCashCountFieldSignUpsCount')
            ? Defined<double>(
                (on510933['totalCashCountFieldSignUpsCount'] as double),
              )
            : Undefined<double>(),
        updateMeta: on510933.containsKey('updateMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on510933['updateMeta'] as IMap<String, dynamic>).then(
                  (on675354) => (
                    action: (on675354['action'] as String),
                    details: on675354.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on675354['details'] as IMap<String, dynamic>).map(
                              (on704010, on564892) =>
                                  MapEntry(on704010, on564892),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on675354.containsKey('name')
                        ? Defined<String>((on675354['name'] as String))
                        : Undefined<String>(),
                    role: on675354.containsKey('role')
                        ? Defined<String>((on675354['role'] as String))
                        : Undefined<String>(),
                    userId: on675354.containsKey('userId')
                        ? Defined<String>((on675354['userId'] as String))
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
        updatedAt: on510933.containsKey('updatedAt')
            ? Defined<double>((on510933['updatedAt'] as double))
            : Undefined<double>(),
        userId: on510933.containsKey('userId')
            ? Defined<String>((on510933['userId'] as String))
            : Undefined<String>(),
      ),
    ),
  );
}

typedef GetMyProfileResponse = ({
  ({
    double $_creationTime,
    FieldAgentsId $_id,
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
      })
    >
    profileImage,
    Union2<$CashCountLiteral, $AyekooLiteral> project,
    String referralCode,
    String status,
    Optional<String> teamId,
    Optional<double> totalAyekooAllocationsCount,
    Optional<double> totalAyekooCollectionsCount,
    Optional<double> totalCashCountAllocationsCount,
    Optional<double> totalCashCountFieldSignUpsCount,
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
