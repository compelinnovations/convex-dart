import 'package:objectbox/objectbox.dart';
import 'package:convex_dart/convex_dart.dart';
import '../../json/index.dart';

@Entity()
class AuthUserBox {
  @Id()
  int id = 0;

  @Property(type: PropertyType.dateNano)
  int creationTime;
  String? idRef;
  String? appCountryId;
  String? appCountryIso;
  String? appCountryName;
  @Property(type: PropertyType.dateNano)
  int? banExpires;
  String? banReason;
  bool? banned;
  @Property(type: PropertyType.dateNano)
  int createdAt;
  double? dbId;
  String? displayUsername;
  String email;
  bool emailVerified;
  String? fbmToken;
  String? fieldAgentId;
  String? firstName;
  String? fullName;
  String? image;
  String? lastName;
  String? memberId;
  String name;
  String? organizationId;
  String? phoneNumber;
  bool? phoneNumberVerified;
  String? profileImageBlurHash;
  double? profileImageSize;
  String? role;
  String? shippingClientId;
  String? status;
  String? subRole;
  String? teamId;
  String? teamMemberId;
  String? teamType;
  bool? twoFactorEnabled;
  @Property(type: PropertyType.dateNano)
  int updatedAt;
  String? userId;
  String? username;

  AuthUserBox({
    this.id = 0,
    required this.creationTime,
    this.idRef,
    this.appCountryId,
    this.appCountryIso,
    this.appCountryName,
    this.banExpires,
    this.banReason,
    this.banned,
    required this.createdAt,
    this.dbId,
    this.displayUsername,
    required this.email,
    required this.emailVerified,
    this.fbmToken,
    this.fieldAgentId,
    this.firstName,
    this.fullName,
    this.image,
    this.lastName,
    this.memberId,
    required this.name,
    this.organizationId,
    this.phoneNumber,
    this.phoneNumberVerified,
    this.profileImageBlurHash,
    this.profileImageSize,
    this.role,
    this.shippingClientId,
    this.status,
    this.subRole,
    this.teamId,
    this.teamMemberId,
    this.teamType,
    this.twoFactorEnabled,
    required this.updatedAt,
    this.userId,
    this.username,
  });

  factory AuthUserBox.fromAPI(AuthUser model) {
    return AuthUserBox(
      id: 0,
      creationTime: model.$_creationTime.round(),
      idRef: model.$_id.value,
      appCountryId: model.appCountryId.isDefined
          ? model.appCountryId.asDefined().value
          : null,
      appCountryIso: model.appCountryIso.isDefined
          ? model.appCountryIso.asDefined().value
          : null,
      appCountryName: model.appCountryName.isDefined
          ? model.appCountryName.asDefined().value
          : null,
      banExpires: model.banExpires.isDefined
          ? model.banExpires.asDefined().value?.round()
          : null,
      banReason: model.banReason.isDefined
          ? model.banReason.asDefined().value
          : null,
      banned: model.banned.isDefined ? model.banned.asDefined().value : null,
      createdAt: model.createdAt.round(),
      dbId: model.dbId.isDefined ? model.dbId.asDefined().value : null,
      displayUsername: model.displayUsername.isDefined
          ? model.displayUsername.asDefined().value
          : null,
      email: model.email,
      emailVerified: model.emailVerified,
      fbmToken: model.fbmToken.isDefined
          ? model.fbmToken.asDefined().value
          : null,
      fieldAgentId: model.fieldAgentId.isDefined
          ? model.fieldAgentId.asDefined().value
          : null,
      firstName: model.firstName.isDefined
          ? model.firstName.asDefined().value
          : null,
      fullName: model.fullName.isDefined
          ? model.fullName.asDefined().value
          : null,
      image: model.image.isDefined ? model.image.asDefined().value : null,
      lastName: model.lastName.isDefined
          ? model.lastName.asDefined().value
          : null,
      memberId: model.memberId.isDefined
          ? model.memberId.asDefined().value
          : null,
      name: model.name,
      organizationId: model.organizationId.isDefined
          ? model.organizationId.asDefined().value
          : null,
      phoneNumber: model.phoneNumber.isDefined
          ? model.phoneNumber.asDefined().value
          : null,
      phoneNumberVerified: model.phoneNumberVerified.isDefined
          ? model.phoneNumberVerified.asDefined().value
          : null,
      profileImageBlurHash: model.profileImageBlurHash.isDefined
          ? model.profileImageBlurHash.asDefined().value
          : null,
      profileImageSize: model.profileImageSize.isDefined
          ? model.profileImageSize.asDefined().value
          : null,
      role: model.role.isDefined ? model.role.asDefined().value : null,
      shippingClientId: model.shippingClientId.isDefined
          ? model.shippingClientId.asDefined().value
          : null,
      status: model.status.isDefined ? model.status.asDefined().value : null,
      subRole: model.subRole.isDefined ? model.subRole.asDefined().value : null,
      teamId: model.teamId.isDefined ? model.teamId.asDefined().value : null,
      teamMemberId: model.teamMemberId.isDefined
          ? model.teamMemberId.asDefined().value
          : null,
      teamType: model.teamType.isDefined
          ? model.teamType.asDefined().value
          : null,
      twoFactorEnabled: model.twoFactorEnabled.isDefined
          ? model.twoFactorEnabled.asDefined().value
          : null,
      updatedAt: model.updatedAt.round(),
      userId: model.userId.isDefined ? model.userId.asDefined().value : null,
      username: model.username.isDefined
          ? model.username.asDefined().value
          : null,
    );
  }

  AuthUser toAPI() {
    return AuthUser(
      $_creationTime: creationTime.toDouble(),
      $_id: idRef != null ? Defined(idRef!) : const Undefined(),
      appCountryId: appCountryId != null
          ? Defined(appCountryId!)
          : const Undefined(),
      appCountryIso: appCountryIso != null
          ? Defined(appCountryIso!)
          : const Undefined(),
      appCountryName: appCountryName != null
          ? Defined(appCountryName!)
          : const Undefined(),
      banExpires: banExpires != null
          ? Defined(banExpires!.toDouble())
          : const Undefined(),
      banReason: banReason != null ? Defined(banReason!) : const Undefined(),
      banned: banned != null ? Defined(banned!) : const Undefined(),
      createdAt: createdAt.toDouble(),
      dbId: dbId != null ? Defined(dbId!) : const Undefined(),
      displayUsername: displayUsername != null
          ? Defined(displayUsername!)
          : const Undefined(),
      email: email,
      emailVerified: emailVerified,
      fbmToken: fbmToken != null ? Defined(fbmToken!) : const Undefined(),
      fieldAgentId: fieldAgentId != null
          ? Defined(fieldAgentId!)
          : const Undefined(),
      firstName: firstName != null ? Defined(firstName!) : const Undefined(),
      fullName: fullName != null ? Defined(fullName!) : const Undefined(),
      image: image != null ? Defined(image!) : const Undefined(),
      lastName: lastName != null ? Defined(lastName!) : const Undefined(),
      memberId: memberId != null ? Defined(memberId!) : const Undefined(),
      name: name,
      organizationId: organizationId != null
          ? Defined(organizationId!)
          : const Undefined(),
      phoneNumber: phoneNumber != null
          ? Defined(phoneNumber!)
          : const Undefined(),
      phoneNumberVerified: phoneNumberVerified != null
          ? Defined(phoneNumberVerified!)
          : const Undefined(),
      profileImageBlurHash: profileImageBlurHash != null
          ? Defined(profileImageBlurHash!)
          : const Undefined(),
      profileImageSize: profileImageSize != null
          ? Defined(profileImageSize!)
          : const Undefined(),
      role: role != null ? Defined(role!) : const Undefined(),
      shippingClientId: shippingClientId != null
          ? Defined(shippingClientId!)
          : const Undefined(),
      status: status != null ? Defined(status!) : const Undefined(),
      subRole: subRole != null ? Defined(subRole!) : const Undefined(),
      teamId: teamId != null ? Defined(teamId!) : const Undefined(),
      teamMemberId: teamMemberId != null
          ? Defined(teamMemberId!)
          : const Undefined(),
      teamType: teamType != null ? Defined(teamType!) : const Undefined(),
      twoFactorEnabled: twoFactorEnabled != null
          ? Defined(twoFactorEnabled!)
          : const Undefined(),
      updatedAt: updatedAt.toDouble(),
      userId: userId != null ? Defined(userId!) : const Undefined(),
      username: username != null ? Defined(username!) : const Undefined(),
    );
  }

  /// Convert directly from Convex typedef record to ObjectBox
  /// Bypasses the JSON model intermediate step for better performance
  factory AuthUserBox.fromDoc(dynamic doc) {
    return AuthUserBox.fromAPI(AuthUser.fromDoc(doc));
  }

  /// Convert directly from ObjectBox to Convex typedef record
  /// Returns a record that matches the Convex typedef structure
  dynamic toDoc() {
    return toAPI().toDoc();
  }
}
