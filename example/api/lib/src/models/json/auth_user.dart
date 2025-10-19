// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "../../functions/fieldAgentAuth/getMe.dart" show AuthUserDoc;

class AuthUser {
  final double $_creationTime;
  final Optional<String> $_id;
  final Optional<String?> appCountryId;
  final Optional<String?> appCountryIso;
  final Optional<String?> appCountryName;
  final Optional<double?> banExpires;
  final Optional<String?> banReason;
  final Optional<bool?> banned;
  final Optional<String?> createMeta;
  final double createdAt;
  final Optional<String?> currentLocation;
  final Optional<double?> dbId;
  final Optional<double?> deletedAt;
  final Optional<String?> deletedMeta;
  final Optional<String?> displayUsername;
  final String email;
  final bool emailVerified;
  final Optional<String?> fbmToken;
  final Optional<String?> fieldAgentId;
  final Optional<String?> firstName;
  final Optional<String?> fullName;
  final Optional<String?> image;
  final Optional<String?> lastName;
  final Optional<String?> memberId;
  final String name;
  final Optional<String?> organizationId;
  final Optional<String?> phoneNumber;
  final Optional<bool?> phoneNumberVerified;
  final Optional<String?> profileImageBlurHash;
  final Optional<double?> profileImageSize;
  final Optional<String?> role;
  final Optional<String?> shippingClientId;
  final Optional<String?> status;
  final Optional<String?> subRole;
  final Optional<String?> teamId;
  final Optional<String?> teamMemberId;
  final Optional<String?> teamType;
  final Optional<bool?> twoFactorEnabled;
  final Optional<String?> updateMeta;
  final double updatedAt;
  final Optional<String?> userId;
  final Optional<String?> username;

  const AuthUser({
    required this.$_creationTime,
    this.$_id = const Undefined(),
    this.appCountryId = const Undefined(),
    this.appCountryIso = const Undefined(),
    this.appCountryName = const Undefined(),
    this.banExpires = const Undefined(),
    this.banReason = const Undefined(),
    this.banned = const Undefined(),
    this.createMeta = const Undefined(),
    required this.createdAt,
    this.currentLocation = const Undefined(),
    this.dbId = const Undefined(),
    this.deletedAt = const Undefined(),
    this.deletedMeta = const Undefined(),
    this.displayUsername = const Undefined(),
    required this.email,
    required this.emailVerified,
    this.fbmToken = const Undefined(),
    this.fieldAgentId = const Undefined(),
    this.firstName = const Undefined(),
    this.fullName = const Undefined(),
    this.image = const Undefined(),
    this.lastName = const Undefined(),
    this.memberId = const Undefined(),
    required this.name,
    this.organizationId = const Undefined(),
    this.phoneNumber = const Undefined(),
    this.phoneNumberVerified = const Undefined(),
    this.profileImageBlurHash = const Undefined(),
    this.profileImageSize = const Undefined(),
    this.role = const Undefined(),
    this.shippingClientId = const Undefined(),
    this.status = const Undefined(),
    this.subRole = const Undefined(),
    this.teamId = const Undefined(),
    this.teamMemberId = const Undefined(),
    this.teamType = const Undefined(),
    this.twoFactorEnabled = const Undefined(),
    this.updateMeta = const Undefined(),
    required this.updatedAt,
    this.userId = const Undefined(),
    this.username = const Undefined(),
  });

  factory AuthUser.empty() {
    return AuthUser(
      $_creationTime: 0.0,
      createdAt: 0.0,
      email: '',
      emailVerified: false,
      name: '',
      updatedAt: 0.0,
    );
  }

  factory AuthUser.fromJson(Map<String, dynamic> json) {
    return AuthUser(
      $_creationTime: json['_creationTime'] as double,
      $_id: json['_id'] != null
          ? Defined(json['_id'] as String)
          : const Undefined(),
      appCountryId: json['appCountryId'] != null
          ? Defined(json['appCountryId'])
          : const Undefined(),
      appCountryIso: json['appCountryIso'] != null
          ? Defined(json['appCountryIso'])
          : const Undefined(),
      appCountryName: json['appCountryName'] != null
          ? Defined(json['appCountryName'])
          : const Undefined(),
      banExpires: json['banExpires'] != null
          ? Defined(json['banExpires'])
          : const Undefined(),
      banReason: json['banReason'] != null
          ? Defined(json['banReason'])
          : const Undefined(),
      banned: json['banned'] != null
          ? Defined(json['banned'])
          : const Undefined(),
      createMeta: json['createMeta'] != null
          ? Defined(json['createMeta'])
          : const Undefined(),
      createdAt: json['createdAt'] as double,
      currentLocation: json['currentLocation'] != null
          ? Defined(json['currentLocation'])
          : const Undefined(),
      dbId: json['dbId'] != null ? Defined(json['dbId']) : const Undefined(),
      deletedAt: json['deletedAt'] != null
          ? Defined(json['deletedAt'])
          : const Undefined(),
      deletedMeta: json['deletedMeta'] != null
          ? Defined(json['deletedMeta'])
          : const Undefined(),
      displayUsername: json['displayUsername'] != null
          ? Defined(json['displayUsername'])
          : const Undefined(),
      email: json['email'] as String,
      emailVerified: json['emailVerified'] as bool,
      fbmToken: json['fbmToken'] != null
          ? Defined(json['fbmToken'])
          : const Undefined(),
      fieldAgentId: json['fieldAgentId'] != null
          ? Defined(json['fieldAgentId'])
          : const Undefined(),
      firstName: json['firstName'] != null
          ? Defined(json['firstName'])
          : const Undefined(),
      fullName: json['fullName'] != null
          ? Defined(json['fullName'])
          : const Undefined(),
      image: json['image'] != null ? Defined(json['image']) : const Undefined(),
      lastName: json['lastName'] != null
          ? Defined(json['lastName'])
          : const Undefined(),
      memberId: json['memberId'] != null
          ? Defined(json['memberId'])
          : const Undefined(),
      name: json['name'] as String,
      organizationId: json['organizationId'] != null
          ? Defined(json['organizationId'])
          : const Undefined(),
      phoneNumber: json['phoneNumber'] != null
          ? Defined(json['phoneNumber'])
          : const Undefined(),
      phoneNumberVerified: json['phoneNumberVerified'] != null
          ? Defined(json['phoneNumberVerified'])
          : const Undefined(),
      profileImageBlurHash: json['profileImageBlurHash'] != null
          ? Defined(json['profileImageBlurHash'])
          : const Undefined(),
      profileImageSize: json['profileImageSize'] != null
          ? Defined(json['profileImageSize'])
          : const Undefined(),
      role: json['role'] != null ? Defined(json['role']) : const Undefined(),
      shippingClientId: json['shippingClientId'] != null
          ? Defined(json['shippingClientId'])
          : const Undefined(),
      status: json['status'] != null
          ? Defined(json['status'])
          : const Undefined(),
      subRole: json['subRole'] != null
          ? Defined(json['subRole'])
          : const Undefined(),
      teamId: json['teamId'] != null
          ? Defined(json['teamId'])
          : const Undefined(),
      teamMemberId: json['teamMemberId'] != null
          ? Defined(json['teamMemberId'])
          : const Undefined(),
      teamType: json['teamType'] != null
          ? Defined(json['teamType'])
          : const Undefined(),
      twoFactorEnabled: json['twoFactorEnabled'] != null
          ? Defined(json['twoFactorEnabled'])
          : const Undefined(),
      updateMeta: json['updateMeta'] != null
          ? Defined(json['updateMeta'])
          : const Undefined(),
      updatedAt: json['updatedAt'] as double,
      userId: json['userId'] != null
          ? Defined(json['userId'])
          : const Undefined(),
      username: json['username'] != null
          ? Defined(json['username'])
          : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_creationTime': $_creationTime,
      if ($_id.isDefined) '_id': $_id.asDefined().value,
      if (appCountryId.isDefined)
        'appCountryId': appCountryId.asDefined().value,
      if (appCountryIso.isDefined)
        'appCountryIso': appCountryIso.asDefined().value,
      if (appCountryName.isDefined)
        'appCountryName': appCountryName.asDefined().value,
      if (banExpires.isDefined) 'banExpires': banExpires.asDefined().value,
      if (banReason.isDefined) 'banReason': banReason.asDefined().value,
      if (banned.isDefined) 'banned': banned.asDefined().value,
      if (createMeta.isDefined) 'createMeta': createMeta.asDefined().value,
      'createdAt': createdAt,
      if (currentLocation.isDefined)
        'currentLocation': currentLocation.asDefined().value,
      if (dbId.isDefined) 'dbId': dbId.asDefined().value,
      if (deletedAt.isDefined) 'deletedAt': deletedAt.asDefined().value,
      if (deletedMeta.isDefined) 'deletedMeta': deletedMeta.asDefined().value,
      if (displayUsername.isDefined)
        'displayUsername': displayUsername.asDefined().value,
      'email': email,
      'emailVerified': emailVerified,
      if (fbmToken.isDefined) 'fbmToken': fbmToken.asDefined().value,
      if (fieldAgentId.isDefined)
        'fieldAgentId': fieldAgentId.asDefined().value,
      if (firstName.isDefined) 'firstName': firstName.asDefined().value,
      if (fullName.isDefined) 'fullName': fullName.asDefined().value,
      if (image.isDefined) 'image': image.asDefined().value,
      if (lastName.isDefined) 'lastName': lastName.asDefined().value,
      if (memberId.isDefined) 'memberId': memberId.asDefined().value,
      'name': name,
      if (organizationId.isDefined)
        'organizationId': organizationId.asDefined().value,
      if (phoneNumber.isDefined) 'phoneNumber': phoneNumber.asDefined().value,
      if (phoneNumberVerified.isDefined)
        'phoneNumberVerified': phoneNumberVerified.asDefined().value,
      if (profileImageBlurHash.isDefined)
        'profileImageBlurHash': profileImageBlurHash.asDefined().value,
      if (profileImageSize.isDefined)
        'profileImageSize': profileImageSize.asDefined().value,
      if (role.isDefined) 'role': role.asDefined().value,
      if (shippingClientId.isDefined)
        'shippingClientId': shippingClientId.asDefined().value,
      if (status.isDefined) 'status': status.asDefined().value,
      if (subRole.isDefined) 'subRole': subRole.asDefined().value,
      if (teamId.isDefined) 'teamId': teamId.asDefined().value,
      if (teamMemberId.isDefined)
        'teamMemberId': teamMemberId.asDefined().value,
      if (teamType.isDefined) 'teamType': teamType.asDefined().value,
      if (twoFactorEnabled.isDefined)
        'twoFactorEnabled': twoFactorEnabled.asDefined().value,
      if (updateMeta.isDefined) 'updateMeta': updateMeta.asDefined().value,
      'updatedAt': updatedAt,
      if (userId.isDefined) 'userId': userId.asDefined().value,
      if (username.isDefined) 'username': username.asDefined().value,
    };
  }

  /// Create from Convex typedef record
  factory AuthUser.fromDoc(AuthUserDoc doc) {
    final body = doc.body;
    if (body == null) {
      throw ArgumentError('Cannot create AuthUser from null doc.body');
    }
    return AuthUser(
      $_creationTime: body.$_creationTime,
      $_id: body.$_id.isDefined
          ? Defined(body.$_id.asDefined().value)
          : const Undefined(),
      appCountryId: body.appCountryId.isDefined
          ? Defined(body.appCountryId.asDefined().value)
          : const Undefined(),
      appCountryIso: body.appCountryIso.isDefined
          ? Defined(body.appCountryIso.asDefined().value)
          : const Undefined(),
      appCountryName: body.appCountryName.isDefined
          ? Defined(body.appCountryName.asDefined().value)
          : const Undefined(),
      banExpires: body.banExpires.isDefined
          ? Defined(body.banExpires.asDefined().value)
          : const Undefined(),
      banReason: body.banReason.isDefined
          ? Defined(body.banReason.asDefined().value)
          : const Undefined(),
      banned: body.banned.isDefined
          ? Defined(body.banned.asDefined().value)
          : const Undefined(),
      createMeta: body.createMeta.isDefined
          ? Defined(body.createMeta.asDefined().value)
          : const Undefined(),
      createdAt: body.createdAt,
      currentLocation: body.currentLocation.isDefined
          ? Defined(body.currentLocation.asDefined().value)
          : const Undefined(),
      dbId: body.dbId.isDefined
          ? Defined(body.dbId.asDefined().value)
          : const Undefined(),
      deletedAt: body.deletedAt.isDefined
          ? Defined(body.deletedAt.asDefined().value)
          : const Undefined(),
      deletedMeta: body.deletedMeta.isDefined
          ? Defined(body.deletedMeta.asDefined().value)
          : const Undefined(),
      displayUsername: body.displayUsername.isDefined
          ? Defined(body.displayUsername.asDefined().value)
          : const Undefined(),
      email: body.email,
      emailVerified: body.emailVerified,
      fbmToken: body.fbmToken.isDefined
          ? Defined(body.fbmToken.asDefined().value)
          : const Undefined(),
      fieldAgentId: body.fieldAgentId.isDefined
          ? Defined(body.fieldAgentId.asDefined().value)
          : const Undefined(),
      firstName: body.firstName.isDefined
          ? Defined(body.firstName.asDefined().value)
          : const Undefined(),
      fullName: body.fullName.isDefined
          ? Defined(body.fullName.asDefined().value)
          : const Undefined(),
      image: body.image.isDefined
          ? Defined(body.image.asDefined().value)
          : const Undefined(),
      lastName: body.lastName.isDefined
          ? Defined(body.lastName.asDefined().value)
          : const Undefined(),
      memberId: body.memberId.isDefined
          ? Defined(body.memberId.asDefined().value)
          : const Undefined(),
      name: body.name,
      organizationId: body.organizationId.isDefined
          ? Defined(body.organizationId.asDefined().value)
          : const Undefined(),
      phoneNumber: body.phoneNumber.isDefined
          ? Defined(body.phoneNumber.asDefined().value)
          : const Undefined(),
      phoneNumberVerified: body.phoneNumberVerified.isDefined
          ? Defined(body.phoneNumberVerified.asDefined().value)
          : const Undefined(),
      profileImageBlurHash: body.profileImageBlurHash.isDefined
          ? Defined(body.profileImageBlurHash.asDefined().value)
          : const Undefined(),
      profileImageSize: body.profileImageSize.isDefined
          ? Defined(body.profileImageSize.asDefined().value)
          : const Undefined(),
      role: body.role.isDefined
          ? Defined(body.role.asDefined().value)
          : const Undefined(),
      shippingClientId: body.shippingClientId.isDefined
          ? Defined(body.shippingClientId.asDefined().value)
          : const Undefined(),
      status: body.status.isDefined
          ? Defined(body.status.asDefined().value)
          : const Undefined(),
      subRole: body.subRole.isDefined
          ? Defined(body.subRole.asDefined().value)
          : const Undefined(),
      teamId: body.teamId.isDefined
          ? Defined(body.teamId.asDefined().value)
          : const Undefined(),
      teamMemberId: body.teamMemberId.isDefined
          ? Defined(body.teamMemberId.asDefined().value)
          : const Undefined(),
      teamType: body.teamType.isDefined
          ? Defined(body.teamType.asDefined().value)
          : const Undefined(),
      twoFactorEnabled: body.twoFactorEnabled.isDefined
          ? Defined(body.twoFactorEnabled.asDefined().value)
          : const Undefined(),
      updateMeta: body.updateMeta.isDefined
          ? Defined(body.updateMeta.asDefined().value)
          : const Undefined(),
      updatedAt: body.updatedAt,
      userId: body.userId.isDefined
          ? Defined(body.userId.asDefined().value)
          : const Undefined(),
      username: body.username.isDefined
          ? Defined(body.username.asDefined().value)
          : const Undefined(),
    );
  }

  /// Convert to Convex typedef record
  dynamic toDoc() {
    return (
      $_creationTime: $_creationTime,
      $_id: $_id,
      appCountryId: appCountryId,
      appCountryIso: appCountryIso,
      appCountryName: appCountryName,
      banExpires: banExpires,
      banReason: banReason,
      banned: banned,
      createMeta: createMeta,
      createdAt: createdAt,
      currentLocation: currentLocation,
      dbId: dbId,
      deletedAt: deletedAt,
      deletedMeta: deletedMeta,
      displayUsername: displayUsername,
      email: email,
      emailVerified: emailVerified,
      fbmToken: fbmToken,
      fieldAgentId: fieldAgentId,
      firstName: firstName,
      fullName: fullName,
      image: image,
      lastName: lastName,
      memberId: memberId,
      name: name,
      organizationId: organizationId,
      phoneNumber: phoneNumber,
      phoneNumberVerified: phoneNumberVerified,
      profileImageBlurHash: profileImageBlurHash,
      profileImageSize: profileImageSize,
      role: role,
      shippingClientId: shippingClientId,
      status: status,
      subRole: subRole,
      teamId: teamId,
      teamMemberId: teamMemberId,
      teamType: teamType,
      twoFactorEnabled: twoFactorEnabled,
      updateMeta: updateMeta,
      updatedAt: updatedAt,
      userId: userId,
      username: username,
    );
  }

  AuthUser copyWith({
    double? $_creationTime,
    Optional<String>? $_id,
    Optional<String?>? appCountryId,
    Optional<String?>? appCountryIso,
    Optional<String?>? appCountryName,
    Optional<double?>? banExpires,
    Optional<String?>? banReason,
    Optional<bool?>? banned,
    Optional<String?>? createMeta,
    double? createdAt,
    Optional<String?>? currentLocation,
    Optional<double?>? dbId,
    Optional<double?>? deletedAt,
    Optional<String?>? deletedMeta,
    Optional<String?>? displayUsername,
    String? email,
    bool? emailVerified,
    Optional<String?>? fbmToken,
    Optional<String?>? fieldAgentId,
    Optional<String?>? firstName,
    Optional<String?>? fullName,
    Optional<String?>? image,
    Optional<String?>? lastName,
    Optional<String?>? memberId,
    String? name,
    Optional<String?>? organizationId,
    Optional<String?>? phoneNumber,
    Optional<bool?>? phoneNumberVerified,
    Optional<String?>? profileImageBlurHash,
    Optional<double?>? profileImageSize,
    Optional<String?>? role,
    Optional<String?>? shippingClientId,
    Optional<String?>? status,
    Optional<String?>? subRole,
    Optional<String?>? teamId,
    Optional<String?>? teamMemberId,
    Optional<String?>? teamType,
    Optional<bool?>? twoFactorEnabled,
    Optional<String?>? updateMeta,
    double? updatedAt,
    Optional<String?>? userId,
    Optional<String?>? username,
  }) {
    return AuthUser(
      $_creationTime: $_creationTime ?? this.$_creationTime,
      $_id: $_id ?? this.$_id,
      appCountryId: appCountryId ?? this.appCountryId,
      appCountryIso: appCountryIso ?? this.appCountryIso,
      appCountryName: appCountryName ?? this.appCountryName,
      banExpires: banExpires ?? this.banExpires,
      banReason: banReason ?? this.banReason,
      banned: banned ?? this.banned,
      createMeta: createMeta ?? this.createMeta,
      createdAt: createdAt ?? this.createdAt,
      currentLocation: currentLocation ?? this.currentLocation,
      dbId: dbId ?? this.dbId,
      deletedAt: deletedAt ?? this.deletedAt,
      deletedMeta: deletedMeta ?? this.deletedMeta,
      displayUsername: displayUsername ?? this.displayUsername,
      email: email ?? this.email,
      emailVerified: emailVerified ?? this.emailVerified,
      fbmToken: fbmToken ?? this.fbmToken,
      fieldAgentId: fieldAgentId ?? this.fieldAgentId,
      firstName: firstName ?? this.firstName,
      fullName: fullName ?? this.fullName,
      image: image ?? this.image,
      lastName: lastName ?? this.lastName,
      memberId: memberId ?? this.memberId,
      name: name ?? this.name,
      organizationId: organizationId ?? this.organizationId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      phoneNumberVerified: phoneNumberVerified ?? this.phoneNumberVerified,
      profileImageBlurHash: profileImageBlurHash ?? this.profileImageBlurHash,
      profileImageSize: profileImageSize ?? this.profileImageSize,
      role: role ?? this.role,
      shippingClientId: shippingClientId ?? this.shippingClientId,
      status: status ?? this.status,
      subRole: subRole ?? this.subRole,
      teamId: teamId ?? this.teamId,
      teamMemberId: teamMemberId ?? this.teamMemberId,
      teamType: teamType ?? this.teamType,
      twoFactorEnabled: twoFactorEnabled ?? this.twoFactorEnabled,
      updateMeta: updateMeta ?? this.updateMeta,
      updatedAt: updatedAt ?? this.updatedAt,
      userId: userId ?? this.userId,
      username: username ?? this.username,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AuthUser &&
        other.$_creationTime == $_creationTime &&
        other.$_id == $_id &&
        other.appCountryId == appCountryId &&
        other.appCountryIso == appCountryIso &&
        other.appCountryName == appCountryName &&
        other.banExpires == banExpires &&
        other.banReason == banReason &&
        other.banned == banned &&
        other.createMeta == createMeta &&
        other.createdAt == createdAt &&
        other.currentLocation == currentLocation &&
        other.dbId == dbId &&
        other.deletedAt == deletedAt &&
        other.deletedMeta == deletedMeta &&
        other.displayUsername == displayUsername &&
        other.email == email &&
        other.emailVerified == emailVerified &&
        other.fbmToken == fbmToken &&
        other.fieldAgentId == fieldAgentId &&
        other.firstName == firstName &&
        other.fullName == fullName &&
        other.image == image &&
        other.lastName == lastName &&
        other.memberId == memberId &&
        other.name == name &&
        other.organizationId == organizationId &&
        other.phoneNumber == phoneNumber &&
        other.phoneNumberVerified == phoneNumberVerified &&
        other.profileImageBlurHash == profileImageBlurHash &&
        other.profileImageSize == profileImageSize &&
        other.role == role &&
        other.shippingClientId == shippingClientId &&
        other.status == status &&
        other.subRole == subRole &&
        other.teamId == teamId &&
        other.teamMemberId == teamMemberId &&
        other.teamType == teamType &&
        other.twoFactorEnabled == twoFactorEnabled &&
        other.updateMeta == updateMeta &&
        other.updatedAt == updatedAt &&
        other.userId == userId &&
        other.username == username;
  }

  @override
  int get hashCode {
    return $_creationTime.hashCode ^
        $_id.hashCode ^
        appCountryId.hashCode ^
        appCountryIso.hashCode ^
        appCountryName.hashCode ^
        banExpires.hashCode ^
        banReason.hashCode ^
        banned.hashCode ^
        createMeta.hashCode ^
        createdAt.hashCode ^
        currentLocation.hashCode ^
        dbId.hashCode ^
        deletedAt.hashCode ^
        deletedMeta.hashCode ^
        displayUsername.hashCode ^
        email.hashCode ^
        emailVerified.hashCode ^
        fbmToken.hashCode ^
        fieldAgentId.hashCode ^
        firstName.hashCode ^
        fullName.hashCode ^
        image.hashCode ^
        lastName.hashCode ^
        memberId.hashCode ^
        name.hashCode ^
        organizationId.hashCode ^
        phoneNumber.hashCode ^
        phoneNumberVerified.hashCode ^
        profileImageBlurHash.hashCode ^
        profileImageSize.hashCode ^
        role.hashCode ^
        shippingClientId.hashCode ^
        status.hashCode ^
        subRole.hashCode ^
        teamId.hashCode ^
        teamMemberId.hashCode ^
        teamType.hashCode ^
        twoFactorEnabled.hashCode ^
        updateMeta.hashCode ^
        updatedAt.hashCode ^
        userId.hashCode ^
        username.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
