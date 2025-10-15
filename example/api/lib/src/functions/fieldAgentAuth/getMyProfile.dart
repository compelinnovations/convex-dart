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
      (on928622) => (
        $_creationTime: (on928622['_creationTime'] as double),
        $_id: FieldAgentsId(on928622['_id'] as String),
        countryCityId: on928622.containsKey('countryCityId')
            ? Defined<CountryCitiesId>(
                CountryCitiesId(on928622['countryCityId'] as String),
              )
            : Undefined<CountryCitiesId>(),
        countryCityName: on928622.containsKey('countryCityName')
            ? Defined<String>((on928622['countryCityName'] as String))
            : Undefined<String>(),
        countryCode: on928622.containsKey('countryCode')
            ? Defined<String>((on928622['countryCode'] as String))
            : Undefined<String>(),
        countryISO: (on928622['countryISO'] as String),
        countryName: (on928622['countryName'] as String),
        countryStateId: on928622.containsKey('countryStateId')
            ? Defined<CountryStatesId>(
                CountryStatesId(on928622['countryStateId'] as String),
              )
            : Undefined<CountryStatesId>(),
        countryStateName: on928622.containsKey('countryStateName')
            ? Defined<String>((on928622['countryStateName'] as String))
            : Undefined<String>(),
        createMeta: on928622.containsKey('createMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on928622['createMeta'] as IMap<String, dynamic>).then(
                  (on868838) => (
                    action: (on868838['action'] as String),
                    details: on868838.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on868838['details'] as IMap<String, dynamic>).map(
                              (on276015, on457659) =>
                                  MapEntry(on276015, on457659),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on868838.containsKey('name')
                        ? Defined<String>((on868838['name'] as String))
                        : Undefined<String>(),
                    role: on868838.containsKey('role')
                        ? Defined<String>((on868838['role'] as String))
                        : Undefined<String>(),
                    userId: on868838.containsKey('userId')
                        ? Defined<String>((on868838['userId'] as String))
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
        createdAt: (on928622['createdAt'] as double),
        creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
          try {
            return FieldAgentsId(on928622['creatorId'] as String);
          } catch (e) {}

          try {
            return ShippingClientsId(on928622['creatorId'] as String);
          } catch (e) {}

          try {
            return (on928622['creatorId'] as String);
          } catch (e) {}

          throw Exception(
            (on928622['creatorId'].toString() ?? "null") +
                r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
          );
        }()),
        dateBirth: on928622.containsKey('dateBirth')
            ? Defined<double>((on928622['dateBirth'] as double))
            : Undefined<double>(),
        deletedAt: on928622.containsKey('deletedAt')
            ? Defined<double>((on928622['deletedAt'] as double))
            : Undefined<double>(),
        deletedMeta: on928622.containsKey('deletedMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on928622['deletedMeta'] as IMap<String, dynamic>).then(
                  (on979518) => (
                    action: (on979518['action'] as String),
                    details: on979518.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on979518['details'] as IMap<String, dynamic>).map(
                              (on597201, on161730) =>
                                  MapEntry(on597201, on161730),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on979518.containsKey('name')
                        ? Defined<String>((on979518['name'] as String))
                        : Undefined<String>(),
                    role: on979518.containsKey('role')
                        ? Defined<String>((on979518['role'] as String))
                        : Undefined<String>(),
                    userId: on979518.containsKey('userId')
                        ? Defined<String>((on979518['userId'] as String))
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
        email: (on928622['email'] as String),
        firstName: (on928622['firstName'] as String),
        fullName: on928622.containsKey('fullName')
            ? Defined<String>((on928622['fullName'] as String))
            : Undefined<String>(),
        gender: Union2<$MaleLiteral, $FemaleLiteral>(() {
          final map = {'Male': $MaleLiteral(), 'Female': $FemaleLiteral()};
          if (map.containsKey(on928622['gender'])) {
            return map[on928622['gender']];
          }
          throw Exception(
            (on928622['gender'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$MaleLiteral, $FemaleLiteral>",
          );
        }()),
        invitationId: on928622.containsKey('invitationId')
            ? Defined<String>((on928622['invitationId'] as String))
            : Undefined<String>(),
        lastName: (on928622['lastName'] as String),
        middleName: on928622.containsKey('middleName')
            ? Defined<String>((on928622['middleName'] as String))
            : Undefined<String>(),
        phoneNumber: (on928622['phoneNumber'] as String),
        profileImage: on928622.containsKey('profileImage')
            ? Defined<
                ({
                  Optional<String> blurHash,
                  Optional<String> mime,
                  Optional<String> name,
                  Optional<double> size,
                  StorageId? storageId,
                })
              >(
                (on928622['profileImage'] as IMap<String, dynamic>).then(
                  (on633961) => (
                    blurHash: on633961.containsKey('blurHash')
                        ? Defined<String>((on633961['blurHash'] as String))
                        : Undefined<String>(),
                    mime: on633961.containsKey('mime')
                        ? Defined<String>((on633961['mime'] as String))
                        : Undefined<String>(),
                    name: on633961.containsKey('name')
                        ? Defined<String>((on633961['name'] as String))
                        : Undefined<String>(),
                    size: on633961.containsKey('size')
                        ? Defined<double>((on633961['size'] as double))
                        : Undefined<double>(),
                    storageId: on633961['storageId'] == null
                        ? null
                        : StorageId(on633961['storageId'] as String),
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
          if (map.containsKey(on928622['project'])) {
            return map[on928622['project']];
          }
          throw Exception(
            (on928622['project'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$CashCountLiteral, $AyekooLiteral>",
          );
        }()),
        referralCode: (on928622['referralCode'] as String),
        status: (on928622['status'] as String),
        teamId: on928622.containsKey('teamId')
            ? Defined<String>((on928622['teamId'] as String))
            : Undefined<String>(),
        totalAyekooAllocationsCount:
            on928622.containsKey('totalAyekooAllocationsCount')
            ? Defined<double>(
                (on928622['totalAyekooAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsCount:
            on928622.containsKey('totalAyekooCollectionsCount')
            ? Defined<double>(
                (on928622['totalAyekooCollectionsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountAllocationsCount:
            on928622.containsKey('totalCashCountAllocationsCount')
            ? Defined<double>(
                (on928622['totalCashCountAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsCount:
            on928622.containsKey('totalCashCountFieldSignUpsCount')
            ? Defined<double>(
                (on928622['totalCashCountFieldSignUpsCount'] as double),
              )
            : Undefined<double>(),
        updateMeta: on928622.containsKey('updateMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on928622['updateMeta'] as IMap<String, dynamic>).then(
                  (on380378) => (
                    action: (on380378['action'] as String),
                    details: on380378.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on380378['details'] as IMap<String, dynamic>).map(
                              (on981226, on127270) =>
                                  MapEntry(on981226, on127270),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on380378.containsKey('name')
                        ? Defined<String>((on380378['name'] as String))
                        : Undefined<String>(),
                    role: on380378.containsKey('role')
                        ? Defined<String>((on380378['role'] as String))
                        : Undefined<String>(),
                    userId: on380378.containsKey('userId')
                        ? Defined<String>((on380378['userId'] as String))
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
        updatedAt: on928622.containsKey('updatedAt')
            ? Defined<double>((on928622['updatedAt'] as double))
            : Undefined<double>(),
        userId: on928622.containsKey('userId')
            ? Defined<String>((on928622['userId'] as String))
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
