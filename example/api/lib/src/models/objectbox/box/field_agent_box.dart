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
  double? ayekooLeaderboardPosition;
  double? cashCountLeaderboardPosition;
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
  String? invitationStatus;
  String lastName;
  String? middleName;
  String phoneNumber;
  String? profileImage;
  String project;
  String referralCode;
  String status;
  String? teamId;
  double? totalAyekooAllocationsCount;
  double? totalAyekooCollectionsApprovedCount;
  double? totalAyekooCollectionsCount;
  double? totalAyekooCollectionsInvalidCount;
  double? totalAyekooCollectionsPendingCount;
  double? totalAyekooCollectionsRejectedCount;
  double? totalCashCountAllocationsCount;
  double? totalCashCountFieldSignUpsApprovedCount;
  double? totalCashCountFieldSignUpsCount;
  double? totalCashCountFieldSignUpsInvalidCount;
  double? totalCashCountFieldSignUpsPendingCount;
  double? totalCashCountFieldSignUpsRejectedCount;
  String? updateMeta;
  @Property(type: PropertyType.dateNano)
  int? updatedAt;
  String? userId;

  FieldAgentBox({
    this.id = 0,
    required this.creationTime,
    required this.dbId,
    this.ayekooLeaderboardPosition,
    this.cashCountLeaderboardPosition,
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
    this.invitationStatus,
    required this.lastName,
    this.middleName,
    required this.phoneNumber,
    this.profileImage,
    required this.project,
    required this.referralCode,
    required this.status,
    this.teamId,
    this.totalAyekooAllocationsCount,
    this.totalAyekooCollectionsApprovedCount,
    this.totalAyekooCollectionsCount,
    this.totalAyekooCollectionsInvalidCount,
    this.totalAyekooCollectionsPendingCount,
    this.totalAyekooCollectionsRejectedCount,
    this.totalCashCountAllocationsCount,
    this.totalCashCountFieldSignUpsApprovedCount,
    this.totalCashCountFieldSignUpsCount,
    this.totalCashCountFieldSignUpsInvalidCount,
    this.totalCashCountFieldSignUpsPendingCount,
    this.totalCashCountFieldSignUpsRejectedCount,
    this.updateMeta,
    this.updatedAt,
    this.userId,
  });

  factory FieldAgentBox.fromAPI(FieldAgent model) {
    return FieldAgentBox(
      id: 0,
      creationTime: model.$_creationTime.round(),
      dbId: model.$_id.value,
      ayekooLeaderboardPosition: model.ayekooLeaderboardPosition.isDefined
          ? model.ayekooLeaderboardPosition.asDefined().value
          : null,
      cashCountLeaderboardPosition: model.cashCountLeaderboardPosition.isDefined
          ? model.cashCountLeaderboardPosition.asDefined().value
          : null,
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
      creatorId: jsonEncode(
        model.creatorId.value is String
            ? model.creatorId.value
            : (model.creatorId.value as dynamic).value,
      ),
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
      gender: jsonEncode(
        model.gender.value is String
            ? model.gender.value
            : (model.gender.value as dynamic).value,
      ),
      invitationId: model.invitationId.isDefined
          ? model.invitationId.asDefined().value
          : null,
      invitationStatus: model.invitationStatus.isDefined
          ? model.invitationStatus.asDefined().value
          : null,
      lastName: model.lastName,
      middleName: model.middleName.isDefined
          ? model.middleName.asDefined().value
          : null,
      phoneNumber: model.phoneNumber,
      profileImage: model.profileImage.isDefined
          ? jsonEncode(model.profileImage.asDefined().value.toJson())
          : null,
      project: jsonEncode(
        model.project.value is String
            ? model.project.value
            : (model.project.value as dynamic).value,
      ),
      referralCode: model.referralCode,
      status: model.status,
      teamId: model.teamId.isDefined ? model.teamId.asDefined().value : null,
      totalAyekooAllocationsCount: model.totalAyekooAllocationsCount.isDefined
          ? model.totalAyekooAllocationsCount.asDefined().value
          : null,
      totalAyekooCollectionsApprovedCount:
          model.totalAyekooCollectionsApprovedCount.isDefined
          ? model.totalAyekooCollectionsApprovedCount.asDefined().value
          : null,
      totalAyekooCollectionsCount: model.totalAyekooCollectionsCount.isDefined
          ? model.totalAyekooCollectionsCount.asDefined().value
          : null,
      totalAyekooCollectionsInvalidCount:
          model.totalAyekooCollectionsInvalidCount.isDefined
          ? model.totalAyekooCollectionsInvalidCount.asDefined().value
          : null,
      totalAyekooCollectionsPendingCount:
          model.totalAyekooCollectionsPendingCount.isDefined
          ? model.totalAyekooCollectionsPendingCount.asDefined().value
          : null,
      totalAyekooCollectionsRejectedCount:
          model.totalAyekooCollectionsRejectedCount.isDefined
          ? model.totalAyekooCollectionsRejectedCount.asDefined().value
          : null,
      totalCashCountAllocationsCount:
          model.totalCashCountAllocationsCount.isDefined
          ? model.totalCashCountAllocationsCount.asDefined().value
          : null,
      totalCashCountFieldSignUpsApprovedCount:
          model.totalCashCountFieldSignUpsApprovedCount.isDefined
          ? model.totalCashCountFieldSignUpsApprovedCount.asDefined().value
          : null,
      totalCashCountFieldSignUpsCount:
          model.totalCashCountFieldSignUpsCount.isDefined
          ? model.totalCashCountFieldSignUpsCount.asDefined().value
          : null,
      totalCashCountFieldSignUpsInvalidCount:
          model.totalCashCountFieldSignUpsInvalidCount.isDefined
          ? model.totalCashCountFieldSignUpsInvalidCount.asDefined().value
          : null,
      totalCashCountFieldSignUpsPendingCount:
          model.totalCashCountFieldSignUpsPendingCount.isDefined
          ? model.totalCashCountFieldSignUpsPendingCount.asDefined().value
          : null,
      totalCashCountFieldSignUpsRejectedCount:
          model.totalCashCountFieldSignUpsRejectedCount.isDefined
          ? model.totalCashCountFieldSignUpsRejectedCount.asDefined().value
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
      ayekooLeaderboardPosition: ayekooLeaderboardPosition != null
          ? Defined(ayekooLeaderboardPosition!)
          : const Undefined(),
      cashCountLeaderboardPosition: cashCountLeaderboardPosition != null
          ? Defined(cashCountLeaderboardPosition!)
          : const Undefined(),
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
      invitationStatus: invitationStatus != null
          ? Defined(invitationStatus!)
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
      totalAyekooCollectionsApprovedCount:
          totalAyekooCollectionsApprovedCount != null
          ? Defined(totalAyekooCollectionsApprovedCount!)
          : const Undefined(),
      totalAyekooCollectionsCount: totalAyekooCollectionsCount != null
          ? Defined(totalAyekooCollectionsCount!)
          : const Undefined(),
      totalAyekooCollectionsInvalidCount:
          totalAyekooCollectionsInvalidCount != null
          ? Defined(totalAyekooCollectionsInvalidCount!)
          : const Undefined(),
      totalAyekooCollectionsPendingCount:
          totalAyekooCollectionsPendingCount != null
          ? Defined(totalAyekooCollectionsPendingCount!)
          : const Undefined(),
      totalAyekooCollectionsRejectedCount:
          totalAyekooCollectionsRejectedCount != null
          ? Defined(totalAyekooCollectionsRejectedCount!)
          : const Undefined(),
      totalCashCountAllocationsCount: totalCashCountAllocationsCount != null
          ? Defined(totalCashCountAllocationsCount!)
          : const Undefined(),
      totalCashCountFieldSignUpsApprovedCount:
          totalCashCountFieldSignUpsApprovedCount != null
          ? Defined(totalCashCountFieldSignUpsApprovedCount!)
          : const Undefined(),
      totalCashCountFieldSignUpsCount: totalCashCountFieldSignUpsCount != null
          ? Defined(totalCashCountFieldSignUpsCount!)
          : const Undefined(),
      totalCashCountFieldSignUpsInvalidCount:
          totalCashCountFieldSignUpsInvalidCount != null
          ? Defined(totalCashCountFieldSignUpsInvalidCount!)
          : const Undefined(),
      totalCashCountFieldSignUpsPendingCount:
          totalCashCountFieldSignUpsPendingCount != null
          ? Defined(totalCashCountFieldSignUpsPendingCount!)
          : const Undefined(),
      totalCashCountFieldSignUpsRejectedCount:
          totalCashCountFieldSignUpsRejectedCount != null
          ? Defined(totalCashCountFieldSignUpsRejectedCount!)
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
