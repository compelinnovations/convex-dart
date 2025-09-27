// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final getMe = QueryOperation<void, GetMeResponse>(
  'fieldAgentAuth:getMe',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(void args) {
  return hashmapToBtreemap(hashmap: {});
}

GetMeResponse deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on489520) => (
      $_id: UsersId(on489520['_id'] as String),
      appCountryId: on489520.containsKey('appCountryId')
          ? Defined(AppCountriesId(on489520['appCountryId'] as String))
          : Undefined<AppCountriesId>(),
      appCountryIso: on489520.containsKey('appCountryIso')
          ? Defined((on489520['appCountryIso'] as String))
          : Undefined<String>(),
      appCountryName: on489520.containsKey('appCountryName')
          ? Defined((on489520['appCountryName'] as String))
          : Undefined<String>(),
      auditAddedById: on489520.containsKey('auditAddedById')
          ? Defined(UsersId(on489520['auditAddedById'] as String))
          : Undefined<UsersId>(),
      auditAddedByName: on489520.containsKey('auditAddedByName')
          ? Defined((on489520['auditAddedByName'] as String))
          : Undefined<String>(),
      auditDeletedById: on489520.containsKey('auditDeletedById')
          ? Defined(UsersId(on489520['auditDeletedById'] as String))
          : Undefined<UsersId>(),
      auditDeletedByName: on489520.containsKey('auditDeletedByName')
          ? Defined((on489520['auditDeletedByName'] as String))
          : Undefined<String>(),
      auditUpdatedById: on489520.containsKey('auditUpdatedById')
          ? Defined(UsersId(on489520['auditUpdatedById'] as String))
          : Undefined<UsersId>(),
      auditUpdatedByName: on489520.containsKey('auditUpdatedByName')
          ? Defined((on489520['auditUpdatedByName'] as String))
          : Undefined<String>(),
      contactEmail: on489520.containsKey('contactEmail')
          ? Defined((on489520['contactEmail'] as String))
          : Undefined<String>(),
      contactPhone: on489520.containsKey('contactPhone')
          ? Defined((on489520['contactPhone'] as String))
          : Undefined<String>(),
      createdAt: on489520.containsKey('createdAt')
          ? Defined((on489520['createdAt'] as double))
          : Undefined<double>(),
      currentLocation: on489520.containsKey('currentLocation')
          ? Defined(
              (on489520['currentLocation'] as IMap<String, dynamic>).then(
                (on115804) => (
                  $_id: (on115804['_id'] as String),
                  administrativeAreaLevel1:
                      on115804.containsKey('administrativeAreaLevel1')
                      ? Defined(
                          (on115804['administrativeAreaLevel1']
                                  as IMap<String, dynamic>)
                              .then(
                                (on887712) => (
                                  $_id: (on887712['_id'] as String),
                                  longName: on887712.containsKey('longName')
                                      ? Defined(
                                          (on887712['longName'] as String),
                                        )
                                      : Undefined<String>(),
                                  shortName: on887712.containsKey('shortName')
                                      ? Defined(
                                          (on887712['shortName'] as String),
                                        )
                                      : Undefined<String>(),
                                ),
                              ),
                        )
                      : Undefined<
                          ({
                            String $_id,
                            Optional<String> longName,
                            Optional<String> shortName,
                          })
                        >(),
                  administrativeAreaLevel2:
                      on115804.containsKey('administrativeAreaLevel2')
                      ? Defined(
                          (on115804['administrativeAreaLevel2']
                                  as IMap<String, dynamic>)
                              .then(
                                (on180054) => (
                                  $_id: (on180054['_id'] as String),
                                  longName: on180054.containsKey('longName')
                                      ? Defined(
                                          (on180054['longName'] as String),
                                        )
                                      : Undefined<String>(),
                                  shortName: on180054.containsKey('shortName')
                                      ? Defined(
                                          (on180054['shortName'] as String),
                                        )
                                      : Undefined<String>(),
                                ),
                              ),
                        )
                      : Undefined<
                          ({
                            String $_id,
                            Optional<String> longName,
                            Optional<String> shortName,
                          })
                        >(),
                  country: on115804.containsKey('country')
                      ? Defined(
                          (on115804['country'] as IMap<String, dynamic>).then(
                            (on691541) => (
                              $_id: (on691541['_id'] as String),
                              longName: on691541.containsKey('longName')
                                  ? Defined((on691541['longName'] as String))
                                  : Undefined<String>(),
                              shortName: on691541.containsKey('shortName')
                                  ? Defined((on691541['shortName'] as String))
                                  : Undefined<String>(),
                            ),
                          ),
                        )
                      : Undefined<
                          ({
                            String $_id,
                            Optional<String> longName,
                            Optional<String> shortName,
                          })
                        >(),
                  formattedAddress: on115804.containsKey('formattedAddress')
                      ? Defined((on115804['formattedAddress'] as String))
                      : Undefined<String>(),
                  latLng: (on115804['latLng'] as IMap<String, dynamic>).then(
                    (on432919) => (
                      $_id: (on432919['_id'] as String),
                      latitude: (on432919['latitude'] as double),
                      longitude: (on432919['longitude'] as double),
                    ),
                  ),
                  locality: on115804.containsKey('locality')
                      ? Defined(
                          (on115804['locality'] as IMap<String, dynamic>).then(
                            (on761057) => (
                              $_id: (on761057['_id'] as String),
                              longName: on761057.containsKey('longName')
                                  ? Defined((on761057['longName'] as String))
                                  : Undefined<String>(),
                              shortName: on761057.containsKey('shortName')
                                  ? Defined((on761057['shortName'] as String))
                                  : Undefined<String>(),
                            ),
                          ),
                        )
                      : Undefined<
                          ({
                            String $_id,
                            Optional<String> longName,
                            Optional<String> shortName,
                          })
                        >(),
                  name: on115804.containsKey('name')
                      ? Defined((on115804['name'] as String))
                      : Undefined<String>(),
                  placeId: on115804.containsKey('placeId')
                      ? Defined((on115804['placeId'] as String))
                      : Undefined<String>(),
                  plusCode: on115804.containsKey('plusCode')
                      ? Defined(
                          (on115804['plusCode'] as IMap<String, dynamic>).then(
                            (on117469) => (
                              $_id: (on117469['_id'] as String),
                              longName: on117469.containsKey('longName')
                                  ? Defined((on117469['longName'] as String))
                                  : Undefined<String>(),
                              shortName: on117469.containsKey('shortName')
                                  ? Defined((on117469['shortName'] as String))
                                  : Undefined<String>(),
                            ),
                          ),
                        )
                      : Undefined<
                          ({
                            String $_id,
                            Optional<String> longName,
                            Optional<String> shortName,
                          })
                        >(),
                  postalCode: on115804.containsKey('postalCode')
                      ? Defined(
                          (on115804['postalCode'] as IMap<String, dynamic>)
                              .then(
                                (on554786) => (
                                  $_id: (on554786['_id'] as String),
                                  longName: on554786.containsKey('longName')
                                      ? Defined(
                                          (on554786['longName'] as String),
                                        )
                                      : Undefined<String>(),
                                  shortName: on554786.containsKey('shortName')
                                      ? Defined(
                                          (on554786['shortName'] as String),
                                        )
                                      : Undefined<String>(),
                                ),
                              ),
                        )
                      : Undefined<
                          ({
                            String $_id,
                            Optional<String> longName,
                            Optional<String> shortName,
                          })
                        >(),
                  subLocalityLevel1: on115804.containsKey('subLocalityLevel1')
                      ? Defined(
                          (on115804['subLocalityLevel1']
                                  as IMap<String, dynamic>)
                              .then(
                                (on304119) => (
                                  $_id: (on304119['_id'] as String),
                                  longName: on304119.containsKey('longName')
                                      ? Defined(
                                          (on304119['longName'] as String),
                                        )
                                      : Undefined<String>(),
                                  shortName: on304119.containsKey('shortName')
                                      ? Defined(
                                          (on304119['shortName'] as String),
                                        )
                                      : Undefined<String>(),
                                ),
                              ),
                        )
                      : Undefined<
                          ({
                            String $_id,
                            Optional<String> longName,
                            Optional<String> shortName,
                          })
                        >(),
                  subLocalityLevel2: on115804.containsKey('subLocalityLevel2')
                      ? Defined(
                          (on115804['subLocalityLevel2']
                                  as IMap<String, dynamic>)
                              .then(
                                (on238314) => (
                                  $_id: (on238314['_id'] as String),
                                  longName: on238314.containsKey('longName')
                                      ? Defined(
                                          (on238314['longName'] as String),
                                        )
                                      : Undefined<String>(),
                                  shortName: on238314.containsKey('shortName')
                                      ? Defined(
                                          (on238314['shortName'] as String),
                                        )
                                      : Undefined<String>(),
                                ),
                              ),
                        )
                      : Undefined<
                          ({
                            String $_id,
                            Optional<String> longName,
                            Optional<String> shortName,
                          })
                        >(),
                ),
              ),
            )
          : Undefined<
              ({
                String $_id,
                Optional<
                  ({
                    String $_id,
                    Optional<String> longName,
                    Optional<String> shortName,
                  })
                >
                administrativeAreaLevel1,
                Optional<
                  ({
                    String $_id,
                    Optional<String> longName,
                    Optional<String> shortName,
                  })
                >
                administrativeAreaLevel2,
                Optional<
                  ({
                    String $_id,
                    Optional<String> longName,
                    Optional<String> shortName,
                  })
                >
                country,
                Optional<String> formattedAddress,
                ({String $_id, double latitude, double longitude}) latLng,
                Optional<
                  ({
                    String $_id,
                    Optional<String> longName,
                    Optional<String> shortName,
                  })
                >
                locality,
                Optional<String> name,
                Optional<String> placeId,
                Optional<
                  ({
                    String $_id,
                    Optional<String> longName,
                    Optional<String> shortName,
                  })
                >
                plusCode,
                Optional<
                  ({
                    String $_id,
                    Optional<String> longName,
                    Optional<String> shortName,
                  })
                >
                postalCode,
                Optional<
                  ({
                    String $_id,
                    Optional<String> longName,
                    Optional<String> shortName,
                  })
                >
                subLocalityLevel1,
                Optional<
                  ({
                    String $_id,
                    Optional<String> longName,
                    Optional<String> shortName,
                  })
                >
                subLocalityLevel2,
              })
            >(),
      dbId: on489520.containsKey('dbId')
          ? Defined((on489520['dbId'] as double))
          : Undefined<double>(),
      deletedAt: on489520.containsKey('deletedAt')
          ? Defined((on489520['deletedAt'] as double))
          : Undefined<double>(),
      deviceIds: on489520.containsKey('deviceIds')
          ? Defined(
              (on489520['deviceIds'] as IList<dynamic>)
                  .map((on58008) => UserDevicesId(on58008 as String))
                  .toIList(),
            )
          : Undefined<IList<UserDevicesId>>(),
      email: (on489520['email'] as String),
      emailVerified: (on489520['emailVerified'] as bool),
      fbmToken: on489520.containsKey('fbmToken')
          ? Defined((on489520['fbmToken'] as String))
          : Undefined<String>(),
      firstName: (on489520['firstName'] as String),
      fullName: (on489520['fullName'] as String),
      hash: on489520.containsKey('hash')
          ? Defined((on489520['hash'] as String))
          : Undefined<String>(),
      lastName: (on489520['lastName'] as String),
      organizationBranchAccessIds:
          on489520.containsKey('organizationBranchAccessIds')
          ? Defined(
              (on489520['organizationBranchAccessIds'] as IList<dynamic>)
                  .map((on980194) => OrganizationBranchesId(on980194 as String))
                  .toIList(),
            )
          : Undefined<IList<OrganizationBranchesId>>(),
      organizationBranchId: on489520.containsKey('organizationBranchId')
          ? Defined(
              OrganizationBranchesId(
                on489520['organizationBranchId'] as String,
              ),
            )
          : Undefined<OrganizationBranchesId>(),
      organizationId: on489520.containsKey('organizationId')
          ? Defined(OrganizationId(on489520['organizationId'] as String))
          : Undefined<OrganizationId>(),
      organizationType: on489520.containsKey('organizationType')
          ? Defined((on489520['organizationType'] as String))
          : Undefined<String>(),
      phone: on489520.containsKey('phone')
          ? Defined((on489520['phone'] as String))
          : Undefined<String>(),
      profileImage: on489520.containsKey('profileImage')
          ? Defined((on489520['profileImage'] as String))
          : Undefined<String>(),
      profileImageBlurHash: on489520.containsKey('profileImageBlurHash')
          ? Defined((on489520['profileImageBlurHash'] as String))
          : Undefined<String>(),
      profileImageSize: on489520.containsKey('profileImageSize')
          ? Defined((on489520['profileImageSize'] as double))
          : Undefined<double>(),
      role: (on489520['role'] as String),
      salt: on489520.containsKey('salt')
          ? Defined((on489520['salt'] as String))
          : Undefined<String>(),
      statId: on489520.containsKey('statId')
          ? Defined(FieldAgentStatsId(on489520['statId'] as String))
          : Undefined<FieldAgentStatsId>(),
      status: (on489520['status'] as String),
      subRole: (on489520['subRole'] as String),
      teamBranchAccessIds: on489520.containsKey('teamBranchAccessIds')
          ? Defined(
              (on489520['teamBranchAccessIds'] as IList<dynamic>)
                  .map((on130185) => TeamBranchesId(on130185 as String))
                  .toIList(),
            )
          : Undefined<IList<TeamBranchesId>>(),
      teamBranchId: on489520.containsKey('teamBranchId')
          ? Defined(TeamBranchesId(on489520['teamBranchId'] as String))
          : Undefined<TeamBranchesId>(),
      teamId: on489520.containsKey('teamId')
          ? Defined(TeamId(on489520['teamId'] as String))
          : Undefined<TeamId>(),
      teamType: on489520.containsKey('teamType')
          ? Defined((on489520['teamType'] as String))
          : Undefined<String>(),
      updatedAt: on489520.containsKey('updatedAt')
          ? Defined((on489520['updatedAt'] as double))
          : Undefined<double>(),
      username: on489520.containsKey('username')
          ? Defined((on489520['username'] as String))
          : Undefined<String>(),
    ),
  );
}

typedef GetMeResponse = ({
  UsersId $_id,
  Optional<AppCountriesId> appCountryId,
  Optional<String> appCountryIso,
  Optional<String> appCountryName,
  Optional<UsersId> auditAddedById,
  Optional<String> auditAddedByName,
  Optional<UsersId> auditDeletedById,
  Optional<String> auditDeletedByName,
  Optional<UsersId> auditUpdatedById,
  Optional<String> auditUpdatedByName,
  Optional<String> contactEmail,
  Optional<String> contactPhone,
  Optional<double> createdAt,
  Optional<
    ({
      String $_id,
      Optional<
        ({String $_id, Optional<String> longName, Optional<String> shortName})
      >
      administrativeAreaLevel1,
      Optional<
        ({String $_id, Optional<String> longName, Optional<String> shortName})
      >
      administrativeAreaLevel2,
      Optional<
        ({String $_id, Optional<String> longName, Optional<String> shortName})
      >
      country,
      Optional<String> formattedAddress,
      ({String $_id, double latitude, double longitude}) latLng,
      Optional<
        ({String $_id, Optional<String> longName, Optional<String> shortName})
      >
      locality,
      Optional<String> name,
      Optional<String> placeId,
      Optional<
        ({String $_id, Optional<String> longName, Optional<String> shortName})
      >
      plusCode,
      Optional<
        ({String $_id, Optional<String> longName, Optional<String> shortName})
      >
      postalCode,
      Optional<
        ({String $_id, Optional<String> longName, Optional<String> shortName})
      >
      subLocalityLevel1,
      Optional<
        ({String $_id, Optional<String> longName, Optional<String> shortName})
      >
      subLocalityLevel2,
    })
  >
  currentLocation,
  Optional<double> dbId,
  Optional<double> deletedAt,
  Optional<IList<UserDevicesId>> deviceIds,
  String email,
  bool emailVerified,
  Optional<String> fbmToken,
  String firstName,
  String fullName,
  Optional<String> hash,
  String lastName,
  Optional<IList<OrganizationBranchesId>> organizationBranchAccessIds,
  Optional<OrganizationBranchesId> organizationBranchId,
  Optional<OrganizationId> organizationId,
  Optional<String> organizationType,
  Optional<String> phone,
  Optional<String> profileImage,
  Optional<String> profileImageBlurHash,
  Optional<double> profileImageSize,
  String role,
  Optional<String> salt,
  Optional<FieldAgentStatsId> statId,
  String status,
  String subRole,
  Optional<IList<TeamBranchesId>> teamBranchAccessIds,
  Optional<TeamBranchesId> teamBranchId,
  Optional<TeamId> teamId,
  Optional<String> teamType,
  Optional<double> updatedAt,
  Optional<String> username,
});
