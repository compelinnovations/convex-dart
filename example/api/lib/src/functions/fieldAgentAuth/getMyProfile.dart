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
      (on82100) => (
        $_creationTime: (on82100['_creationTime'] as double),
        $_id: FieldAgentsId(on82100['_id'] as String),
        countryCityId: on82100.containsKey('countryCityId')
            ? Defined<CountryCitiesId>(
                CountryCitiesId(on82100['countryCityId'] as String),
              )
            : Undefined<CountryCitiesId>(),
        countryCityName: on82100.containsKey('countryCityName')
            ? Defined<String>((on82100['countryCityName'] as String))
            : Undefined<String>(),
        countryCode: on82100.containsKey('countryCode')
            ? Defined<String>((on82100['countryCode'] as String))
            : Undefined<String>(),
        countryISO: (on82100['countryISO'] as String),
        countryName: (on82100['countryName'] as String),
        countryStateId: on82100.containsKey('countryStateId')
            ? Defined<CountryStatesId>(
                CountryStatesId(on82100['countryStateId'] as String),
              )
            : Undefined<CountryStatesId>(),
        countryStateName: on82100.containsKey('countryStateName')
            ? Defined<String>((on82100['countryStateName'] as String))
            : Undefined<String>(),
        createMeta: on82100.containsKey('createMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on82100['createMeta'] as IMap<String, dynamic>).then(
                  (on456476) => (
                    action: (on456476['action'] as String),
                    details: on456476.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on456476['details'] as IMap<String, dynamic>).map(
                              (on244830, on841385) =>
                                  MapEntry(on244830, on841385),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on456476.containsKey('name')
                        ? Defined<String>((on456476['name'] as String))
                        : Undefined<String>(),
                    role: on456476.containsKey('role')
                        ? Defined<String>((on456476['role'] as String))
                        : Undefined<String>(),
                    userId: on456476.containsKey('userId')
                        ? Defined<String>((on456476['userId'] as String))
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
        createdAt: (on82100['createdAt'] as double),
        creatorId: Union3<FieldAgentsId, ShippingClientsId, String>(() {
          try {
            return FieldAgentsId(on82100['creatorId'] as String);
          } catch (e) {}

          try {
            return ShippingClientsId(on82100['creatorId'] as String);
          } catch (e) {}

          try {
            return (on82100['creatorId'] as String);
          } catch (e) {}

          throw Exception(
            (on82100['creatorId'].toString() ?? "null") +
                r" cannot be deserialized into a Union3<FieldAgentsId, ShippingClientsId, String>",
          );
        }()),
        dateBirth: on82100.containsKey('dateBirth')
            ? Defined<double>((on82100['dateBirth'] as double))
            : Undefined<double>(),
        deletedAt: on82100.containsKey('deletedAt')
            ? Defined<double>((on82100['deletedAt'] as double))
            : Undefined<double>(),
        deletedMeta: on82100.containsKey('deletedMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on82100['deletedMeta'] as IMap<String, dynamic>).then(
                  (on901126) => (
                    action: (on901126['action'] as String),
                    details: on901126.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on901126['details'] as IMap<String, dynamic>).map(
                              (on282515, on899842) =>
                                  MapEntry(on282515, on899842),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on901126.containsKey('name')
                        ? Defined<String>((on901126['name'] as String))
                        : Undefined<String>(),
                    role: on901126.containsKey('role')
                        ? Defined<String>((on901126['role'] as String))
                        : Undefined<String>(),
                    userId: on901126.containsKey('userId')
                        ? Defined<String>((on901126['userId'] as String))
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
        email: (on82100['email'] as String),
        firstName: (on82100['firstName'] as String),
        fullName: on82100.containsKey('fullName')
            ? Defined<String>((on82100['fullName'] as String))
            : Undefined<String>(),
        gender: Union2<$MaleLiteral, $FemaleLiteral>(() {
          final map = {'Male': $MaleLiteral(), 'Female': $FemaleLiteral()};
          if (map.containsKey(on82100['gender'])) {
            return map[on82100['gender']];
          }
          throw Exception(
            (on82100['gender'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$MaleLiteral, $FemaleLiteral>",
          );
        }()),
        invitationId: on82100.containsKey('invitationId')
            ? Defined<String>((on82100['invitationId'] as String))
            : Undefined<String>(),
        lastName: (on82100['lastName'] as String),
        middleName: on82100.containsKey('middleName')
            ? Defined<String>((on82100['middleName'] as String))
            : Undefined<String>(),
        phoneNumber: (on82100['phoneNumber'] as String),
        profileImage: on82100.containsKey('profileImage')
            ? Defined<
                ({
                  Optional<String> blurHash,
                  Optional<String> mime,
                  Optional<String> name,
                  Optional<double> size,
                  StorageId? storageId,
                })
              >(
                (on82100['profileImage'] as IMap<String, dynamic>).then(
                  (on161713) => (
                    blurHash: on161713.containsKey('blurHash')
                        ? Defined<String>((on161713['blurHash'] as String))
                        : Undefined<String>(),
                    mime: on161713.containsKey('mime')
                        ? Defined<String>((on161713['mime'] as String))
                        : Undefined<String>(),
                    name: on161713.containsKey('name')
                        ? Defined<String>((on161713['name'] as String))
                        : Undefined<String>(),
                    size: on161713.containsKey('size')
                        ? Defined<double>((on161713['size'] as double))
                        : Undefined<double>(),
                    storageId: on161713['storageId'] == null
                        ? null
                        : StorageId(on161713['storageId'] as String),
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
          if (map.containsKey(on82100['project'])) {
            return map[on82100['project']];
          }
          throw Exception(
            (on82100['project'].toString() ?? "null") +
                r" cannot be deserialized into a Union2<$CashCountLiteral, $AyekooLiteral>",
          );
        }()),
        referralCode: (on82100['referralCode'] as String),
        status: (on82100['status'] as String),
        teamId: on82100.containsKey('teamId')
            ? Defined<String>((on82100['teamId'] as String))
            : Undefined<String>(),
        totalAyekooAllocationsCount:
            on82100.containsKey('totalAyekooAllocationsCount')
            ? Defined<double>(
                (on82100['totalAyekooAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalAyekooCollectionsCount:
            on82100.containsKey('totalAyekooCollectionsCount')
            ? Defined<double>(
                (on82100['totalAyekooCollectionsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountAllocationsCount:
            on82100.containsKey('totalCashCountAllocationsCount')
            ? Defined<double>(
                (on82100['totalCashCountAllocationsCount'] as double),
              )
            : Undefined<double>(),
        totalCashCountFieldSignUpsCount:
            on82100.containsKey('totalCashCountFieldSignUpsCount')
            ? Defined<double>(
                (on82100['totalCashCountFieldSignUpsCount'] as double),
              )
            : Undefined<double>(),
        updateMeta: on82100.containsKey('updateMeta')
            ? Defined<
                ({
                  String action,
                  Optional<IMap<String, dynamic>> details,
                  Optional<String> name,
                  Optional<String> role,
                  Optional<String> userId,
                })
              >(
                (on82100['updateMeta'] as IMap<String, dynamic>).then(
                  (on750668) => (
                    action: (on750668['action'] as String),
                    details: on750668.containsKey('details')
                        ? Defined<IMap<String, dynamic>>(
                            (on750668['details'] as IMap<String, dynamic>).map(
                              (on708754, on136409) =>
                                  MapEntry(on708754, on136409),
                            ),
                          )
                        : Undefined<IMap<String, dynamic>>(),
                    name: on750668.containsKey('name')
                        ? Defined<String>((on750668['name'] as String))
                        : Undefined<String>(),
                    role: on750668.containsKey('role')
                        ? Defined<String>((on750668['role'] as String))
                        : Undefined<String>(),
                    userId: on750668.containsKey('userId')
                        ? Defined<String>((on750668['userId'] as String))
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
        updatedAt: on82100.containsKey('updatedAt')
            ? Defined<double>((on82100['updatedAt'] as double))
            : Undefined<double>(),
        userId: on82100.containsKey('userId')
            ? Defined<String>((on82100['userId'] as String))
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
