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
      (on420615) => (
        $_creationTime: (on420615['_creationTime'] as double),
        $_id: FieldAgentsId(on420615['_id'] as String),
        countryCityId: on420615.containsKey('countryCityId')
            ? Defined(CountryCitiesId(on420615['countryCityId'] as String))
            : Undefined<CountryCitiesId>(),
        countryCityName: on420615.containsKey('countryCityName')
            ? Defined((on420615['countryCityName'] as String))
            : Undefined<String>(),
        countryCode: on420615.containsKey('countryCode')
            ? Defined((on420615['countryCode'] as String))
            : Undefined<String>(),
        countryISO: (on420615['countryISO'] as String),
        countryName: (on420615['countryName'] as String),
        countryStateId: on420615.containsKey('countryStateId')
            ? Defined(CountryStatesId(on420615['countryStateId'] as String))
            : Undefined<CountryStatesId>(),
        countryStateName: on420615.containsKey('countryStateName')
            ? Defined((on420615['countryStateName'] as String))
            : Undefined<String>(),
        createMeta: on420615.containsKey('createMeta')
            ? Defined(
                (on420615['createMeta'] as IMap<String, dynamic>).then(
                  (on995318) => (
                    action: (on995318['action'] as String),
                    details: on995318.containsKey('details')
                        ? Defined(
                            (on995318['details'] as IMap<String, dynamic>).map(
                              (on989042, on670785) =>
                                  MapEntry(on989042, on670785),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on995318.containsKey('name')
                        ? Defined((on995318['name'] as String))
                        : Undefined<String>(),
                    role: on995318.containsKey('role')
                        ? Defined((on995318['role'] as String))
                        : Undefined<String>(),
                    userId: on995318.containsKey('userId')
                        ? Defined((on995318['userId'] as String))
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
        createdAt: (on420615['createdAt'] as double),
        creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
          try {
            return FieldAgentsId(on420615['creatorId'] as String);
          } catch (e) {}

          try {
            return ShippingClientsId(on420615['creatorId'] as String);
          } catch (e) {}

          try {
            return (on420615['creatorId'] as String);
          } catch (e) {}

          throw Exception(
            (on420615['creatorId'].toString() ?? "null") +
                r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
          );
        }()),
        dateBirth: on420615.containsKey('dateBirth')
            ? Defined((on420615['dateBirth'] as double))
            : Undefined<double>(),
        deletedAt: on420615.containsKey('deletedAt')
            ? Defined((on420615['deletedAt'] as double))
            : Undefined<double>(),
        deletedMeta: on420615.containsKey('deletedMeta')
            ? Defined(
                (on420615['deletedMeta'] as IMap<String, dynamic>).then(
                  (on711916) => (
                    action: (on711916['action'] as String),
                    details: on711916.containsKey('details')
                        ? Defined(
                            (on711916['details'] as IMap<String, dynamic>).map(
                              (on620521, on182771) =>
                                  MapEntry(on620521, on182771),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on711916.containsKey('name')
                        ? Defined((on711916['name'] as String))
                        : Undefined<String>(),
                    role: on711916.containsKey('role')
                        ? Defined((on711916['role'] as String))
                        : Undefined<String>(),
                    userId: on711916.containsKey('userId')
                        ? Defined((on711916['userId'] as String))
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
        email: (on420615['email'] as String),
        firstName: (on420615['firstName'] as String),
        fullName: on420615.containsKey('fullName')
            ? Defined((on420615['fullName'] as String))
            : Undefined<String>(),
        gender: Union2<$MaleLiteral, $FemaleLiteral>(() {
          final map = {'Male': $MaleLiteral(), 'Female': $FemaleLiteral()};
          if (map.containsKey(on420615['gender'])) {
            return map[on420615['gender']];
          }
          throw Exception(
            (on420615['gender'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$MaleLiteral, $FemaleLiteral>",
          );
        }()),
        invitationId: on420615.containsKey('invitationId')
            ? Defined((on420615['invitationId'] as String))
            : Undefined<String>(),
        lastName: (on420615['lastName'] as String),
        middleName: on420615.containsKey('middleName')
            ? Defined((on420615['middleName'] as String))
            : Undefined<String>(),
        phoneNumber: (on420615['phoneNumber'] as String),
        profileImage: on420615.containsKey('profileImage')
            ? Defined(
                (on420615['profileImage'] as IMap<String, dynamic>).then(
                  (on770549) => (
                    blurHash: on770549.containsKey('blurHash')
                        ? Defined((on770549['blurHash'] as String))
                        : Undefined<String>(),
                    mime: on770549.containsKey('mime')
                        ? Defined((on770549['mime'] as String))
                        : Undefined<String>(),
                    name: on770549.containsKey('name')
                        ? Defined((on770549['name'] as String))
                        : Undefined<String>(),
                    size: on770549.containsKey('size')
                        ? Defined((on770549['size'] as double))
                        : Undefined<double>(),
                    storageId: on770549['storageId'] == null
                        ? null
                        : StorageId(on770549['storageId'] as String),
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
          if (map.containsKey(on420615['project'])) {
            return map[on420615['project']];
          }
          throw Exception(
            (on420615['project'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$CashCountLiteral, $AyekooLiteral>",
          );
        }()),
        referralCode: (on420615['referralCode'] as String),
        status: (on420615['status'] as String),
        teamId: on420615.containsKey('teamId')
            ? Defined((on420615['teamId'] as String))
            : Undefined<String>(),
        totalAyekooAllocationsCount:
            on420615.containsKey('totalAyekooAllocationsCount')
            ? Defined((on420615['totalAyekooAllocationsCount'] as double))
            : Undefined<double>(),
        totalAyekooCollectionsCount:
            on420615.containsKey('totalAyekooCollectionsCount')
            ? Defined((on420615['totalAyekooCollectionsCount'] as double))
            : Undefined<double>(),
        totalCashCountAllocationsCount:
            on420615.containsKey('totalCashCountAllocationsCount')
            ? Defined((on420615['totalCashCountAllocationsCount'] as double))
            : Undefined<double>(),
        totalCashCountFieldSignUpsCount:
            on420615.containsKey('totalCashCountFieldSignUpsCount')
            ? Defined((on420615['totalCashCountFieldSignUpsCount'] as double))
            : Undefined<double>(),
        updateMeta: on420615.containsKey('updateMeta')
            ? Defined(
                (on420615['updateMeta'] as IMap<String, dynamic>).then(
                  (on509416) => (
                    action: (on509416['action'] as String),
                    details: on509416.containsKey('details')
                        ? Defined(
                            (on509416['details'] as IMap<String, dynamic>).map(
                              (on355845, on801812) =>
                                  MapEntry(on355845, on801812),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on509416.containsKey('name')
                        ? Defined((on509416['name'] as String))
                        : Undefined<String>(),
                    role: on509416.containsKey('role')
                        ? Defined((on509416['role'] as String))
                        : Undefined<String>(),
                    userId: on509416.containsKey('userId')
                        ? Defined((on509416['userId'] as String))
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
        updatedAt: on420615.containsKey('updatedAt')
            ? Defined((on420615['updatedAt'] as double))
            : Undefined<double>(),
        userId: on420615.containsKey('userId')
            ? Defined((on420615['userId'] as String))
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
