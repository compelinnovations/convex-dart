import 'package:objectbox/objectbox.dart';
import 'dart:convert';
import 'package:convex_dart/convex_dart.dart';
import '../../../schema.dart';
import '../../json/index.dart';

@Entity()
class FieldAgentBox {
  @Id()
  int id = 0;

  @Property(type: PropertyType.dateNano)
  int creationTime;
  String dbId;
  String? countryCityId;
  String? countryCityName;
  String? countryCode;
  String countryISO;
  String countryName;
  String? countryStateId;
  String? countryStateName;
  String? createMeta;
  @Property(type: PropertyType.dateNano)
  int createdAt;
  String creatorId;
  double? dateBirth;
  @Property(type: PropertyType.dateNano)
  int? deletedAt;
  String? deletedMeta;
  String email;
  String firstName;
  String? fullName;
  String gender;
  String? invitationId;
  String lastName;
  String? middleName;
  String phoneNumber;
  String? profileImage;
  String project;
  String referralCode;
  String status;
  String? teamId;
  double? totalAyekooAllocationsCount;
  double? totalAyekooCollectionsCount;
  double? totalCashCountAllocationsCount;
  double? totalCashCountFieldSignUpsCount;
  String? updateMeta;
  @Property(type: PropertyType.dateNano)
  int? updatedAt;
  String? userId;

  FieldAgentBox({
    this.id = 0,
    required this.creationTime,
    required this.dbId,
    this.countryCityId,
    this.countryCityName,
    this.countryCode,
    required this.countryISO,
    required this.countryName,
    this.countryStateId,
    this.countryStateName,
    this.createMeta,
    required this.createdAt,
    required this.creatorId,
    this.dateBirth,
    this.deletedAt,
    this.deletedMeta,
    required this.email,
    required this.firstName,
    this.fullName,
    required this.gender,
    this.invitationId,
    required this.lastName,
    this.middleName,
    required this.phoneNumber,
    this.profileImage,
    required this.project,
    required this.referralCode,
    required this.status,
    this.teamId,
    this.totalAyekooAllocationsCount,
    this.totalAyekooCollectionsCount,
    this.totalCashCountAllocationsCount,
    this.totalCashCountFieldSignUpsCount,
    this.updateMeta,
    this.updatedAt,
    this.userId,
  });

  factory FieldAgentBox.fromAPI(FieldAgent model) {
    return FieldAgentBox(
      id: 0,
      creationTime: model.$_creationTime.round(),
      dbId: model.$_id.value,
      countryCityId: model.countryCityId.isDefined
          ? model.countryCityId.asDefined().value.value
          : null,
      countryCityName: model.countryCityName.isDefined
          ? model.countryCityName.asDefined().value
          : null,
      countryCode: model.countryCode.isDefined
          ? model.countryCode.asDefined().value
          : null,
      countryISO: model.countryISO,
      countryName: model.countryName,
      countryStateId: model.countryStateId.isDefined
          ? model.countryStateId.asDefined().value.value
          : null,
      countryStateName: model.countryStateName.isDefined
          ? model.countryStateName.asDefined().value
          : null,
      createMeta: model.createMeta.isDefined
          ? jsonEncode(model.createMeta.asDefined().value.toJson())
          : null,
      createdAt: model.createdAt.round(),
      creatorId: jsonEncode(model.creatorId),
      dateBirth: model.dateBirth.isDefined
          ? model.dateBirth.asDefined().value
          : null,
      deletedAt: model.deletedAt.isDefined
          ? model.deletedAt.asDefined().value.round()
          : null,
      deletedMeta: model.deletedMeta.isDefined
          ? jsonEncode(model.deletedMeta.asDefined().value.toJson())
          : null,
      email: model.email,
      firstName: model.firstName,
      fullName: model.fullName.isDefined
          ? model.fullName.asDefined().value
          : null,
      gender: jsonEncode(model.gender),
      invitationId: model.invitationId.isDefined
          ? model.invitationId.asDefined().value
          : null,
      lastName: model.lastName,
      middleName: model.middleName.isDefined
          ? model.middleName.asDefined().value
          : null,
      phoneNumber: model.phoneNumber,
      profileImage: model.profileImage.isDefined
          ? jsonEncode(model.profileImage.asDefined().value.toJson())
          : null,
      project: jsonEncode(model.project),
      referralCode: model.referralCode,
      status: model.status,
      teamId: model.teamId.isDefined ? model.teamId.asDefined().value : null,
      totalAyekooAllocationsCount: model.totalAyekooAllocationsCount.isDefined
          ? model.totalAyekooAllocationsCount.asDefined().value
          : null,
      totalAyekooCollectionsCount: model.totalAyekooCollectionsCount.isDefined
          ? model.totalAyekooCollectionsCount.asDefined().value
          : null,
      totalCashCountAllocationsCount:
          model.totalCashCountAllocationsCount.isDefined
          ? model.totalCashCountAllocationsCount.asDefined().value
          : null,
      totalCashCountFieldSignUpsCount:
          model.totalCashCountFieldSignUpsCount.isDefined
          ? model.totalCashCountFieldSignUpsCount.asDefined().value
          : null,
      updateMeta: model.updateMeta.isDefined
          ? jsonEncode(model.updateMeta.asDefined().value.toJson())
          : null,
      updatedAt: model.updatedAt.isDefined
          ? model.updatedAt.asDefined().value.round()
          : null,
      userId: model.userId.isDefined ? model.userId.asDefined().value : null,
    );
  }

  FieldAgent toAPI() {
    return FieldAgent(
      $_creationTime: creationTime.toDouble(),
      $_id: FieldAgentsId(dbId),
      countryCityId: countryCityId != null
          ? Defined(CountryCitiesId(countryCityId!))
          : const Undefined(),
      countryCityName: countryCityName != null
          ? Defined(countryCityName!)
          : const Undefined(),
      countryCode: countryCode != null
          ? Defined(countryCode!)
          : const Undefined(),
      countryISO: countryISO,
      countryName: countryName,
      countryStateId: countryStateId != null
          ? Defined(CountryStatesId(countryStateId!))
          : const Undefined(),
      countryStateName: countryStateName != null
          ? Defined(countryStateName!)
          : const Undefined(),
      createMeta: createMeta != null
          ? Defined(
              AuditAction.fromJson(
                jsonDecode(createMeta!) as Map<String, dynamic>,
              ),
            )
          : const Undefined(),
      createdAt: createdAt.toDouble(),
      creatorId: jsonDecode(creatorId),
      dateBirth: dateBirth != null ? Defined(dateBirth!) : const Undefined(),
      deletedAt: deletedAt != null
          ? Defined(deletedAt!.toDouble())
          : const Undefined(),
      deletedMeta: deletedMeta != null
          ? Defined(
              AuditAction.fromJson(
                jsonDecode(deletedMeta!) as Map<String, dynamic>,
              ),
            )
          : const Undefined(),
      email: email,
      firstName: firstName,
      fullName: fullName != null ? Defined(fullName!) : const Undefined(),
      gender: jsonDecode(gender),
      invitationId: invitationId != null
          ? Defined(invitationId!)
          : const Undefined(),
      lastName: lastName,
      middleName: middleName != null ? Defined(middleName!) : const Undefined(),
      phoneNumber: phoneNumber,
      profileImage: profileImage != null
          ? Defined(
              MediaData.fromJson(
                jsonDecode(profileImage!) as Map<String, dynamic>,
              ),
            )
          : const Undefined(),
      project: jsonDecode(project),
      referralCode: referralCode,
      status: status,
      teamId: teamId != null ? Defined(teamId!) : const Undefined(),
      totalAyekooAllocationsCount: totalAyekooAllocationsCount != null
          ? Defined(totalAyekooAllocationsCount!)
          : const Undefined(),
      totalAyekooCollectionsCount: totalAyekooCollectionsCount != null
          ? Defined(totalAyekooCollectionsCount!)
          : const Undefined(),
      totalCashCountAllocationsCount: totalCashCountAllocationsCount != null
          ? Defined(totalCashCountAllocationsCount!)
          : const Undefined(),
      totalCashCountFieldSignUpsCount: totalCashCountFieldSignUpsCount != null
          ? Defined(totalCashCountFieldSignUpsCount!)
          : const Undefined(),
      updateMeta: updateMeta != null
          ? Defined(
              AuditAction.fromJson(
                jsonDecode(updateMeta!) as Map<String, dynamic>,
              ),
            )
          : const Undefined(),
      updatedAt: updatedAt != null
          ? Defined(updatedAt!.toDouble())
          : const Undefined(),
      userId: userId != null ? Defined(userId!) : const Undefined(),
    );
  }

  /// Convert directly from Convex typedef record to ObjectBox
  /// Bypasses the JSON model intermediate step for better performance
  factory FieldAgentBox.fromDoc(dynamic doc) {
    return FieldAgentBox.fromAPI(FieldAgent.fromDoc(doc));
  }

  /// Convert directly from ObjectBox to Convex typedef record
  /// Returns a record that matches the Convex typedef structure
  dynamic toDoc() {
    return toAPI().toDoc();
  }
}
