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
    (on254138) => (
      $_id: UsersId(on254138['_id'] as String),
      appCountryId: on254138.containsKey('appCountryId')
          ? Defined(AppCountriesId(on254138['appCountryId'] as String))
          : Undefined<AppCountriesId>(),
      appCountryIso: on254138.containsKey('appCountryIso')
          ? Defined((on254138['appCountryIso'] as String))
          : Undefined<String>(),
      appCountryName: on254138.containsKey('appCountryName')
          ? Defined((on254138['appCountryName'] as String))
          : Undefined<String>(),
      auditAddedById: on254138.containsKey('auditAddedById')
          ? Defined(UsersId(on254138['auditAddedById'] as String))
          : Undefined<UsersId>(),
      auditAddedByName: on254138.containsKey('auditAddedByName')
          ? Defined((on254138['auditAddedByName'] as String))
          : Undefined<String>(),
      auditDeletedById: on254138.containsKey('auditDeletedById')
          ? Defined(UsersId(on254138['auditDeletedById'] as String))
          : Undefined<UsersId>(),
      auditDeletedByName: on254138.containsKey('auditDeletedByName')
          ? Defined((on254138['auditDeletedByName'] as String))
          : Undefined<String>(),
      auditUpdatedById: on254138.containsKey('auditUpdatedById')
          ? Defined(UsersId(on254138['auditUpdatedById'] as String))
          : Undefined<UsersId>(),
      auditUpdatedByName: on254138.containsKey('auditUpdatedByName')
          ? Defined((on254138['auditUpdatedByName'] as String))
          : Undefined<String>(),
      contactEmail: on254138.containsKey('contactEmail')
          ? Defined((on254138['contactEmail'] as String))
          : Undefined<String>(),
      contactPhone: on254138.containsKey('contactPhone')
          ? Defined((on254138['contactPhone'] as String))
          : Undefined<String>(),
      createdAt: on254138.containsKey('createdAt')
          ? Defined((on254138['createdAt'] as double))
          : Undefined<double>(),
      currentLocation: on254138.containsKey('currentLocation')
          ? Defined(
              (on254138['currentLocation'] as IMap<String, dynamic>).then(
                (on231963) => (
                  $_id: (on231963['_id'] as String),
                  administrativeAreaLevel1:
                      on231963.containsKey('administrativeAreaLevel1')
                      ? Defined(
                          (on231963['administrativeAreaLevel1']
                                  as IMap<String, dynamic>)
                              .then(
                                (on598949) => (
                                  $_id: (on598949['_id'] as String),
                                  longName: on598949.containsKey('longName')
                                      ? Defined(
                                          (on598949['longName'] as String),
                                        )
                                      : Undefined<String>(),
                                  shortName: on598949.containsKey('shortName')
                                      ? Defined(
                                          (on598949['shortName'] as String),
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
                      on231963.containsKey('administrativeAreaLevel2')
                      ? Defined(
                          (on231963['administrativeAreaLevel2']
                                  as IMap<String, dynamic>)
                              .then(
                                (on171327) => (
                                  $_id: (on171327['_id'] as String),
                                  latitude: (on171327['latitude'] as double),
                                  longitude: (on171327['longitude'] as double),
                                ),
                              ),
                        )
                      : Undefined<
                          ({String $_id, double latitude, double longitude})
                        >(),
                  country: on231963.containsKey('country')
                      ? Defined(
                          (on231963['country'] as IMap<String, dynamic>).then(
                            (on496266) => (
                              $_id: (on496266['_id'] as String),
                              longName: on496266.containsKey('longName')
                                  ? Defined((on496266['longName'] as String))
                                  : Undefined<String>(),
                              shortName: on496266.containsKey('shortName')
                                  ? Defined((on496266['shortName'] as String))
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
                  formattedAddress: on231963.containsKey('formattedAddress')
                      ? Defined((on231963['formattedAddress'] as String))
                      : Undefined<String>(),
                  latLng: (on231963['latLng'] as IMap<String, dynamic>).then(
                    (on708077) => (
                      $_id: (on708077['_id'] as String),
                      latitude: (on708077['latitude'] as double),
                      longitude: (on708077['longitude'] as double),
                    ),
                  ),
                  locality: on231963.containsKey('locality')
                      ? Defined(
                          (on231963['locality'] as IMap<String, dynamic>).then(
                            (on399820) => (
                              $_id: (on399820['_id'] as String),
                              longName: on399820.containsKey('longName')
                                  ? Defined((on399820['longName'] as String))
                                  : Undefined<String>(),
                              shortName: on399820.containsKey('shortName')
                                  ? Defined((on399820['shortName'] as String))
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
                  name: on231963.containsKey('name')
                      ? Defined((on231963['name'] as String))
                      : Undefined<String>(),
                  placeId: on231963.containsKey('placeId')
                      ? Defined((on231963['placeId'] as String))
                      : Undefined<String>(),
                  plusCode: on231963.containsKey('plusCode')
                      ? Defined(
                          (on231963['plusCode'] as IMap<String, dynamic>).then(
                            (on106168) => (
                              $_id: (on106168['_id'] as String),
                              longName: on106168.containsKey('longName')
                                  ? Defined((on106168['longName'] as String))
                                  : Undefined<String>(),
                              shortName: on106168.containsKey('shortName')
                                  ? Defined((on106168['shortName'] as String))
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
                  postalCode: on231963.containsKey('postalCode')
                      ? Defined(
                          (on231963['postalCode'] as IMap<String, dynamic>)
                              .then(
                                (on876042) => (
                                  $_id: (on876042['_id'] as String),
                                  longName: on876042.containsKey('longName')
                                      ? Defined(
                                          (on876042['longName'] as String),
                                        )
                                      : Undefined<String>(),
                                  shortName: on876042.containsKey('shortName')
                                      ? Defined(
                                          (on876042['shortName'] as String),
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
                  subLocalityLevel1: on231963.containsKey('subLocalityLevel1')
                      ? Defined(
                          (on231963['subLocalityLevel1']
                                  as IMap<String, dynamic>)
                              .then(
                                (on165195) => (
                                  $_id: (on165195['_id'] as String),
                                  longName: on165195.containsKey('longName')
                                      ? Defined(
                                          (on165195['longName'] as String),
                                        )
                                      : Undefined<String>(),
                                  shortName: on165195.containsKey('shortName')
                                      ? Defined(
                                          (on165195['shortName'] as String),
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
                  subLocalityLevel2: on231963.containsKey('subLocalityLevel2')
                      ? Defined(
                          (on231963['subLocalityLevel2']
                                  as IMap<String, dynamic>)
                              .then(
                                (on69164) => (
                                  $_id: (on69164['_id'] as String),
                                  longName: on69164.containsKey('longName')
                                      ? Defined((on69164['longName'] as String))
                                      : Undefined<String>(),
                                  shortName: on69164.containsKey('shortName')
                                      ? Defined(
                                          (on69164['shortName'] as String),
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
      dbId: on254138.containsKey('dbId')
          ? Defined((on254138['dbId'] as double))
          : Undefined<double>(),
      deletedAt: on254138.containsKey('deletedAt')
          ? Defined((on254138['deletedAt'] as double))
          : Undefined<double>(),
      deviceIds: on254138.containsKey('deviceIds')
          ? Defined(
              (on254138['deviceIds'] as IList<dynamic>)
                  .map((on902055) => UserDevicesId(on902055 as String))
                  .toIList(),
            )
          : Undefined<IList<UserDevicesId>>(),
      email: (on254138['email'] as String),
      emailVerified: (on254138['emailVerified'] as bool),
      fbmToken: on254138.containsKey('fbmToken')
          ? Defined((on254138['fbmToken'] as String))
          : Undefined<String>(),
      firstName: (on254138['firstName'] as String),
      fullName: (on254138['fullName'] as String),
      hash: on254138.containsKey('hash')
          ? Defined((on254138['hash'] as String))
          : Undefined<String>(),
      lastName: (on254138['lastName'] as String),
      organizationBranchAccessIds:
          on254138.containsKey('organizationBranchAccessIds')
          ? Defined(
              (on254138['organizationBranchAccessIds'] as IList<dynamic>)
                  .map((on440415) => OrganizationBranchesId(on440415 as String))
                  .toIList(),
            )
          : Undefined<IList<OrganizationBranchesId>>(),
      organizationBranchId: on254138.containsKey('organizationBranchId')
          ? Defined(
              OrganizationBranchesId(
                on254138['organizationBranchId'] as String,
              ),
            )
          : Undefined<OrganizationBranchesId>(),
      organizationId: on254138.containsKey('organizationId')
          ? Defined(OrganizationId(on254138['organizationId'] as String))
          : Undefined<OrganizationId>(),
      organizationType: on254138.containsKey('organizationType')
          ? Defined((on254138['organizationType'] as String))
          : Undefined<String>(),
      phone: on254138.containsKey('phone')
          ? Defined((on254138['phone'] as String))
          : Undefined<String>(),
      profileImage: on254138.containsKey('profileImage')
          ? Defined((on254138['profileImage'] as String))
          : Undefined<String>(),
      profileImageBlurHash: on254138.containsKey('profileImageBlurHash')
          ? Defined((on254138['profileImageBlurHash'] as String))
          : Undefined<String>(),
      profileImageSize: on254138.containsKey('profileImageSize')
          ? Defined((on254138['profileImageSize'] as double))
          : Undefined<double>(),
      role: (on254138['role'] as String),
      salt: on254138.containsKey('salt')
          ? Defined((on254138['salt'] as String))
          : Undefined<String>(),
      statId: on254138.containsKey('statId')
          ? Defined(FieldAgentStatsId(on254138['statId'] as String))
          : Undefined<FieldAgentStatsId>(),
      status: (on254138['status'] as String),
      subRole: (on254138['subRole'] as String),
      teamBranchAccessIds: on254138.containsKey('teamBranchAccessIds')
          ? Defined(
              (on254138['teamBranchAccessIds'] as IList<dynamic>)
                  .map((on598227) => TeamBranchesId(on598227 as String))
                  .toIList(),
            )
          : Undefined<IList<TeamBranchesId>>(),
      teamBranchId: on254138.containsKey('teamBranchId')
          ? Defined(TeamBranchesId(on254138['teamBranchId'] as String))
          : Undefined<TeamBranchesId>(),
      teamId: on254138.containsKey('teamId')
          ? Defined(TeamId(on254138['teamId'] as String))
          : Undefined<TeamId>(),
      teamType: on254138.containsKey('teamType')
          ? Defined((on254138['teamType'] as String))
          : Undefined<String>(),
      updatedAt: on254138.containsKey('updatedAt')
          ? Defined((on254138['updatedAt'] as double))
          : Undefined<double>(),
      username: on254138.containsKey('username')
          ? Defined((on254138['username'] as String))
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
