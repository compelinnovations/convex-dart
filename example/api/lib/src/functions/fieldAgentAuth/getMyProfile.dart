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
      (on57241) => (
        $_creationTime: (on57241['_creationTime'] as double),
        $_id: FieldAgentsId(on57241['_id'] as String),
        countryCityId: on57241.containsKey('countryCityId')
            ? Defined<CountryCitiesId>(
                CountryCitiesId(on57241['countryCityId'] as String),
              )
            : Undefined<CountryCitiesId>(),
        countryCityName: on57241.containsKey('countryCityName')
            ? Defined<String>((on57241['countryCityName'] as String))
            : Undefined<String>(),
        countryCode: on57241.containsKey('countryCode')
            ? Defined<String>((on57241['countryCode'] as String))
            : Undefined<String>(),
        countryISO: (on57241['countryISO'] as String),
        countryName: (on57241['countryName'] as String),
        countryStateId: on57241.containsKey('countryStateId')
            ? Defined<CountryStatesId>(
                CountryStatesId(on57241['countryStateId'] as String),
              )
            : Undefined<CountryStatesId>(),
        countryStateName: on57241.containsKey('countryStateName')
            ? Defined<String>((on57241['countryStateName'] as String))
            : Undefined<String>(),
        createMeta: on57241.containsKey('createMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on57241['createMeta'] as IMap<String, dynamic>).then(
                  (on977709) => (
                    action: (on977709['action'] as String),
                    details: on977709.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on977709['details'] as IMap<String, dynamic>).map(
                              (on463686, on476359) =>
                                  MapEntry(on463686, on476359),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on977709.containsKey('name')
                        ? Defined<String>((on977709['name'] as String))
                        : Undefined<String>(),
                    role: on977709.containsKey('role')
                        ? Defined<String>((on977709['role'] as String))
                        : Undefined<String>(),
                    userId: on977709.containsKey('userId')
                        ? Defined<String>((on977709['userId'] as String))
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
        createdAt: (on57241['createdAt'] as double),
        creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
          try {
            return FieldAgentsId(on57241['creatorId'] as String);
          } catch (e) {}

          try {
            return ShippingClientsId(on57241['creatorId'] as String);
          } catch (e) {}

          try {
            return (on57241['creatorId'] as String);
          } catch (e) {}

          throw Exception(
            (on57241['creatorId'].toString() ?? "null") +
                r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
          );
        }()),
        dateBirth: on57241.containsKey('dateBirth')
            ? Defined<double>((on57241['dateBirth'] as double))
            : Undefined<double>(),
        deletedAt: on57241.containsKey('deletedAt')
            ? Defined<double>((on57241['deletedAt'] as double))
            : Undefined<double>(),
        deletedMeta: on57241.containsKey('deletedMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on57241['deletedMeta'] as IMap<String, dynamic>).then(
                  (on820839) => (
                    action: (on820839['action'] as String),
                    details: on820839.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on820839['details'] as IMap<String, dynamic>).map(
                              (on501212, on39013) =>
                                  MapEntry(on501212, on39013),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on820839.containsKey('name')
                        ? Defined<String>((on820839['name'] as String))
                        : Undefined<String>(),
                    role: on820839.containsKey('role')
                        ? Defined<String>((on820839['role'] as String))
                        : Undefined<String>(),
                    userId: on820839.containsKey('userId')
                        ? Defined<String>((on820839['userId'] as String))
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
        email: (on57241['email'] as String),
        firstName: (on57241['firstName'] as String),
        fullName: on57241.containsKey('fullName')
            ? Defined<String>((on57241['fullName'] as String))
            : Undefined<String>(),
        gender: Union2<$MaleLiteral, $FemaleLiteral>(() {
          final map = {'Male': $MaleLiteral(), 'Female': $FemaleLiteral()};
          if (map.containsKey(on57241['gender'])) {
            return map[on57241['gender']];
          }
          throw Exception(
            (on57241['gender'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$MaleLiteral, $FemaleLiteral>",
          );
        }()),
        invitationId: on57241.containsKey('invitationId')
            ? Defined<String>((on57241['invitationId'] as String))
            : Undefined<String>(),
        lastName: (on57241['lastName'] as String),
        middleName: on57241.containsKey('middleName')
            ? Defined<String>((on57241['middleName'] as String))
            : Undefined<String>(),
        phoneNumber: (on57241['phoneNumber'] as String),
        profileImage: on57241.containsKey('profileImage')
            ? Defined<
                ({
                  Optional<String> blurHash,
                  Optional<String> mime,
                  Optional<String> name,
                  Optional<double> size,
                  StorageId? storageId,
                })
              >(
                (on57241['profileImage'] as IMap<String, dynamic>).then(
                  (on701928) => (
                    blurHash: on701928.containsKey('blurHash')
                        ? Defined<String>((on701928['blurHash'] as String))
                        : Undefined<String>(),
                    mime: on701928.containsKey('mime')
                        ? Defined<String>((on701928['mime'] as String))
                        : Undefined<String>(),
                    name: on701928.containsKey('name')
                        ? Defined<String>((on701928['name'] as String))
                        : Undefined<String>(),
                    size: on701928.containsKey('size')
                        ? Defined<double>((on701928['size'] as double))
                        : Undefined<double>(),
                    storageId: on701928['storageId'] == null
                        ? null
                        : StorageId(on701928['storageId'] as String),
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
          if (map.containsKey(on57241['project'])) {
            return map[on57241['project']];
          }
          throw Exception(
            (on57241['project'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$CashCountLiteral, $AyekooLiteral>",
          );
        }()),
        referralCode: (on57241['referralCode'] as String),
        status: (on57241['status'] as String),
        teamId: on57241.containsKey('teamId')
            ? Defined<String>((on57241['teamId'] as String))
            : Undefined<String>(),
        totalAyekooAllocationsCount:
            on57241.containsKey('totalAyekooAllocationsCount')
            ? Defined<double>(
                (on57241['totalAyekooAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsCount:
            on57241.containsKey('totalAyekooCollectionsCount')
            ? Defined<double>(
                (on57241['totalAyekooCollectionsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountAllocationsCount:
            on57241.containsKey('totalCashCountAllocationsCount')
            ? Defined<double>(
                (on57241['totalCashCountAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsCount:
            on57241.containsKey('totalCashCountFieldSignUpsCount')
            ? Defined<double>(
                (on57241['totalCashCountFieldSignUpsCount'] as double),
              )
            : Undefined<double>(),
        updateMeta: on57241.containsKey('updateMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on57241['updateMeta'] as IMap<String, dynamic>).then(
                  (on401582) => (
                    action: (on401582['action'] as String),
                    details: on401582.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on401582['details'] as IMap<String, dynamic>).map(
                              (on296291, on245795) =>
                                  MapEntry(on296291, on245795),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on401582.containsKey('name')
                        ? Defined<String>((on401582['name'] as String))
                        : Undefined<String>(),
                    role: on401582.containsKey('role')
                        ? Defined<String>((on401582['role'] as String))
                        : Undefined<String>(),
                    userId: on401582.containsKey('userId')
                        ? Defined<String>((on401582['userId'] as String))
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
        updatedAt: on57241.containsKey('updatedAt')
            ? Defined<double>((on57241['updatedAt'] as double))
            : Undefined<double>(),
        userId: on57241.containsKey('userId')
            ? Defined<String>((on57241['userId'] as String))
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
