// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final getMyFieldAgentProfile =
    QueryOperation<void, GetMyFieldAgentProfileResponse>(
      'fieldAgents:getMyFieldAgentProfile',
      serialize,
      deserialize,
    );
BTreeMapStringValue serialize(void args) {
  return hashmapToBtreemap(hashmap: {});
}

GetMyFieldAgentProfileResponse deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on91437) => (
      $_id: UsersId(on91437['_id'] as String),
      appCountryId: on91437.containsKey('appCountryId')
          ? Defined(AppCountriesId(on91437['appCountryId'] as String))
          : Undefined<AppCountriesId>(),
      appCountryIso: on91437.containsKey('appCountryIso')
          ? Defined((on91437['appCountryIso'] as String))
          : Undefined<String>(),
      appCountryName: on91437.containsKey('appCountryName')
          ? Defined((on91437['appCountryName'] as String))
          : Undefined<String>(),
      auditAddedById: on91437.containsKey('auditAddedById')
          ? Defined(UsersId(on91437['auditAddedById'] as String))
          : Undefined<UsersId>(),
      auditAddedByName: on91437.containsKey('auditAddedByName')
          ? Defined((on91437['auditAddedByName'] as String))
          : Undefined<String>(),
      auditDeletedById: on91437.containsKey('auditDeletedById')
          ? Defined(UsersId(on91437['auditDeletedById'] as String))
          : Undefined<UsersId>(),
      auditDeletedByName: on91437.containsKey('auditDeletedByName')
          ? Defined((on91437['auditDeletedByName'] as String))
          : Undefined<String>(),
      auditUpdatedById: on91437.containsKey('auditUpdatedById')
          ? Defined(UsersId(on91437['auditUpdatedById'] as String))
          : Undefined<UsersId>(),
      auditUpdatedByName: on91437.containsKey('auditUpdatedByName')
          ? Defined((on91437['auditUpdatedByName'] as String))
          : Undefined<String>(),
      contactEmail: on91437.containsKey('contactEmail')
          ? Defined((on91437['contactEmail'] as String))
          : Undefined<String>(),
      contactPhone: on91437.containsKey('contactPhone')
          ? Defined((on91437['contactPhone'] as String))
          : Undefined<String>(),
      createdAt: on91437.containsKey('createdAt')
          ? Defined((on91437['createdAt'] as double))
          : Undefined<double>(),
      currentLocation: on91437.containsKey('currentLocation')
          ? Defined(
              (on91437['currentLocation'] as IMap<String, dynamic>).then(
                (on887742) => (
                  $_id: (on887742['_id'] as String),
                  administrativeAreaLevel1:
                      on887742.containsKey('administrativeAreaLevel1')
                      ? Defined(
                          (on887742['administrativeAreaLevel1']
                                  as IMap<String, dynamic>)
                              .then(
                                (on684243) => (
                                  $_id: (on684243['_id'] as String),
                                  longName: on684243.containsKey('longName')
                                      ? Defined(
                                          (on684243['longName'] as String),
                                        )
                                      : Undefined<String>(),
                                  shortName: on684243.containsKey('shortName')
                                      ? Defined(
                                          (on684243['shortName'] as String),
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
                      on887742.containsKey('administrativeAreaLevel2')
                      ? Defined(
                          (on887742['administrativeAreaLevel2']
                                  as IMap<String, dynamic>)
                              .then(
                                (on438947) => (
                                  $_id: (on438947['_id'] as String),
                                  latitude: (on438947['latitude'] as double),
                                  longitude: (on438947['longitude'] as double),
                                ),
                              ),
                        )
                      : Undefined<
                          ({String $_id, double latitude, double longitude})
                        >(),
                  country: on887742.containsKey('country')
                      ? Defined(
                          (on887742['country'] as IMap<String, dynamic>).then(
                            (on496149) => (
                              $_id: (on496149['_id'] as String),
                              longName: on496149.containsKey('longName')
                                  ? Defined((on496149['longName'] as String))
                                  : Undefined<String>(),
                              shortName: on496149.containsKey('shortName')
                                  ? Defined((on496149['shortName'] as String))
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
                  formattedAddress: on887742.containsKey('formattedAddress')
                      ? Defined((on887742['formattedAddress'] as String))
                      : Undefined<String>(),
                  latLng: (on887742['latLng'] as IMap<String, dynamic>).then(
                    (on557429) => (
                      $_id: (on557429['_id'] as String),
                      latitude: (on557429['latitude'] as double),
                      longitude: (on557429['longitude'] as double),
                    ),
                  ),
                  locality: on887742.containsKey('locality')
                      ? Defined(
                          (on887742['locality'] as IMap<String, dynamic>).then(
                            (on825958) => (
                              $_id: (on825958['_id'] as String),
                              longName: on825958.containsKey('longName')
                                  ? Defined((on825958['longName'] as String))
                                  : Undefined<String>(),
                              shortName: on825958.containsKey('shortName')
                                  ? Defined((on825958['shortName'] as String))
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
                  name: on887742.containsKey('name')
                      ? Defined((on887742['name'] as String))
                      : Undefined<String>(),
                  placeId: on887742.containsKey('placeId')
                      ? Defined((on887742['placeId'] as String))
                      : Undefined<String>(),
                  plusCode: on887742.containsKey('plusCode')
                      ? Defined(
                          (on887742['plusCode'] as IMap<String, dynamic>).then(
                            (on687888) => (
                              $_id: (on687888['_id'] as String),
                              longName: on687888.containsKey('longName')
                                  ? Defined((on687888['longName'] as String))
                                  : Undefined<String>(),
                              shortName: on687888.containsKey('shortName')
                                  ? Defined((on687888['shortName'] as String))
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
                  postalCode: on887742.containsKey('postalCode')
                      ? Defined(
                          (on887742['postalCode'] as IMap<String, dynamic>)
                              .then(
                                (on884552) => (
                                  $_id: (on884552['_id'] as String),
                                  longName: on884552.containsKey('longName')
                                      ? Defined(
                                          (on884552['longName'] as String),
                                        )
                                      : Undefined<String>(),
                                  shortName: on884552.containsKey('shortName')
                                      ? Defined(
                                          (on884552['shortName'] as String),
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
                  subLocalityLevel1: on887742.containsKey('subLocalityLevel1')
                      ? Defined(
                          (on887742['subLocalityLevel1']
                                  as IMap<String, dynamic>)
                              .then(
                                (on858324) => (
                                  $_id: (on858324['_id'] as String),
                                  longName: on858324.containsKey('longName')
                                      ? Defined(
                                          (on858324['longName'] as String),
                                        )
                                      : Undefined<String>(),
                                  shortName: on858324.containsKey('shortName')
                                      ? Defined(
                                          (on858324['shortName'] as String),
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
                  subLocalityLevel2: on887742.containsKey('subLocalityLevel2')
                      ? Defined(
                          (on887742['subLocalityLevel2']
                                  as IMap<String, dynamic>)
                              .then(
                                (on124625) => (
                                  $_id: (on124625['_id'] as String),
                                  longName: on124625.containsKey('longName')
                                      ? Defined(
                                          (on124625['longName'] as String),
                                        )
                                      : Undefined<String>(),
                                  shortName: on124625.containsKey('shortName')
                                      ? Defined(
                                          (on124625['shortName'] as String),
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
      dbId: on91437.containsKey('dbId')
          ? Defined((on91437['dbId'] as double))
          : Undefined<double>(),
      deletedAt: on91437.containsKey('deletedAt')
          ? Defined((on91437['deletedAt'] as double))
          : Undefined<double>(),
      deviceIds: on91437.containsKey('deviceIds')
          ? Defined(
              (on91437['deviceIds'] as IList<dynamic>)
                  .map((on111474) => UserDevicesId(on111474 as String))
                  .toIList(),
            )
          : Undefined<IList<UserDevicesId>>(),
      email: (on91437['email'] as String),
      emailVerified: (on91437['emailVerified'] as bool),
      fbmToken: on91437.containsKey('fbmToken')
          ? Defined((on91437['fbmToken'] as String))
          : Undefined<String>(),
      firstName: (on91437['firstName'] as String),
      fullName: (on91437['fullName'] as String),
      hash: on91437.containsKey('hash')
          ? Defined((on91437['hash'] as String))
          : Undefined<String>(),
      lastName: (on91437['lastName'] as String),
      organizationBranchAccessIds:
          on91437.containsKey('organizationBranchAccessIds')
          ? Defined(
              (on91437['organizationBranchAccessIds'] as IList<dynamic>)
                  .map((on806873) => OrganizationBranchesId(on806873 as String))
                  .toIList(),
            )
          : Undefined<IList<OrganizationBranchesId>>(),
      organizationBranchId: on91437.containsKey('organizationBranchId')
          ? Defined(
              OrganizationBranchesId(on91437['organizationBranchId'] as String),
            )
          : Undefined<OrganizationBranchesId>(),
      organizationId: on91437.containsKey('organizationId')
          ? Defined(OrganizationId(on91437['organizationId'] as String))
          : Undefined<OrganizationId>(),
      organizationType: on91437.containsKey('organizationType')
          ? Defined((on91437['organizationType'] as String))
          : Undefined<String>(),
      phone: on91437.containsKey('phone')
          ? Defined((on91437['phone'] as String))
          : Undefined<String>(),
      profileImage: on91437.containsKey('profileImage')
          ? Defined((on91437['profileImage'] as String))
          : Undefined<String>(),
      profileImageBlurHash: on91437.containsKey('profileImageBlurHash')
          ? Defined((on91437['profileImageBlurHash'] as String))
          : Undefined<String>(),
      profileImageSize: on91437.containsKey('profileImageSize')
          ? Defined((on91437['profileImageSize'] as double))
          : Undefined<double>(),
      role: (on91437['role'] as String),
      salt: on91437.containsKey('salt')
          ? Defined((on91437['salt'] as String))
          : Undefined<String>(),
      statId: on91437.containsKey('statId')
          ? Defined(FieldAgentStatsId(on91437['statId'] as String))
          : Undefined<FieldAgentStatsId>(),
      status: (on91437['status'] as String),
      subRole: (on91437['subRole'] as String),
      teamBranchAccessIds: on91437.containsKey('teamBranchAccessIds')
          ? Defined(
              (on91437['teamBranchAccessIds'] as IList<dynamic>)
                  .map((on188919) => TeamBranchesId(on188919 as String))
                  .toIList(),
            )
          : Undefined<IList<TeamBranchesId>>(),
      teamBranchId: on91437.containsKey('teamBranchId')
          ? Defined(TeamBranchesId(on91437['teamBranchId'] as String))
          : Undefined<TeamBranchesId>(),
      teamId: on91437.containsKey('teamId')
          ? Defined(TeamId(on91437['teamId'] as String))
          : Undefined<TeamId>(),
      teamType: on91437.containsKey('teamType')
          ? Defined((on91437['teamType'] as String))
          : Undefined<String>(),
      updatedAt: on91437.containsKey('updatedAt')
          ? Defined((on91437['updatedAt'] as double))
          : Undefined<double>(),
      username: on91437.containsKey('username')
          ? Defined((on91437['username'] as String))
          : Undefined<String>(),
    ),
  );
}

typedef GetMyFieldAgentProfileResponse = ({
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
