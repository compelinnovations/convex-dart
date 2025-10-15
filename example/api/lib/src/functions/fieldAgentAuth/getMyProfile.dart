// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final getMyProfile = QueryOperation<void, GetMyProfileResponse>(
  'fieldAgentAuth:getMyProfile',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(void args) {
  return hashmapToBtreemap(hashmap: {});
}

GetMyProfileResponse deserialize(DartValue map) {
  return (
    body: (decodeValue(map) as IMap<String, dynamic>?)?.then(
      (on54842) => (
        $_creationTime: (on54842['_creationTime'] as double),
        $_id: FieldAgentsId(on54842['_id'] as String),
        countryCityId: on54842.containsKey('countryCityId')
            ? Defined(CountryCitiesId(on54842['countryCityId'] as String))
            : Undefined<CountryCitiesId>(),
        countryCityName: on54842.containsKey('countryCityName')
            ? Defined((on54842['countryCityName'] as String))
            : Undefined<String>(),
        countryCode: on54842.containsKey('countryCode')
            ? Defined((on54842['countryCode'] as String))
            : Undefined<String>(),
        countryISO: (on54842['countryISO'] as String),
        countryName: (on54842['countryName'] as String),
        countryStateId: on54842.containsKey('countryStateId')
            ? Defined(CountryStatesId(on54842['countryStateId'] as String))
            : Undefined<CountryStatesId>(),
        countryStateName: on54842.containsKey('countryStateName')
            ? Defined((on54842['countryStateName'] as String))
            : Undefined<String>(),
        createMeta: on54842.containsKey('createMeta')
            ? Defined(
                (on54842['createMeta'] as IMap<String, dynamic>).then(
                  (on388461) => (
                    action: (on388461['action'] as String),
                    details: on388461.containsKey('details')
                        ? Defined(
                            (on388461['details'] as IMap<String, dynamic>).map(
                              (on151619, on971568) =>
                                  MapEntry(on151619, on971568),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on388461.containsKey('name')
                        ? Defined((on388461['name'] as String))
                        : Undefined<String>(),
                    role: on388461.containsKey('role')
                        ? Defined((on388461['role'] as String))
                        : Undefined<String>(),
                    userId: on388461.containsKey('userId')
                        ? Defined((on388461['userId'] as String))
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
        createdAt: (on54842['createdAt'] as double),
        creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
          try {
            return FieldAgentsId(on54842['creatorId'] as String);
          } catch (e) {}

          try {
            return ShippingClientsId(on54842['creatorId'] as String);
          } catch (e) {}

          try {
            return (on54842['creatorId'] as String);
          } catch (e) {}

          throw Exception(
            (on54842['creatorId'].toString() ?? "null") +
                r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
          );
        }()),
        dateBirth: on54842.containsKey('dateBirth')
            ? Defined((on54842['dateBirth'] as double))
            : Undefined<double>(),
        deletedAt: on54842.containsKey('deletedAt')
            ? Defined((on54842['deletedAt'] as double))
            : Undefined<double>(),
        deletedMeta: on54842.containsKey('deletedMeta')
            ? Defined(
                (on54842['deletedMeta'] as IMap<String, dynamic>).then(
                  (on520353) => (
                    action: (on520353['action'] as String),
                    details: on520353.containsKey('details')
                        ? Defined(
                            (on520353['details'] as IMap<String, dynamic>).map(
                              (on759622, on869471) =>
                                  MapEntry(on759622, on869471),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on520353.containsKey('name')
                        ? Defined((on520353['name'] as String))
                        : Undefined<String>(),
                    role: on520353.containsKey('role')
                        ? Defined((on520353['role'] as String))
                        : Undefined<String>(),
                    userId: on520353.containsKey('userId')
                        ? Defined((on520353['userId'] as String))
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
        email: (on54842['email'] as String),
        firstName: (on54842['firstName'] as String),
        fullName: on54842.containsKey('fullName')
            ? Defined((on54842['fullName'] as String))
            : Undefined<String>(),
        gender: Union2<$MaleLiteral, $FemaleLiteral>(() {
          final map = {'Male': $MaleLiteral(), 'Female': $FemaleLiteral()};
          if (map.containsKey(on54842['gender'])) {
            return map[on54842['gender']];
          }
          throw Exception(
            (on54842['gender'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$MaleLiteral, $FemaleLiteral>",
          );
        }()),
        invitationId: on54842.containsKey('invitationId')
            ? Defined((on54842['invitationId'] as String))
            : Undefined<String>(),
        lastName: (on54842['lastName'] as String),
        middleName: on54842.containsKey('middleName')
            ? Defined((on54842['middleName'] as String))
            : Undefined<String>(),
        phoneNumber: (on54842['phoneNumber'] as String),
        profileImage: on54842.containsKey('profileImage')
            ? Defined(
                (on54842['profileImage'] as IMap<String, dynamic>).then(
                  (on89281) => (
                    blurHash: on89281.containsKey('blurHash')
                        ? Defined((on89281['blurHash'] as String))
                        : Undefined<String>(),
                    mime: on89281.containsKey('mime')
                        ? Defined((on89281['mime'] as String))
                        : Undefined<String>(),
                    name: on89281.containsKey('name')
                        ? Defined((on89281['name'] as String))
                        : Undefined<String>(),
                    size: on89281.containsKey('size')
                        ? Defined((on89281['size'] as double))
                        : Undefined<double>(),
                    storageId: on89281['storageId'] == null
                        ? null
                        : StorageId(on89281['storageId'] as String),
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
          if (map.containsKey(on54842['project'])) {
            return map[on54842['project']];
          }
          throw Exception(
            (on54842['project'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$CashCountLiteral, $AyekooLiteral>",
          );
        }()),
        referralCode: (on54842['referralCode'] as String),
        status: (on54842['status'] as String),
        teamId: on54842.containsKey('teamId')
            ? Defined((on54842['teamId'] as String))
            : Undefined<String>(),
        totalAyekooAllocationsCount:
            on54842.containsKey('totalAyekooAllocationsCount')
            ? Defined((on54842['totalAyekooAllocationsCount'] as double))
            : Undefined<double>(),
        totalAyekooCollectionsCount:
            on54842.containsKey('totalAyekooCollectionsCount')
            ? Defined((on54842['totalAyekooCollectionsCount'] as double))
            : Undefined<double>(),
        totalCashCountAllocationsCount:
            on54842.containsKey('totalCashCountAllocationsCount')
            ? Defined((on54842['totalCashCountAllocationsCount'] as double))
            : Undefined<double>(),
        totalCashCountFieldSignUpsCount:
            on54842.containsKey('totalCashCountFieldSignUpsCount')
            ? Defined((on54842['totalCashCountFieldSignUpsCount'] as double))
            : Undefined<double>(),
        updateMeta: on54842.containsKey('updateMeta')
            ? Defined(
                (on54842['updateMeta'] as IMap<String, dynamic>).then(
                  (on268008) => (
                    action: (on268008['action'] as String),
                    details: on268008.containsKey('details')
                        ? Defined(
                            (on268008['details'] as IMap<String, dynamic>).map(
                              (on871211, on840162) =>
                                  MapEntry(on871211, on840162),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on268008.containsKey('name')
                        ? Defined((on268008['name'] as String))
                        : Undefined<String>(),
                    role: on268008.containsKey('role')
                        ? Defined((on268008['role'] as String))
                        : Undefined<String>(),
                    userId: on268008.containsKey('userId')
                        ? Defined((on268008['userId'] as String))
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
        updatedAt: on54842.containsKey('updatedAt')
            ? Defined((on54842['updatedAt'] as double))
            : Undefined<double>(),
        userId: on54842.containsKey('userId')
            ? Defined((on54842['userId'] as String))
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
