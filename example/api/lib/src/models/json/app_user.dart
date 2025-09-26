// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "map_address.dart";
import "map_lat_lng.dart";
import "map_location.dart";

class AppUser {
  final UsersId $_id;
  final Optional<AppCountriesId> appCountryId;
  final Optional<String> appCountryIso;
  final Optional<String> appCountryName;
  final Optional<UsersId> auditAddedById;
  final Optional<String> auditAddedByName;
  final Optional<UsersId> auditDeletedById;
  final Optional<String> auditDeletedByName;
  final Optional<UsersId> auditUpdatedById;
  final Optional<String> auditUpdatedByName;
  final Optional<String> contactEmail;
  final Optional<String> contactPhone;
  final Optional<double> createdAt;
  final Optional<MapLocation> currentLocation;
  final Optional<double> dbId;
  final Optional<double> deletedAt;
  final Optional<IList<UserDevicesId>> deviceIds;
  final String email;
  final bool emailVerified;
  final Optional<String> fbmToken;
  final String firstName;
  final String fullName;
  final Optional<String> hash;
  final String lastName;
  final Optional<IList<OrganizationBranchesId>> organizationBranchAccessIds;
  final Optional<OrganizationBranchesId> organizationBranchId;
  final Optional<OrganizationId> organizationId;
  final Optional<String> organizationType;
  final Optional<String> phone;
  final Optional<String> profileImage;
  final Optional<String> profileImageBlurHash;
  final Optional<double> profileImageSize;
  final String role;
  final Optional<String> salt;
  final Optional<FieldAgentStatsId> statId;
  final String status;
  final String subRole;
  final Optional<IList<TeamBranchesId>> teamBranchAccessIds;
  final Optional<TeamBranchesId> teamBranchId;
  final Optional<TeamId> teamId;
  final Optional<String> teamType;
  final Optional<double> updatedAt;
  final Optional<String> username;

  const AppUser({
    required this.$_id,
    this.appCountryId = const Undefined(),
    this.appCountryIso = const Undefined(),
    this.appCountryName = const Undefined(),
    this.auditAddedById = const Undefined(),
    this.auditAddedByName = const Undefined(),
    this.auditDeletedById = const Undefined(),
    this.auditDeletedByName = const Undefined(),
    this.auditUpdatedById = const Undefined(),
    this.auditUpdatedByName = const Undefined(),
    this.contactEmail = const Undefined(),
    this.contactPhone = const Undefined(),
    this.createdAt = const Undefined(),
    this.currentLocation = const Undefined(),
    this.dbId = const Undefined(),
    this.deletedAt = const Undefined(),
    this.deviceIds = const Undefined(),
    required this.email,
    required this.emailVerified,
    this.fbmToken = const Undefined(),
    required this.firstName,
    required this.fullName,
    this.hash = const Undefined(),
    required this.lastName,
    this.organizationBranchAccessIds = const Undefined(),
    this.organizationBranchId = const Undefined(),
    this.organizationId = const Undefined(),
    this.organizationType = const Undefined(),
    this.phone = const Undefined(),
    this.profileImage = const Undefined(),
    this.profileImageBlurHash = const Undefined(),
    this.profileImageSize = const Undefined(),
    required this.role,
    this.salt = const Undefined(),
    this.statId = const Undefined(),
    required this.status,
    required this.subRole,
    this.teamBranchAccessIds = const Undefined(),
    this.teamBranchId = const Undefined(),
    this.teamId = const Undefined(),
    this.teamType = const Undefined(),
    this.updatedAt = const Undefined(),
    this.username = const Undefined(),
  });

  factory AppUser.empty() {
    return AppUser(
      $_id: UsersId(''),
      email: '',
      emailVerified: false,
      firstName: '',
      fullName: '',
      lastName: '',
      role: '',
      status: '',
      subRole: '',
    );
  }

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(
      $_id: UsersId(json['_id'] as String),
      appCountryId: json['appCountryId'] != null
          ? Defined(AppCountriesId(json['appCountryId'] as String))
          : const Undefined(),
      appCountryIso: json['appCountryIso'] != null
          ? Defined(json['appCountryIso'] as String)
          : const Undefined(),
      appCountryName: json['appCountryName'] != null
          ? Defined(json['appCountryName'] as String)
          : const Undefined(),
      auditAddedById: json['auditAddedById'] != null
          ? Defined(UsersId(json['auditAddedById'] as String))
          : const Undefined(),
      auditAddedByName: json['auditAddedByName'] != null
          ? Defined(json['auditAddedByName'] as String)
          : const Undefined(),
      auditDeletedById: json['auditDeletedById'] != null
          ? Defined(UsersId(json['auditDeletedById'] as String))
          : const Undefined(),
      auditDeletedByName: json['auditDeletedByName'] != null
          ? Defined(json['auditDeletedByName'] as String)
          : const Undefined(),
      auditUpdatedById: json['auditUpdatedById'] != null
          ? Defined(UsersId(json['auditUpdatedById'] as String))
          : const Undefined(),
      auditUpdatedByName: json['auditUpdatedByName'] != null
          ? Defined(json['auditUpdatedByName'] as String)
          : const Undefined(),
      contactEmail: json['contactEmail'] != null
          ? Defined(json['contactEmail'] as String)
          : const Undefined(),
      contactPhone: json['contactPhone'] != null
          ? Defined(json['contactPhone'] as String)
          : const Undefined(),
      createdAt: json['createdAt'] != null
          ? Defined(json['createdAt'] as double)
          : const Undefined(),
      currentLocation: json['currentLocation'] != null
          ? Defined(
              MapLocation.fromJson(
                json['currentLocation'] as Map<String, dynamic>,
              ),
            )
          : const Undefined(),
      dbId: json['dbId'] != null
          ? Defined(json['dbId'] as double)
          : const Undefined(),
      deletedAt: json['deletedAt'] != null
          ? Defined(json['deletedAt'] as double)
          : const Undefined(),
      deviceIds: json['deviceIds'] != null
          ? Defined(
              (json['deviceIds'] as List<dynamic>)
                  .map((e) => UserDevicesId(e as String))
                  .toList()
                  .toIList(),
            )
          : const Undefined(),
      email: json['email'] as String,
      emailVerified: json['emailVerified'] as bool,
      fbmToken: json['fbmToken'] != null
          ? Defined(json['fbmToken'] as String)
          : const Undefined(),
      firstName: json['firstName'] as String,
      fullName: json['fullName'] as String,
      hash: json['hash'] != null
          ? Defined(json['hash'] as String)
          : const Undefined(),
      lastName: json['lastName'] as String,
      organizationBranchAccessIds: json['organizationBranchAccessIds'] != null
          ? Defined(
              (json['organizationBranchAccessIds'] as List<dynamic>)
                  .map((e) => OrganizationBranchesId(e as String))
                  .toList()
                  .toIList(),
            )
          : const Undefined(),
      organizationBranchId: json['organizationBranchId'] != null
          ? Defined(
              OrganizationBranchesId(json['organizationBranchId'] as String),
            )
          : const Undefined(),
      organizationId: json['organizationId'] != null
          ? Defined(OrganizationId(json['organizationId'] as String))
          : const Undefined(),
      organizationType: json['organizationType'] != null
          ? Defined(json['organizationType'] as String)
          : const Undefined(),
      phone: json['phone'] != null
          ? Defined(json['phone'] as String)
          : const Undefined(),
      profileImage: json['profileImage'] != null
          ? Defined(json['profileImage'] as String)
          : const Undefined(),
      profileImageBlurHash: json['profileImageBlurHash'] != null
          ? Defined(json['profileImageBlurHash'] as String)
          : const Undefined(),
      profileImageSize: json['profileImageSize'] != null
          ? Defined(json['profileImageSize'] as double)
          : const Undefined(),
      role: json['role'] as String,
      salt: json['salt'] != null
          ? Defined(json['salt'] as String)
          : const Undefined(),
      statId: json['statId'] != null
          ? Defined(FieldAgentStatsId(json['statId'] as String))
          : const Undefined(),
      status: json['status'] as String,
      subRole: json['subRole'] as String,
      teamBranchAccessIds: json['teamBranchAccessIds'] != null
          ? Defined(
              (json['teamBranchAccessIds'] as List<dynamic>)
                  .map((e) => TeamBranchesId(e as String))
                  .toList()
                  .toIList(),
            )
          : const Undefined(),
      teamBranchId: json['teamBranchId'] != null
          ? Defined(TeamBranchesId(json['teamBranchId'] as String))
          : const Undefined(),
      teamId: json['teamId'] != null
          ? Defined(TeamId(json['teamId'] as String))
          : const Undefined(),
      teamType: json['teamType'] != null
          ? Defined(json['teamType'] as String)
          : const Undefined(),
      updatedAt: json['updatedAt'] != null
          ? Defined(json['updatedAt'] as double)
          : const Undefined(),
      username: json['username'] != null
          ? Defined(json['username'] as String)
          : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': $_id,
      if (appCountryId.isDefined)
        'appCountryId': appCountryId.asDefined().value,
      if (appCountryIso.isDefined)
        'appCountryIso': appCountryIso.asDefined().value,
      if (appCountryName.isDefined)
        'appCountryName': appCountryName.asDefined().value,
      if (auditAddedById.isDefined)
        'auditAddedById': auditAddedById.asDefined().value,
      if (auditAddedByName.isDefined)
        'auditAddedByName': auditAddedByName.asDefined().value,
      if (auditDeletedById.isDefined)
        'auditDeletedById': auditDeletedById.asDefined().value,
      if (auditDeletedByName.isDefined)
        'auditDeletedByName': auditDeletedByName.asDefined().value,
      if (auditUpdatedById.isDefined)
        'auditUpdatedById': auditUpdatedById.asDefined().value,
      if (auditUpdatedByName.isDefined)
        'auditUpdatedByName': auditUpdatedByName.asDefined().value,
      if (contactEmail.isDefined)
        'contactEmail': contactEmail.asDefined().value,
      if (contactPhone.isDefined)
        'contactPhone': contactPhone.asDefined().value,
      if (createdAt.isDefined) 'createdAt': createdAt.asDefined().value,
      if (currentLocation.isDefined)
        'currentLocation': currentLocation.asDefined().value,
      if (dbId.isDefined) 'dbId': dbId.asDefined().value,
      if (deletedAt.isDefined) 'deletedAt': deletedAt.asDefined().value,
      if (deviceIds.isDefined) 'deviceIds': deviceIds.asDefined().value,
      'email': email,
      'emailVerified': emailVerified,
      if (fbmToken.isDefined) 'fbmToken': fbmToken.asDefined().value,
      'firstName': firstName,
      'fullName': fullName,
      if (hash.isDefined) 'hash': hash.asDefined().value,
      'lastName': lastName,
      if (organizationBranchAccessIds.isDefined)
        'organizationBranchAccessIds': organizationBranchAccessIds
            .asDefined()
            .value,
      if (organizationBranchId.isDefined)
        'organizationBranchId': organizationBranchId.asDefined().value,
      if (organizationId.isDefined)
        'organizationId': organizationId.asDefined().value,
      if (organizationType.isDefined)
        'organizationType': organizationType.asDefined().value,
      if (phone.isDefined) 'phone': phone.asDefined().value,
      if (profileImage.isDefined)
        'profileImage': profileImage.asDefined().value,
      if (profileImageBlurHash.isDefined)
        'profileImageBlurHash': profileImageBlurHash.asDefined().value,
      if (profileImageSize.isDefined)
        'profileImageSize': profileImageSize.asDefined().value,
      'role': role,
      if (salt.isDefined) 'salt': salt.asDefined().value,
      if (statId.isDefined) 'statId': statId.asDefined().value,
      'status': status,
      'subRole': subRole,
      if (teamBranchAccessIds.isDefined)
        'teamBranchAccessIds': teamBranchAccessIds.asDefined().value,
      if (teamBranchId.isDefined)
        'teamBranchId': teamBranchId.asDefined().value,
      if (teamId.isDefined) 'teamId': teamId.asDefined().value,
      if (teamType.isDefined) 'teamType': teamType.asDefined().value,
      if (updatedAt.isDefined) 'updatedAt': updatedAt.asDefined().value,
      if (username.isDefined) 'username': username.asDefined().value,
    };
  }

  AppUser copyWith({
    UsersId? $_id,
    Optional<AppCountriesId>? appCountryId,
    Optional<String>? appCountryIso,
    Optional<String>? appCountryName,
    Optional<UsersId>? auditAddedById,
    Optional<String>? auditAddedByName,
    Optional<UsersId>? auditDeletedById,
    Optional<String>? auditDeletedByName,
    Optional<UsersId>? auditUpdatedById,
    Optional<String>? auditUpdatedByName,
    Optional<String>? contactEmail,
    Optional<String>? contactPhone,
    Optional<double>? createdAt,
    Optional<MapLocation>? currentLocation,
    Optional<double>? dbId,
    Optional<double>? deletedAt,
    Optional<IList<UserDevicesId>>? deviceIds,
    String? email,
    bool? emailVerified,
    Optional<String>? fbmToken,
    String? firstName,
    String? fullName,
    Optional<String>? hash,
    String? lastName,
    Optional<IList<OrganizationBranchesId>>? organizationBranchAccessIds,
    Optional<OrganizationBranchesId>? organizationBranchId,
    Optional<OrganizationId>? organizationId,
    Optional<String>? organizationType,
    Optional<String>? phone,
    Optional<String>? profileImage,
    Optional<String>? profileImageBlurHash,
    Optional<double>? profileImageSize,
    String? role,
    Optional<String>? salt,
    Optional<FieldAgentStatsId>? statId,
    String? status,
    String? subRole,
    Optional<IList<TeamBranchesId>>? teamBranchAccessIds,
    Optional<TeamBranchesId>? teamBranchId,
    Optional<TeamId>? teamId,
    Optional<String>? teamType,
    Optional<double>? updatedAt,
    Optional<String>? username,
  }) {
    return AppUser(
      $_id: $_id ?? this.$_id,
      appCountryId: appCountryId ?? this.appCountryId,
      appCountryIso: appCountryIso ?? this.appCountryIso,
      appCountryName: appCountryName ?? this.appCountryName,
      auditAddedById: auditAddedById ?? this.auditAddedById,
      auditAddedByName: auditAddedByName ?? this.auditAddedByName,
      auditDeletedById: auditDeletedById ?? this.auditDeletedById,
      auditDeletedByName: auditDeletedByName ?? this.auditDeletedByName,
      auditUpdatedById: auditUpdatedById ?? this.auditUpdatedById,
      auditUpdatedByName: auditUpdatedByName ?? this.auditUpdatedByName,
      contactEmail: contactEmail ?? this.contactEmail,
      contactPhone: contactPhone ?? this.contactPhone,
      createdAt: createdAt ?? this.createdAt,
      currentLocation: currentLocation ?? this.currentLocation,
      dbId: dbId ?? this.dbId,
      deletedAt: deletedAt ?? this.deletedAt,
      deviceIds: deviceIds ?? this.deviceIds,
      email: email ?? this.email,
      emailVerified: emailVerified ?? this.emailVerified,
      fbmToken: fbmToken ?? this.fbmToken,
      firstName: firstName ?? this.firstName,
      fullName: fullName ?? this.fullName,
      hash: hash ?? this.hash,
      lastName: lastName ?? this.lastName,
      organizationBranchAccessIds:
          organizationBranchAccessIds ?? this.organizationBranchAccessIds,
      organizationBranchId: organizationBranchId ?? this.organizationBranchId,
      organizationId: organizationId ?? this.organizationId,
      organizationType: organizationType ?? this.organizationType,
      phone: phone ?? this.phone,
      profileImage: profileImage ?? this.profileImage,
      profileImageBlurHash: profileImageBlurHash ?? this.profileImageBlurHash,
      profileImageSize: profileImageSize ?? this.profileImageSize,
      role: role ?? this.role,
      salt: salt ?? this.salt,
      statId: statId ?? this.statId,
      status: status ?? this.status,
      subRole: subRole ?? this.subRole,
      teamBranchAccessIds: teamBranchAccessIds ?? this.teamBranchAccessIds,
      teamBranchId: teamBranchId ?? this.teamBranchId,
      teamId: teamId ?? this.teamId,
      teamType: teamType ?? this.teamType,
      updatedAt: updatedAt ?? this.updatedAt,
      username: username ?? this.username,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AppUser &&
        other.$_id == $_id &&
        other.appCountryId == appCountryId &&
        other.appCountryIso == appCountryIso &&
        other.appCountryName == appCountryName &&
        other.auditAddedById == auditAddedById &&
        other.auditAddedByName == auditAddedByName &&
        other.auditDeletedById == auditDeletedById &&
        other.auditDeletedByName == auditDeletedByName &&
        other.auditUpdatedById == auditUpdatedById &&
        other.auditUpdatedByName == auditUpdatedByName &&
        other.contactEmail == contactEmail &&
        other.contactPhone == contactPhone &&
        other.createdAt == createdAt &&
        other.currentLocation == currentLocation &&
        other.dbId == dbId &&
        other.deletedAt == deletedAt &&
        other.deviceIds == deviceIds &&
        other.email == email &&
        other.emailVerified == emailVerified &&
        other.fbmToken == fbmToken &&
        other.firstName == firstName &&
        other.fullName == fullName &&
        other.hash == hash &&
        other.lastName == lastName &&
        other.organizationBranchAccessIds == organizationBranchAccessIds &&
        other.organizationBranchId == organizationBranchId &&
        other.organizationId == organizationId &&
        other.organizationType == organizationType &&
        other.phone == phone &&
        other.profileImage == profileImage &&
        other.profileImageBlurHash == profileImageBlurHash &&
        other.profileImageSize == profileImageSize &&
        other.role == role &&
        other.salt == salt &&
        other.statId == statId &&
        other.status == status &&
        other.subRole == subRole &&
        other.teamBranchAccessIds == teamBranchAccessIds &&
        other.teamBranchId == teamBranchId &&
        other.teamId == teamId &&
        other.teamType == teamType &&
        other.updatedAt == updatedAt &&
        other.username == username;
  }

  @override
  int get hashCode {
    return $_id.hashCode ^
        appCountryId.hashCode ^
        appCountryIso.hashCode ^
        appCountryName.hashCode ^
        auditAddedById.hashCode ^
        auditAddedByName.hashCode ^
        auditDeletedById.hashCode ^
        auditDeletedByName.hashCode ^
        auditUpdatedById.hashCode ^
        auditUpdatedByName.hashCode ^
        contactEmail.hashCode ^
        contactPhone.hashCode ^
        createdAt.hashCode ^
        currentLocation.hashCode ^
        dbId.hashCode ^
        deletedAt.hashCode ^
        deviceIds.hashCode ^
        email.hashCode ^
        emailVerified.hashCode ^
        fbmToken.hashCode ^
        firstName.hashCode ^
        fullName.hashCode ^
        hash.hashCode ^
        lastName.hashCode ^
        organizationBranchAccessIds.hashCode ^
        organizationBranchId.hashCode ^
        organizationId.hashCode ^
        organizationType.hashCode ^
        phone.hashCode ^
        profileImage.hashCode ^
        profileImageBlurHash.hashCode ^
        profileImageSize.hashCode ^
        role.hashCode ^
        salt.hashCode ^
        statId.hashCode ^
        status.hashCode ^
        subRole.hashCode ^
        teamBranchAccessIds.hashCode ^
        teamBranchId.hashCode ^
        teamId.hashCode ^
        teamType.hashCode ^
        updatedAt.hashCode ^
        username.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
