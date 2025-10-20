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
      (on899294) => (
        $_creationTime: (on899294['_creationTime'] as double),
        $_id: FieldAgentsId(on899294['_id'] as String),
        countryCityId: on899294.containsKey('countryCityId')
            ? Defined<CountryCitiesId>(
                CountryCitiesId(on899294['countryCityId'] as String),
              )
            : Undefined<CountryCitiesId>(),
        countryCityName: on899294.containsKey('countryCityName')
            ? Defined<String>((on899294['countryCityName'] as String))
            : Undefined<String>(),
        countryCode: on899294.containsKey('countryCode')
            ? Defined<String>((on899294['countryCode'] as String))
            : Undefined<String>(),
        countryISO: (on899294['countryISO'] as String),
        countryName: (on899294['countryName'] as String),
        countryStateId: on899294.containsKey('countryStateId')
            ? Defined<CountryStatesId>(
                CountryStatesId(on899294['countryStateId'] as String),
              )
            : Undefined<CountryStatesId>(),
        countryStateName: on899294.containsKey('countryStateName')
            ? Defined<String>((on899294['countryStateName'] as String))
            : Undefined<String>(),
        createMeta: on899294.containsKey('createMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on899294['createMeta'] as IMap<String, dynamic>).then(
                  (on284963) => (
                    action: (on284963['action'] as String),
                    details: on284963.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on284963['details'] as IMap<String, dynamic>).map(
                              (on631027, on870233) =>
                                  MapEntry(on631027, on870233),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on284963.containsKey('name')
                        ? Defined<String>((on284963['name'] as String))
                        : Undefined<String>(),
                    role: on284963.containsKey('role')
                        ? Defined<String>((on284963['role'] as String))
                        : Undefined<String>(),
                    userId: on284963.containsKey('userId')
                        ? Defined<String>((on284963['userId'] as String))
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
        createdAt: (on899294['createdAt'] as double),
        creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
          try {
            return FieldAgentsId(on899294['creatorId'] as String);
          } catch (e) {}

          try {
            return ShippingClientsId(on899294['creatorId'] as String);
          } catch (e) {}

          try {
            return (on899294['creatorId'] as String);
          } catch (e) {}

          throw Exception(
            (on899294['creatorId'].toString() ?? "null") +
                r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
          );
        }()),
        dateBirth: on899294.containsKey('dateBirth')
            ? Defined<double>((on899294['dateBirth'] as double))
            : Undefined<double>(),
        deletedAt: on899294.containsKey('deletedAt')
            ? Defined<double>((on899294['deletedAt'] as double))
            : Undefined<double>(),
        deletedMeta: on899294.containsKey('deletedMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on899294['deletedMeta'] as IMap<String, dynamic>).then(
                  (on809285) => (
                    action: (on809285['action'] as String),
                    details: on809285.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on809285['details'] as IMap<String, dynamic>).map(
                              (on223752, on873997) =>
                                  MapEntry(on223752, on873997),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on809285.containsKey('name')
                        ? Defined<String>((on809285['name'] as String))
                        : Undefined<String>(),
                    role: on809285.containsKey('role')
                        ? Defined<String>((on809285['role'] as String))
                        : Undefined<String>(),
                    userId: on809285.containsKey('userId')
                        ? Defined<String>((on809285['userId'] as String))
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
        email: (on899294['email'] as String),
        firstName: (on899294['firstName'] as String),
        fullName: on899294.containsKey('fullName')
            ? Defined<String>((on899294['fullName'] as String))
            : Undefined<String>(),
        gender: Union2<$MaleLiteral, $FemaleLiteral>(() {
          final map = {'Male': $MaleLiteral(), 'Female': $FemaleLiteral()};
          if (map.containsKey(on899294['gender'])) {
            return map[on899294['gender']];
          }
          throw Exception(
            (on899294['gender'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$MaleLiteral, $FemaleLiteral>",
          );
        }()),
        invitationId: on899294.containsKey('invitationId')
            ? Defined<String>((on899294['invitationId'] as String))
            : Undefined<String>(),
        lastName: (on899294['lastName'] as String),
        middleName: on899294.containsKey('middleName')
            ? Defined<String>((on899294['middleName'] as String))
            : Undefined<String>(),
        phoneNumber: (on899294['phoneNumber'] as String),
        profileImage: on899294.containsKey('profileImage')
            ? Defined<
                ({
                  Optional<String> blurHash,
                  Optional<String> mime,
                  Optional<String> name,
                  Optional<double> size,
                  StorageId? storageId,
                })
              >(
                (on899294['profileImage'] as IMap<String, dynamic>).then(
                  (on766283) => (
                    blurHash: on766283.containsKey('blurHash')
                        ? Defined<String>((on766283['blurHash'] as String))
                        : Undefined<String>(),
                    mime: on766283.containsKey('mime')
                        ? Defined<String>((on766283['mime'] as String))
                        : Undefined<String>(),
                    name: on766283.containsKey('name')
                        ? Defined<String>((on766283['name'] as String))
                        : Undefined<String>(),
                    size: on766283.containsKey('size')
                        ? Defined<double>((on766283['size'] as double))
                        : Undefined<double>(),
                    storageId: on766283['storageId'] == null
                        ? null
                        : StorageId(on766283['storageId'] as String),
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
          if (map.containsKey(on899294['project'])) {
            return map[on899294['project']];
          }
          throw Exception(
            (on899294['project'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$CashCountLiteral, $AyekooLiteral>",
          );
        }()),
        referralCode: (on899294['referralCode'] as String),
        status: (on899294['status'] as String),
        teamId: on899294.containsKey('teamId')
            ? Defined<String>((on899294['teamId'] as String))
            : Undefined<String>(),
        totalAyekooAllocationsCount:
            on899294.containsKey('totalAyekooAllocationsCount')
            ? Defined<double>(
                (on899294['totalAyekooAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsCount:
            on899294.containsKey('totalAyekooCollectionsCount')
            ? Defined<double>(
                (on899294['totalAyekooCollectionsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountAllocationsCount:
            on899294.containsKey('totalCashCountAllocationsCount')
            ? Defined<double>(
                (on899294['totalCashCountAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsCount:
            on899294.containsKey('totalCashCountFieldSignUpsCount')
            ? Defined<double>(
                (on899294['totalCashCountFieldSignUpsCount'] as double),
              )
            : Undefined<double>(),
        updateMeta: on899294.containsKey('updateMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on899294['updateMeta'] as IMap<String, dynamic>).then(
                  (on680345) => (
                    action: (on680345['action'] as String),
                    details: on680345.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on680345['details'] as IMap<String, dynamic>).map(
                              (on233630, on59737) =>
                                  MapEntry(on233630, on59737),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on680345.containsKey('name')
                        ? Defined<String>((on680345['name'] as String))
                        : Undefined<String>(),
                    role: on680345.containsKey('role')
                        ? Defined<String>((on680345['role'] as String))
                        : Undefined<String>(),
                    userId: on680345.containsKey('userId')
                        ? Defined<String>((on680345['userId'] as String))
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
        updatedAt: on899294.containsKey('updatedAt')
            ? Defined<double>((on899294['updatedAt'] as double))
            : Undefined<double>(),
        userId: on899294.containsKey('userId')
            ? Defined<String>((on899294['userId'] as String))
            : Undefined<String>(),
      ),
    ),
  );
}

typedef FieldAgentDoc = ({
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
