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
    (on542489) => (
      $_id: UsersId(on542489['_id'] as String),
      appCountryId: on542489.containsKey('appCountryId')
          ? Defined(AppCountriesId(on542489['appCountryId'] as String))
          : Undefined<AppCountriesId>(),
      appCountryIso: on542489.containsKey('appCountryIso')
          ? Defined((on542489['appCountryIso'] as String))
          : Undefined<String>(),
      appCountryName: on542489.containsKey('appCountryName')
          ? Defined((on542489['appCountryName'] as String))
          : Undefined<String>(),
      auditAddedById: on542489.containsKey('auditAddedById')
          ? Defined(UsersId(on542489['auditAddedById'] as String))
          : Undefined<UsersId>(),
      auditAddedByName: on542489.containsKey('auditAddedByName')
          ? Defined((on542489['auditAddedByName'] as String))
          : Undefined<String>(),
      auditDeletedById: on542489.containsKey('auditDeletedById')
          ? Defined(UsersId(on542489['auditDeletedById'] as String))
          : Undefined<UsersId>(),
      auditDeletedByName: on542489.containsKey('auditDeletedByName')
          ? Defined((on542489['auditDeletedByName'] as String))
          : Undefined<String>(),
      auditUpdatedById: on542489.containsKey('auditUpdatedById')
          ? Defined(UsersId(on542489['auditUpdatedById'] as String))
          : Undefined<UsersId>(),
      auditUpdatedByName: on542489.containsKey('auditUpdatedByName')
          ? Defined((on542489['auditUpdatedByName'] as String))
          : Undefined<String>(),
      contactEmail: on542489.containsKey('contactEmail')
          ? Defined((on542489['contactEmail'] as String))
          : Undefined<String>(),
      contactPhone: on542489.containsKey('contactPhone')
          ? Defined((on542489['contactPhone'] as String))
          : Undefined<String>(),
      createdAt: on542489.containsKey('createdAt')
          ? Defined((on542489['createdAt'] as double))
          : Undefined<double>(),
      currentLocation: on542489.containsKey('currentLocation')
          ? Defined(
              (on542489['currentLocation'] as IMap<String, dynamic>).then(
                (on999888) => (
                  $_id: (on999888['_id'] as String),
                  administrativeAreaLevel1:
                      on999888.containsKey('administrativeAreaLevel1')
                      ? Defined(
                          (on999888['administrativeAreaLevel1']
                                  as IMap<String, dynamic>)
                              .then(
                                (on56314) => (
                                  $_id: (on56314['_id'] as String),
                                  longName: on56314.containsKey('longName')
                                      ? Defined((on56314['longName'] as String))
                                      : Undefined<String>(),
                                  shortName: on56314.containsKey('shortName')
                                      ? Defined(
                                          (on56314['shortName'] as String),
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
                      on999888.containsKey('administrativeAreaLevel2')
                      ? Defined(
                          (on999888['administrativeAreaLevel2']
                                  as IMap<String, dynamic>)
                              .then(
                                (on358983) => (
                                  $_id: (on358983['_id'] as String),
                                  latitude: (on358983['latitude'] as double),
                                  longitude: (on358983['longitude'] as double),
                                ),
                              ),
                        )
                      : Undefined<
                          ({String $_id, double latitude, double longitude})
                        >(),
                  country: on999888.containsKey('country')
                      ? Defined(
                          (on999888['country'] as IMap<String, dynamic>).then(
                            (on207181) => (
                              $_id: (on207181['_id'] as String),
                              longName: on207181.containsKey('longName')
                                  ? Defined((on207181['longName'] as String))
                                  : Undefined<String>(),
                              shortName: on207181.containsKey('shortName')
                                  ? Defined((on207181['shortName'] as String))
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
                  formattedAddress: on999888.containsKey('formattedAddress')
                      ? Defined((on999888['formattedAddress'] as String))
                      : Undefined<String>(),
                  latLng: (on999888['latLng'] as IMap<String, dynamic>).then(
                    (on130963) => (
                      $_id: (on130963['_id'] as String),
                      latitude: (on130963['latitude'] as double),
                      longitude: (on130963['longitude'] as double),
                    ),
                  ),
                  locality: on999888.containsKey('locality')
                      ? Defined(
                          (on999888['locality'] as IMap<String, dynamic>).then(
                            (on982630) => (
                              $_id: (on982630['_id'] as String),
                              longName: on982630.containsKey('longName')
                                  ? Defined((on982630['longName'] as String))
                                  : Undefined<String>(),
                              shortName: on982630.containsKey('shortName')
                                  ? Defined((on982630['shortName'] as String))
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
                  name: on999888.containsKey('name')
                      ? Defined((on999888['name'] as String))
                      : Undefined<String>(),
                  placeId: on999888.containsKey('placeId')
                      ? Defined((on999888['placeId'] as String))
                      : Undefined<String>(),
                  plusCode: on999888.containsKey('plusCode')
                      ? Defined(
                          (on999888['plusCode'] as IMap<String, dynamic>).then(
                            (on970697) => (
                              $_id: (on970697['_id'] as String),
                              longName: on970697.containsKey('longName')
                                  ? Defined((on970697['longName'] as String))
                                  : Undefined<String>(),
                              shortName: on970697.containsKey('shortName')
                                  ? Defined((on970697['shortName'] as String))
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
                  postalCode: on999888.containsKey('postalCode')
                      ? Defined(
                          (on999888['postalCode'] as IMap<String, dynamic>)
                              .then(
                                (on903405) => (
                                  $_id: (on903405['_id'] as String),
                                  longName: on903405.containsKey('longName')
                                      ? Defined(
                                          (on903405['longName'] as String),
                                        )
                                      : Undefined<String>(),
                                  shortName: on903405.containsKey('shortName')
                                      ? Defined(
                                          (on903405['shortName'] as String),
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
                  subLocalityLevel1: on999888.containsKey('subLocalityLevel1')
                      ? Defined(
                          (on999888['subLocalityLevel1']
                                  as IMap<String, dynamic>)
                              .then(
                                (on969295) => (
                                  $_id: (on969295['_id'] as String),
                                  longName: on969295.containsKey('longName')
                                      ? Defined(
                                          (on969295['longName'] as String),
                                        )
                                      : Undefined<String>(),
                                  shortName: on969295.containsKey('shortName')
                                      ? Defined(
                                          (on969295['shortName'] as String),
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
                  subLocalityLevel2: on999888.containsKey('subLocalityLevel2')
                      ? Defined(
                          (on999888['subLocalityLevel2']
                                  as IMap<String, dynamic>)
                              .then(
                                (on852093) => (
                                  $_id: (on852093['_id'] as String),
                                  longName: on852093.containsKey('longName')
                                      ? Defined(
                                          (on852093['longName'] as String),
                                        )
                                      : Undefined<String>(),
                                  shortName: on852093.containsKey('shortName')
                                      ? Defined(
                                          (on852093['shortName'] as String),
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
                Optional<({String $_id, double latitude, double longitude})>
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
      dbId: on542489.containsKey('dbId')
          ? Defined((on542489['dbId'] as double))
          : Undefined<double>(),
      deletedAt: on542489.containsKey('deletedAt')
          ? Defined((on542489['deletedAt'] as double))
          : Undefined<double>(),
      deviceIds: on542489.containsKey('deviceIds')
          ? Defined(
              (on542489['deviceIds'] as IList<dynamic>)
                  .map((on380933) => UserDevicesId(on380933 as String))
                  .toIList(),
            )
          : Undefined<IList<UserDevicesId>>(),
      email: (on542489['email'] as String),
      emailVerified: (on542489['emailVerified'] as bool),
      fbmToken: on542489.containsKey('fbmToken')
          ? Defined((on542489['fbmToken'] as String))
          : Undefined<String>(),
      firstName: (on542489['firstName'] as String),
      fullName: (on542489['fullName'] as String),
      hash: on542489.containsKey('hash')
          ? Defined((on542489['hash'] as String))
          : Undefined<String>(),
      lastName: (on542489['lastName'] as String),
      organizationBranchAccessIds:
          on542489.containsKey('organizationBranchAccessIds')
          ? Defined(
              (on542489['organizationBranchAccessIds'] as IList<dynamic>)
                  .map((on365105) => OrganizationBranchesId(on365105 as String))
                  .toIList(),
            )
          : Undefined<IList<OrganizationBranchesId>>(),
      organizationBranchId: on542489.containsKey('organizationBranchId')
          ? Defined(
              OrganizationBranchesId(
                on542489['organizationBranchId'] as String,
              ),
            )
          : Undefined<OrganizationBranchesId>(),
      organizationId: on542489.containsKey('organizationId')
          ? Defined(OrganizationId(on542489['organizationId'] as String))
          : Undefined<OrganizationId>(),
      organizationType: on542489.containsKey('organizationType')
          ? Defined((on542489['organizationType'] as String))
          : Undefined<String>(),
      phone: on542489.containsKey('phone')
          ? Defined((on542489['phone'] as String))
          : Undefined<String>(),
      profileImage: on542489.containsKey('profileImage')
          ? Defined((on542489['profileImage'] as String))
          : Undefined<String>(),
      profileImageBlurHash: on542489.containsKey('profileImageBlurHash')
          ? Defined((on542489['profileImageBlurHash'] as String))
          : Undefined<String>(),
      profileImageSize: on542489.containsKey('profileImageSize')
          ? Defined((on542489['profileImageSize'] as double))
          : Undefined<double>(),
      role: (on542489['role'] as String),
      salt: on542489.containsKey('salt')
          ? Defined((on542489['salt'] as String))
          : Undefined<String>(),
      statId: on542489.containsKey('statId')
          ? Defined(FieldAgentStatsId(on542489['statId'] as String))
          : Undefined<FieldAgentStatsId>(),
      status: (on542489['status'] as String),
      subRole: (on542489['subRole'] as String),
      teamBranchAccessIds: on542489.containsKey('teamBranchAccessIds')
          ? Defined(
              (on542489['teamBranchAccessIds'] as IList<dynamic>)
                  .map((on854427) => TeamBranchesId(on854427 as String))
                  .toIList(),
            )
          : Undefined<IList<TeamBranchesId>>(),
      teamBranchId: on542489.containsKey('teamBranchId')
          ? Defined(TeamBranchesId(on542489['teamBranchId'] as String))
          : Undefined<TeamBranchesId>(),
      teamId: on542489.containsKey('teamId')
          ? Defined(TeamId(on542489['teamId'] as String))
          : Undefined<TeamId>(),
      teamType: on542489.containsKey('teamType')
          ? Defined((on542489['teamType'] as String))
          : Undefined<String>(),
      updatedAt: on542489.containsKey('updatedAt')
          ? Defined((on542489['updatedAt'] as double))
          : Undefined<double>(),
      username: on542489.containsKey('username')
          ? Defined((on542489['username'] as String))
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
      Optional<({String $_id, double latitude, double longitude})>
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
