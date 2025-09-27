import 'package:objectbox/objectbox.dart';
import 'dart:convert';
import 'package:convex_dart/convex_dart.dart';
import '../../../schema.dart';
import '../../json/index.dart';

@Entity()
class AppUserBox {
  @Id()
  int id = 0;

  String idRef;
  String? appCountryId;
  String? appCountryIso;
  String? appCountryName;
  String? auditAddedById;
  String? auditAddedByName;
  String? auditDeletedById;
  String? auditDeletedByName;
  String? auditUpdatedById;
  String? auditUpdatedByName;
  String? contactEmail;
  String? contactPhone;
  @Property(type: PropertyType.dateNano)
  int? createdAt;
  String? currentLocation;
  double? dbId;
  @Property(type: PropertyType.dateNano)
  int? deletedAt;
  String? deviceIds;
  String email;
  bool emailVerified;
  String? fbmToken;
  String firstName;
  String fullName;
  String? hash;
  String lastName;
  String? organizationBranchAccessIds;
  String? organizationBranchId;
  String? organizationId;
  String? organizationType;
  String? phone;
  String? profileImage;
  String? profileImageBlurHash;
  double? profileImageSize;
  String role;
  String? salt;
  String? statId;
  String status;
  String subRole;
  String? teamBranchAccessIds;
  String? teamBranchId;
  String? teamId;
  String? teamType;
  @Property(type: PropertyType.dateNano)
  int? updatedAt;
  String? username;

  AppUserBox({
    this.id = 0,
    required this.idRef,
    this.appCountryId,
    this.appCountryIso,
    this.appCountryName,
    this.auditAddedById,
    this.auditAddedByName,
    this.auditDeletedById,
    this.auditDeletedByName,
    this.auditUpdatedById,
    this.auditUpdatedByName,
    this.contactEmail,
    this.contactPhone,
    this.createdAt,
    this.currentLocation,
    this.dbId,
    this.deletedAt,
    this.deviceIds,
    required this.email,
    required this.emailVerified,
    this.fbmToken,
    required this.firstName,
    required this.fullName,
    this.hash,
    required this.lastName,
    this.organizationBranchAccessIds,
    this.organizationBranchId,
    this.organizationId,
    this.organizationType,
    this.phone,
    this.profileImage,
    this.profileImageBlurHash,
    this.profileImageSize,
    required this.role,
    this.salt,
    this.statId,
    required this.status,
    required this.subRole,
    this.teamBranchAccessIds,
    this.teamBranchId,
    this.teamId,
    this.teamType,
    this.updatedAt,
    this.username,
  });

  factory AppUserBox.fromAPI(AppUser model) {
    return AppUserBox(
      id: 0,
      idRef: model.$_id.value,
      appCountryId: model.appCountryId.isDefined
          ? model.appCountryId.asDefined().value.value
          : null,
      appCountryIso: model.appCountryIso.isDefined
          ? model.appCountryIso.asDefined().value
          : null,
      appCountryName: model.appCountryName.isDefined
          ? model.appCountryName.asDefined().value
          : null,
      auditAddedById: model.auditAddedById.isDefined
          ? model.auditAddedById.asDefined().value.value
          : null,
      auditAddedByName: model.auditAddedByName.isDefined
          ? model.auditAddedByName.asDefined().value
          : null,
      auditDeletedById: model.auditDeletedById.isDefined
          ? model.auditDeletedById.asDefined().value.value
          : null,
      auditDeletedByName: model.auditDeletedByName.isDefined
          ? model.auditDeletedByName.asDefined().value
          : null,
      auditUpdatedById: model.auditUpdatedById.isDefined
          ? model.auditUpdatedById.asDefined().value.value
          : null,
      auditUpdatedByName: model.auditUpdatedByName.isDefined
          ? model.auditUpdatedByName.asDefined().value
          : null,
      contactEmail: model.contactEmail.isDefined
          ? model.contactEmail.asDefined().value
          : null,
      contactPhone: model.contactPhone.isDefined
          ? model.contactPhone.asDefined().value
          : null,
      createdAt: model.createdAt.isDefined
          ? model.createdAt.asDefined().value.round()
          : null,
      currentLocation: model.currentLocation.isDefined
          ? jsonEncode(model.currentLocation.asDefined().value.toJson())
          : null,
      dbId: model.dbId.isDefined ? model.dbId.asDefined().value : null,
      deletedAt: model.deletedAt.isDefined
          ? model.deletedAt.asDefined().value.round()
          : null,
      deviceIds: model.deviceIds.isDefined
          ? jsonEncode(
              model.deviceIds.asDefined().value.map((e) => e.value).toList(),
            )
          : null,
      email: model.email,
      emailVerified: model.emailVerified,
      fbmToken: model.fbmToken.isDefined
          ? model.fbmToken.asDefined().value
          : null,
      firstName: model.firstName,
      fullName: model.fullName,
      hash: model.hash.isDefined ? model.hash.asDefined().value : null,
      lastName: model.lastName,
      organizationBranchAccessIds: model.organizationBranchAccessIds.isDefined
          ? jsonEncode(
              model.organizationBranchAccessIds
                  .asDefined()
                  .value
                  .map((e) => e.value)
                  .toList(),
            )
          : null,
      organizationBranchId: model.organizationBranchId.isDefined
          ? model.organizationBranchId.asDefined().value.value
          : null,
      organizationId: model.organizationId.isDefined
          ? model.organizationId.asDefined().value.value
          : null,
      organizationType: model.organizationType.isDefined
          ? model.organizationType.asDefined().value
          : null,
      phone: model.phone.isDefined ? model.phone.asDefined().value : null,
      profileImage: model.profileImage.isDefined
          ? model.profileImage.asDefined().value
          : null,
      profileImageBlurHash: model.profileImageBlurHash.isDefined
          ? model.profileImageBlurHash.asDefined().value
          : null,
      profileImageSize: model.profileImageSize.isDefined
          ? model.profileImageSize.asDefined().value
          : null,
      role: model.role,
      salt: model.salt.isDefined ? model.salt.asDefined().value : null,
      statId: model.statId.isDefined
          ? model.statId.asDefined().value.value
          : null,
      status: model.status,
      subRole: model.subRole,
      teamBranchAccessIds: model.teamBranchAccessIds.isDefined
          ? jsonEncode(
              model.teamBranchAccessIds
                  .asDefined()
                  .value
                  .map((e) => e.value)
                  .toList(),
            )
          : null,
      teamBranchId: model.teamBranchId.isDefined
          ? model.teamBranchId.asDefined().value.value
          : null,
      teamId: model.teamId.isDefined
          ? model.teamId.asDefined().value.value
          : null,
      teamType: model.teamType.isDefined
          ? model.teamType.asDefined().value
          : null,
      updatedAt: model.updatedAt.isDefined
          ? model.updatedAt.asDefined().value.round()
          : null,
      username: model.username.isDefined
          ? model.username.asDefined().value
          : null,
    );
  }

  AppUser toAPI() {
    return AppUser(
      $_id: UsersId(idRef),
      appCountryId: appCountryId != null
          ? Defined(AppCountriesId(appCountryId!))
          : const Undefined(),
      appCountryIso: appCountryIso != null
          ? Defined(appCountryIso!)
          : const Undefined(),
      appCountryName: appCountryName != null
          ? Defined(appCountryName!)
          : const Undefined(),
      auditAddedById: auditAddedById != null
          ? Defined(UsersId(auditAddedById!))
          : const Undefined(),
      auditAddedByName: auditAddedByName != null
          ? Defined(auditAddedByName!)
          : const Undefined(),
      auditDeletedById: auditDeletedById != null
          ? Defined(UsersId(auditDeletedById!))
          : const Undefined(),
      auditDeletedByName: auditDeletedByName != null
          ? Defined(auditDeletedByName!)
          : const Undefined(),
      auditUpdatedById: auditUpdatedById != null
          ? Defined(UsersId(auditUpdatedById!))
          : const Undefined(),
      auditUpdatedByName: auditUpdatedByName != null
          ? Defined(auditUpdatedByName!)
          : const Undefined(),
      contactEmail: contactEmail != null
          ? Defined(contactEmail!)
          : const Undefined(),
      contactPhone: contactPhone != null
          ? Defined(contactPhone!)
          : const Undefined(),
      createdAt: createdAt != null
          ? Defined(createdAt!.toDouble())
          : const Undefined(),
      currentLocation: currentLocation != null
          ? Defined(
              MapLocation.fromJson(
                jsonDecode(currentLocation!) as Map<String, dynamic>,
              ),
            )
          : const Undefined(),
      dbId: dbId != null ? Defined(dbId!) : const Undefined(),
      deletedAt: deletedAt != null
          ? Defined(deletedAt!.toDouble())
          : const Undefined(),
      deviceIds: deviceIds != null
          ? Defined(
              (jsonDecode(deviceIds!) as List<dynamic>)
                  .map((e) => UserDevicesId(e as String))
                  .toList()
                  .toIList(),
            )
          : const Undefined(),
      email: email,
      emailVerified: emailVerified,
      fbmToken: fbmToken != null ? Defined(fbmToken!) : const Undefined(),
      firstName: firstName,
      fullName: fullName,
      hash: hash != null ? Defined(hash!) : const Undefined(),
      lastName: lastName,
      organizationBranchAccessIds: organizationBranchAccessIds != null
          ? Defined(
              (jsonDecode(organizationBranchAccessIds!) as List<dynamic>)
                  .map((e) => OrganizationBranchesId(e as String))
                  .toList()
                  .toIList(),
            )
          : const Undefined(),
      organizationBranchId: organizationBranchId != null
          ? Defined(OrganizationBranchesId(organizationBranchId!))
          : const Undefined(),
      organizationId: organizationId != null
          ? Defined(OrganizationId(organizationId!))
          : const Undefined(),
      organizationType: organizationType != null
          ? Defined(organizationType!)
          : const Undefined(),
      phone: phone != null ? Defined(phone!) : const Undefined(),
      profileImage: profileImage != null
          ? Defined(profileImage!)
          : const Undefined(),
      profileImageBlurHash: profileImageBlurHash != null
          ? Defined(profileImageBlurHash!)
          : const Undefined(),
      profileImageSize: profileImageSize != null
          ? Defined(profileImageSize!)
          : const Undefined(),
      role: role,
      salt: salt != null ? Defined(salt!) : const Undefined(),
      statId: statId != null
          ? Defined(FieldAgentStatsId(statId!))
          : const Undefined(),
      status: status,
      subRole: subRole,
      teamBranchAccessIds: teamBranchAccessIds != null
          ? Defined(
              (jsonDecode(teamBranchAccessIds!) as List<dynamic>)
                  .map((e) => TeamBranchesId(e as String))
                  .toList()
                  .toIList(),
            )
          : const Undefined(),
      teamBranchId: teamBranchId != null
          ? Defined(TeamBranchesId(teamBranchId!))
          : const Undefined(),
      teamId: teamId != null ? Defined(TeamId(teamId!)) : const Undefined(),
      teamType: teamType != null ? Defined(teamType!) : const Undefined(),
      updatedAt: updatedAt != null
          ? Defined(updatedAt!.toDouble())
          : const Undefined(),
      username: username != null ? Defined(username!) : const Undefined(),
    );
  }
}
