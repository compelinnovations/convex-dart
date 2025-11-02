// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "audit_action.dart";
import "media_data.dart";
import "../../functions/fieldAgentAuth/getMyProfile.dart" show FieldAgentDoc;

class FieldAgent {
  final double $_creationTime;
  final FieldAgentsId $_id;
  final Optional<double> ayekooLeaderboardPosition;
  final Optional<double> cashCountLeaderboardPosition;
  final Optional<CountryCitiesId> countryCityId;
  final Optional<String> countryCityName;
  final Optional<String> countryCode;
  final String countryISO;
  final String countryName;
  final Optional<CountryStatesId> countryStateId;
  final Optional<String> countryStateName;
  final Optional<AuditAction> createMeta;
  final double createdAt;
  final Union3<FieldAgentsId, ShippingClientsId, String> creatorId;
  final Optional<double> dateBirth;
  final Optional<double> deletedAt;
  final Optional<AuditAction> deletedMeta;
  final String email;
  final String firstName;
  final Optional<String> fullName;
  final Union2<$MaleLiteral, $FemaleLiteral> gender;
  final Optional<String> invitationId;
  final Optional<String> invitationStatus;
  final String lastName;
  final Optional<String> middleName;
  final String phoneNumber;
  final Optional<MediaData> profileImage;
  final Union2<$CashCountLiteral, $AyekooLiteral> project;
  final String referralCode;
  final String status;
  final Optional<String> teamId;
  final Optional<double> totalAyekooAllocationsCount;
  final Optional<double> totalAyekooCollectionsApprovedCount;
  final Optional<double> totalAyekooCollectionsCount;
  final Optional<double> totalAyekooCollectionsInvalidCount;
  final Optional<double> totalAyekooCollectionsPendingCount;
  final Optional<double> totalAyekooCollectionsRejectedCount;
  final Optional<double> totalCashCountAllocationsCount;
  final Optional<double> totalCashCountFieldSignUpsApprovedCount;
  final Optional<double> totalCashCountFieldSignUpsCount;
  final Optional<double> totalCashCountFieldSignUpsInvalidCount;
  final Optional<double> totalCashCountFieldSignUpsPendingCount;
  final Optional<double> totalCashCountFieldSignUpsRejectedCount;
  final Optional<AuditAction> updateMeta;
  final Optional<double> updatedAt;
  final Optional<String> userId;

  const FieldAgent({
    required this.$_creationTime,
    required this.$_id,
    this.ayekooLeaderboardPosition = const Undefined(),
    this.cashCountLeaderboardPosition = const Undefined(),
    this.countryCityId = const Undefined(),
    this.countryCityName = const Undefined(),
    this.countryCode = const Undefined(),
    required this.countryISO,
    required this.countryName,
    this.countryStateId = const Undefined(),
    this.countryStateName = const Undefined(),
    this.createMeta = const Undefined(),
    required this.createdAt,
    required this.creatorId,
    this.dateBirth = const Undefined(),
    this.deletedAt = const Undefined(),
    this.deletedMeta = const Undefined(),
    required this.email,
    required this.firstName,
    this.fullName = const Undefined(),
    required this.gender,
    this.invitationId = const Undefined(),
    this.invitationStatus = const Undefined(),
    required this.lastName,
    this.middleName = const Undefined(),
    required this.phoneNumber,
    this.profileImage = const Undefined(),
    required this.project,
    required this.referralCode,
    required this.status,
    this.teamId = const Undefined(),
    this.totalAyekooAllocationsCount = const Undefined(),
    this.totalAyekooCollectionsApprovedCount = const Undefined(),
    this.totalAyekooCollectionsCount = const Undefined(),
    this.totalAyekooCollectionsInvalidCount = const Undefined(),
    this.totalAyekooCollectionsPendingCount = const Undefined(),
    this.totalAyekooCollectionsRejectedCount = const Undefined(),
    this.totalCashCountAllocationsCount = const Undefined(),
    this.totalCashCountFieldSignUpsApprovedCount = const Undefined(),
    this.totalCashCountFieldSignUpsCount = const Undefined(),
    this.totalCashCountFieldSignUpsInvalidCount = const Undefined(),
    this.totalCashCountFieldSignUpsPendingCount = const Undefined(),
    this.totalCashCountFieldSignUpsRejectedCount = const Undefined(),
    this.updateMeta = const Undefined(),
    this.updatedAt = const Undefined(),
    this.userId = const Undefined(),
  });

  factory FieldAgent.empty() {
    return FieldAgent(
      $_creationTime: 0.0,
      $_id: FieldAgentsId(''),
      countryISO: '',
      countryName: '',
      createdAt: 0.0,
      creatorId: Union3(FieldAgentsId('')),
      email: '',
      firstName: '',
      gender: Union2(const $MaleLiteral()),
      lastName: '',
      phoneNumber: '',
      project: Union2(const $CashCountLiteral()),
      referralCode: '',
      status: '',
    );
  }

  factory FieldAgent.fromJson(Map<String, dynamic> json) {
    return FieldAgent(
      $_creationTime: json['_creationTime'] as double,
      $_id: FieldAgentsId(json['_id'] as String),
      ayekooLeaderboardPosition: json['ayekooLeaderboardPosition'] != null
          ? Defined(json['ayekooLeaderboardPosition'] as double)
          : const Undefined(),
      cashCountLeaderboardPosition: json['cashCountLeaderboardPosition'] != null
          ? Defined(json['cashCountLeaderboardPosition'] as double)
          : const Undefined(),
      countryCityId: json['countryCityId'] != null
          ? Defined(CountryCitiesId(json['countryCityId'] as String))
          : const Undefined(),
      countryCityName: json['countryCityName'] != null
          ? Defined(json['countryCityName'] as String)
          : const Undefined(),
      countryCode: json['countryCode'] != null
          ? Defined(json['countryCode'] as String)
          : const Undefined(),
      countryISO: json['countryISO'] as String,
      countryName: json['countryName'] as String,
      countryStateId: json['countryStateId'] != null
          ? Defined(CountryStatesId(json['countryStateId'] as String))
          : const Undefined(),
      countryStateName: json['countryStateName'] != null
          ? Defined(json['countryStateName'] as String)
          : const Undefined(),
      createMeta: json['createMeta'] != null
          ? Defined(
              AuditAction.fromJson(json['createMeta'] as Map<String, dynamic>),
            )
          : const Undefined(),
      createdAt: json['createdAt'] as double,
      creatorId: json['creatorId'],
      dateBirth: json['dateBirth'] != null
          ? Defined(json['dateBirth'] as double)
          : const Undefined(),
      deletedAt: json['deletedAt'] != null
          ? Defined(json['deletedAt'] as double)
          : const Undefined(),
      deletedMeta: json['deletedMeta'] != null
          ? Defined(
              AuditAction.fromJson(json['deletedMeta'] as Map<String, dynamic>),
            )
          : const Undefined(),
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      fullName: json['fullName'] != null
          ? Defined(json['fullName'] as String)
          : const Undefined(),
      gender: json['gender'],
      invitationId: json['invitationId'] != null
          ? Defined(json['invitationId'] as String)
          : const Undefined(),
      invitationStatus: json['invitationStatus'] != null
          ? Defined(json['invitationStatus'] as String)
          : const Undefined(),
      lastName: json['lastName'] as String,
      middleName: json['middleName'] != null
          ? Defined(json['middleName'] as String)
          : const Undefined(),
      phoneNumber: json['phoneNumber'] as String,
      profileImage: json['profileImage'] != null
          ? Defined(
              MediaData.fromJson(json['profileImage'] as Map<String, dynamic>),
            )
          : const Undefined(),
      project: json['project'],
      referralCode: json['referralCode'] as String,
      status: json['status'] as String,
      teamId: json['teamId'] != null
          ? Defined(json['teamId'] as String)
          : const Undefined(),
      totalAyekooAllocationsCount: json['totalAyekooAllocationsCount'] != null
          ? Defined(json['totalAyekooAllocationsCount'] as double)
          : const Undefined(),
      totalAyekooCollectionsApprovedCount:
          json['totalAyekooCollectionsApprovedCount'] != null
          ? Defined(json['totalAyekooCollectionsApprovedCount'] as double)
          : const Undefined(),
      totalAyekooCollectionsCount: json['totalAyekooCollectionsCount'] != null
          ? Defined(json['totalAyekooCollectionsCount'] as double)
          : const Undefined(),
      totalAyekooCollectionsInvalidCount:
          json['totalAyekooCollectionsInvalidCount'] != null
          ? Defined(json['totalAyekooCollectionsInvalidCount'] as double)
          : const Undefined(),
      totalAyekooCollectionsPendingCount:
          json['totalAyekooCollectionsPendingCount'] != null
          ? Defined(json['totalAyekooCollectionsPendingCount'] as double)
          : const Undefined(),
      totalAyekooCollectionsRejectedCount:
          json['totalAyekooCollectionsRejectedCount'] != null
          ? Defined(json['totalAyekooCollectionsRejectedCount'] as double)
          : const Undefined(),
      totalCashCountAllocationsCount:
          json['totalCashCountAllocationsCount'] != null
          ? Defined(json['totalCashCountAllocationsCount'] as double)
          : const Undefined(),
      totalCashCountFieldSignUpsApprovedCount:
          json['totalCashCountFieldSignUpsApprovedCount'] != null
          ? Defined(json['totalCashCountFieldSignUpsApprovedCount'] as double)
          : const Undefined(),
      totalCashCountFieldSignUpsCount:
          json['totalCashCountFieldSignUpsCount'] != null
          ? Defined(json['totalCashCountFieldSignUpsCount'] as double)
          : const Undefined(),
      totalCashCountFieldSignUpsInvalidCount:
          json['totalCashCountFieldSignUpsInvalidCount'] != null
          ? Defined(json['totalCashCountFieldSignUpsInvalidCount'] as double)
          : const Undefined(),
      totalCashCountFieldSignUpsPendingCount:
          json['totalCashCountFieldSignUpsPendingCount'] != null
          ? Defined(json['totalCashCountFieldSignUpsPendingCount'] as double)
          : const Undefined(),
      totalCashCountFieldSignUpsRejectedCount:
          json['totalCashCountFieldSignUpsRejectedCount'] != null
          ? Defined(json['totalCashCountFieldSignUpsRejectedCount'] as double)
          : const Undefined(),
      updateMeta: json['updateMeta'] != null
          ? Defined(
              AuditAction.fromJson(json['updateMeta'] as Map<String, dynamic>),
            )
          : const Undefined(),
      updatedAt: json['updatedAt'] != null
          ? Defined(json['updatedAt'] as double)
          : const Undefined(),
      userId: json['userId'] != null
          ? Defined(json['userId'] as String)
          : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_creationTime': $_creationTime,
      '_id': $_id.value,
      if (ayekooLeaderboardPosition.isDefined)
        'ayekooLeaderboardPosition': ayekooLeaderboardPosition
            .asDefined()
            .value,
      if (cashCountLeaderboardPosition.isDefined)
        'cashCountLeaderboardPosition': cashCountLeaderboardPosition
            .asDefined()
            .value,
      if (countryCityId.isDefined)
        'countryCityId': countryCityId.asDefined().value.value,
      if (countryCityName.isDefined)
        'countryCityName': countryCityName.asDefined().value,
      if (countryCode.isDefined) 'countryCode': countryCode.asDefined().value,
      'countryISO': countryISO,
      'countryName': countryName,
      if (countryStateId.isDefined)
        'countryStateId': countryStateId.asDefined().value.value,
      if (countryStateName.isDefined)
        'countryStateName': countryStateName.asDefined().value,
      if (createMeta.isDefined)
        'createMeta': createMeta.asDefined().value.toJson(),
      'createdAt': createdAt,
      'creatorId': (creatorId.value is String
          ? creatorId.value
          : (creatorId.value as dynamic).value),
      if (dateBirth.isDefined) 'dateBirth': dateBirth.asDefined().value,
      if (deletedAt.isDefined) 'deletedAt': deletedAt.asDefined().value,
      if (deletedMeta.isDefined)
        'deletedMeta': deletedMeta.asDefined().value.toJson(),
      'email': email,
      'firstName': firstName,
      if (fullName.isDefined) 'fullName': fullName.asDefined().value,
      'gender': (gender.value is String
          ? gender.value
          : (gender.value as dynamic).value),
      if (invitationId.isDefined)
        'invitationId': invitationId.asDefined().value,
      if (invitationStatus.isDefined)
        'invitationStatus': invitationStatus.asDefined().value,
      'lastName': lastName,
      if (middleName.isDefined) 'middleName': middleName.asDefined().value,
      'phoneNumber': phoneNumber,
      if (profileImage.isDefined)
        'profileImage': profileImage.asDefined().value.toJson(),
      'project': (project.value is String
          ? project.value
          : (project.value as dynamic).value),
      'referralCode': referralCode,
      'status': status,
      if (teamId.isDefined) 'teamId': teamId.asDefined().value,
      if (totalAyekooAllocationsCount.isDefined)
        'totalAyekooAllocationsCount': totalAyekooAllocationsCount
            .asDefined()
            .value,
      if (totalAyekooCollectionsApprovedCount.isDefined)
        'totalAyekooCollectionsApprovedCount':
            totalAyekooCollectionsApprovedCount.asDefined().value,
      if (totalAyekooCollectionsCount.isDefined)
        'totalAyekooCollectionsCount': totalAyekooCollectionsCount
            .asDefined()
            .value,
      if (totalAyekooCollectionsInvalidCount.isDefined)
        'totalAyekooCollectionsInvalidCount': totalAyekooCollectionsInvalidCount
            .asDefined()
            .value,
      if (totalAyekooCollectionsPendingCount.isDefined)
        'totalAyekooCollectionsPendingCount': totalAyekooCollectionsPendingCount
            .asDefined()
            .value,
      if (totalAyekooCollectionsRejectedCount.isDefined)
        'totalAyekooCollectionsRejectedCount':
            totalAyekooCollectionsRejectedCount.asDefined().value,
      if (totalCashCountAllocationsCount.isDefined)
        'totalCashCountAllocationsCount': totalCashCountAllocationsCount
            .asDefined()
            .value,
      if (totalCashCountFieldSignUpsApprovedCount.isDefined)
        'totalCashCountFieldSignUpsApprovedCount':
            totalCashCountFieldSignUpsApprovedCount.asDefined().value,
      if (totalCashCountFieldSignUpsCount.isDefined)
        'totalCashCountFieldSignUpsCount': totalCashCountFieldSignUpsCount
            .asDefined()
            .value,
      if (totalCashCountFieldSignUpsInvalidCount.isDefined)
        'totalCashCountFieldSignUpsInvalidCount':
            totalCashCountFieldSignUpsInvalidCount.asDefined().value,
      if (totalCashCountFieldSignUpsPendingCount.isDefined)
        'totalCashCountFieldSignUpsPendingCount':
            totalCashCountFieldSignUpsPendingCount.asDefined().value,
      if (totalCashCountFieldSignUpsRejectedCount.isDefined)
        'totalCashCountFieldSignUpsRejectedCount':
            totalCashCountFieldSignUpsRejectedCount.asDefined().value,
      if (updateMeta.isDefined)
        'updateMeta': updateMeta.asDefined().value.toJson(),
      if (updatedAt.isDefined) 'updatedAt': updatedAt.asDefined().value,
      if (userId.isDefined) 'userId': userId.asDefined().value,
    };
  }

  /// Create from Convex typedef record
  factory FieldAgent.fromDoc(FieldAgentDoc doc) {
    final body = doc.body;
    if (body == null) {
      throw ArgumentError('Cannot create FieldAgent from null doc.body');
    }
    return FieldAgent(
      $_creationTime: body.$_creationTime,
      $_id: body.$_id,
      ayekooLeaderboardPosition: body.ayekooLeaderboardPosition.isDefined
          ? Defined(body.ayekooLeaderboardPosition.asDefined().value)
          : const Undefined(),
      cashCountLeaderboardPosition: body.cashCountLeaderboardPosition.isDefined
          ? Defined(body.cashCountLeaderboardPosition.asDefined().value)
          : const Undefined(),
      countryCityId: body.countryCityId.isDefined
          ? Defined(body.countryCityId.asDefined().value)
          : const Undefined(),
      countryCityName: body.countryCityName.isDefined
          ? Defined(body.countryCityName.asDefined().value)
          : const Undefined(),
      countryCode: body.countryCode.isDefined
          ? Defined(body.countryCode.asDefined().value)
          : const Undefined(),
      countryISO: body.countryISO,
      countryName: body.countryName,
      countryStateId: body.countryStateId.isDefined
          ? Defined(body.countryStateId.asDefined().value)
          : const Undefined(),
      countryStateName: body.countryStateName.isDefined
          ? Defined(body.countryStateName.asDefined().value)
          : const Undefined(),
      createMeta: body.createMeta.isDefined
          ? Defined(AuditAction.fromRecord(body.createMeta.asDefined().value))
          : const Undefined(),
      createdAt: body.createdAt,
      creatorId: body.creatorId,
      dateBirth: body.dateBirth.isDefined
          ? Defined(body.dateBirth.asDefined().value)
          : const Undefined(),
      deletedAt: body.deletedAt.isDefined
          ? Defined(body.deletedAt.asDefined().value)
          : const Undefined(),
      deletedMeta: body.deletedMeta.isDefined
          ? Defined(AuditAction.fromRecord(body.deletedMeta.asDefined().value))
          : const Undefined(),
      email: body.email,
      firstName: body.firstName,
      fullName: body.fullName.isDefined
          ? Defined(body.fullName.asDefined().value)
          : const Undefined(),
      gender: body.gender,
      invitationId: body.invitationId.isDefined
          ? Defined(body.invitationId.asDefined().value)
          : const Undefined(),
      invitationStatus: body.invitationStatus.isDefined
          ? Defined(body.invitationStatus.asDefined().value)
          : const Undefined(),
      lastName: body.lastName,
      middleName: body.middleName.isDefined
          ? Defined(body.middleName.asDefined().value)
          : const Undefined(),
      phoneNumber: body.phoneNumber,
      profileImage: body.profileImage.isDefined
          ? Defined(MediaData.fromRecord(body.profileImage.asDefined().value))
          : const Undefined(),
      project: body.project,
      referralCode: body.referralCode,
      status: body.status,
      teamId: body.teamId.isDefined
          ? Defined(body.teamId.asDefined().value)
          : const Undefined(),
      totalAyekooAllocationsCount: body.totalAyekooAllocationsCount.isDefined
          ? Defined(body.totalAyekooAllocationsCount.asDefined().value)
          : const Undefined(),
      totalAyekooCollectionsApprovedCount:
          body.totalAyekooCollectionsApprovedCount.isDefined
          ? Defined(body.totalAyekooCollectionsApprovedCount.asDefined().value)
          : const Undefined(),
      totalAyekooCollectionsCount: body.totalAyekooCollectionsCount.isDefined
          ? Defined(body.totalAyekooCollectionsCount.asDefined().value)
          : const Undefined(),
      totalAyekooCollectionsInvalidCount:
          body.totalAyekooCollectionsInvalidCount.isDefined
          ? Defined(body.totalAyekooCollectionsInvalidCount.asDefined().value)
          : const Undefined(),
      totalAyekooCollectionsPendingCount:
          body.totalAyekooCollectionsPendingCount.isDefined
          ? Defined(body.totalAyekooCollectionsPendingCount.asDefined().value)
          : const Undefined(),
      totalAyekooCollectionsRejectedCount:
          body.totalAyekooCollectionsRejectedCount.isDefined
          ? Defined(body.totalAyekooCollectionsRejectedCount.asDefined().value)
          : const Undefined(),
      totalCashCountAllocationsCount:
          body.totalCashCountAllocationsCount.isDefined
          ? Defined(body.totalCashCountAllocationsCount.asDefined().value)
          : const Undefined(),
      totalCashCountFieldSignUpsApprovedCount:
          body.totalCashCountFieldSignUpsApprovedCount.isDefined
          ? Defined(
              body.totalCashCountFieldSignUpsApprovedCount.asDefined().value,
            )
          : const Undefined(),
      totalCashCountFieldSignUpsCount:
          body.totalCashCountFieldSignUpsCount.isDefined
          ? Defined(body.totalCashCountFieldSignUpsCount.asDefined().value)
          : const Undefined(),
      totalCashCountFieldSignUpsInvalidCount:
          body.totalCashCountFieldSignUpsInvalidCount.isDefined
          ? Defined(
              body.totalCashCountFieldSignUpsInvalidCount.asDefined().value,
            )
          : const Undefined(),
      totalCashCountFieldSignUpsPendingCount:
          body.totalCashCountFieldSignUpsPendingCount.isDefined
          ? Defined(
              body.totalCashCountFieldSignUpsPendingCount.asDefined().value,
            )
          : const Undefined(),
      totalCashCountFieldSignUpsRejectedCount:
          body.totalCashCountFieldSignUpsRejectedCount.isDefined
          ? Defined(
              body.totalCashCountFieldSignUpsRejectedCount.asDefined().value,
            )
          : const Undefined(),
      updateMeta: body.updateMeta.isDefined
          ? Defined(AuditAction.fromRecord(body.updateMeta.asDefined().value))
          : const Undefined(),
      updatedAt: body.updatedAt.isDefined
          ? Defined(body.updatedAt.asDefined().value)
          : const Undefined(),
      userId: body.userId.isDefined
          ? Defined(body.userId.asDefined().value)
          : const Undefined(),
    );
  }

  /// Convert to Convex typedef record
  dynamic toDoc() {
    return (
      $_creationTime: $_creationTime,
      $_id: $_id,
      ayekooLeaderboardPosition: ayekooLeaderboardPosition,
      cashCountLeaderboardPosition: cashCountLeaderboardPosition,
      countryCityId: countryCityId,
      countryCityName: countryCityName,
      countryCode: countryCode,
      countryISO: countryISO,
      countryName: countryName,
      countryStateId: countryStateId,
      countryStateName: countryStateName,
      createMeta: createMeta.isDefined
          ? Defined(createMeta.asDefined().value.toRecord())
          : const Undefined(),
      createdAt: createdAt,
      creatorId: creatorId,
      dateBirth: dateBirth,
      deletedAt: deletedAt,
      deletedMeta: deletedMeta.isDefined
          ? Defined(deletedMeta.asDefined().value.toRecord())
          : const Undefined(),
      email: email,
      firstName: firstName,
      fullName: fullName,
      gender: gender,
      invitationId: invitationId,
      invitationStatus: invitationStatus,
      lastName: lastName,
      middleName: middleName,
      phoneNumber: phoneNumber,
      profileImage: profileImage.isDefined
          ? Defined(profileImage.asDefined().value.toRecord())
          : const Undefined(),
      project: project,
      referralCode: referralCode,
      status: status,
      teamId: teamId,
      totalAyekooAllocationsCount: totalAyekooAllocationsCount,
      totalAyekooCollectionsApprovedCount: totalAyekooCollectionsApprovedCount,
      totalAyekooCollectionsCount: totalAyekooCollectionsCount,
      totalAyekooCollectionsInvalidCount: totalAyekooCollectionsInvalidCount,
      totalAyekooCollectionsPendingCount: totalAyekooCollectionsPendingCount,
      totalAyekooCollectionsRejectedCount: totalAyekooCollectionsRejectedCount,
      totalCashCountAllocationsCount: totalCashCountAllocationsCount,
      totalCashCountFieldSignUpsApprovedCount:
          totalCashCountFieldSignUpsApprovedCount,
      totalCashCountFieldSignUpsCount: totalCashCountFieldSignUpsCount,
      totalCashCountFieldSignUpsInvalidCount:
          totalCashCountFieldSignUpsInvalidCount,
      totalCashCountFieldSignUpsPendingCount:
          totalCashCountFieldSignUpsPendingCount,
      totalCashCountFieldSignUpsRejectedCount:
          totalCashCountFieldSignUpsRejectedCount,
      updateMeta: updateMeta.isDefined
          ? Defined(updateMeta.asDefined().value.toRecord())
          : const Undefined(),
      updatedAt: updatedAt,
      userId: userId,
    );
  }

  FieldAgent copyWith({
    double? $_creationTime,
    FieldAgentsId? $_id,
    Optional<double>? ayekooLeaderboardPosition,
    Optional<double>? cashCountLeaderboardPosition,
    Optional<CountryCitiesId>? countryCityId,
    Optional<String>? countryCityName,
    Optional<String>? countryCode,
    String? countryISO,
    String? countryName,
    Optional<CountryStatesId>? countryStateId,
    Optional<String>? countryStateName,
    Optional<AuditAction>? createMeta,
    double? createdAt,
    Union3<FieldAgentsId, ShippingClientsId, String>? creatorId,
    Optional<double>? dateBirth,
    Optional<double>? deletedAt,
    Optional<AuditAction>? deletedMeta,
    String? email,
    String? firstName,
    Optional<String>? fullName,
    Union2<$MaleLiteral, $FemaleLiteral>? gender,
    Optional<String>? invitationId,
    Optional<String>? invitationStatus,
    String? lastName,
    Optional<String>? middleName,
    String? phoneNumber,
    Optional<MediaData>? profileImage,
    Union2<$CashCountLiteral, $AyekooLiteral>? project,
    String? referralCode,
    String? status,
    Optional<String>? teamId,
    Optional<double>? totalAyekooAllocationsCount,
    Optional<double>? totalAyekooCollectionsApprovedCount,
    Optional<double>? totalAyekooCollectionsCount,
    Optional<double>? totalAyekooCollectionsInvalidCount,
    Optional<double>? totalAyekooCollectionsPendingCount,
    Optional<double>? totalAyekooCollectionsRejectedCount,
    Optional<double>? totalCashCountAllocationsCount,
    Optional<double>? totalCashCountFieldSignUpsApprovedCount,
    Optional<double>? totalCashCountFieldSignUpsCount,
    Optional<double>? totalCashCountFieldSignUpsInvalidCount,
    Optional<double>? totalCashCountFieldSignUpsPendingCount,
    Optional<double>? totalCashCountFieldSignUpsRejectedCount,
    Optional<AuditAction>? updateMeta,
    Optional<double>? updatedAt,
    Optional<String>? userId,
  }) {
    return FieldAgent(
      $_creationTime: $_creationTime ?? this.$_creationTime,
      $_id: $_id ?? this.$_id,
      ayekooLeaderboardPosition:
          ayekooLeaderboardPosition ?? this.ayekooLeaderboardPosition,
      cashCountLeaderboardPosition:
          cashCountLeaderboardPosition ?? this.cashCountLeaderboardPosition,
      countryCityId: countryCityId ?? this.countryCityId,
      countryCityName: countryCityName ?? this.countryCityName,
      countryCode: countryCode ?? this.countryCode,
      countryISO: countryISO ?? this.countryISO,
      countryName: countryName ?? this.countryName,
      countryStateId: countryStateId ?? this.countryStateId,
      countryStateName: countryStateName ?? this.countryStateName,
      createMeta: createMeta ?? this.createMeta,
      createdAt: createdAt ?? this.createdAt,
      creatorId: creatorId ?? this.creatorId,
      dateBirth: dateBirth ?? this.dateBirth,
      deletedAt: deletedAt ?? this.deletedAt,
      deletedMeta: deletedMeta ?? this.deletedMeta,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      fullName: fullName ?? this.fullName,
      gender: gender ?? this.gender,
      invitationId: invitationId ?? this.invitationId,
      invitationStatus: invitationStatus ?? this.invitationStatus,
      lastName: lastName ?? this.lastName,
      middleName: middleName ?? this.middleName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      profileImage: profileImage ?? this.profileImage,
      project: project ?? this.project,
      referralCode: referralCode ?? this.referralCode,
      status: status ?? this.status,
      teamId: teamId ?? this.teamId,
      totalAyekooAllocationsCount:
          totalAyekooAllocationsCount ?? this.totalAyekooAllocationsCount,
      totalAyekooCollectionsApprovedCount:
          totalAyekooCollectionsApprovedCount ??
          this.totalAyekooCollectionsApprovedCount,
      totalAyekooCollectionsCount:
          totalAyekooCollectionsCount ?? this.totalAyekooCollectionsCount,
      totalAyekooCollectionsInvalidCount:
          totalAyekooCollectionsInvalidCount ??
          this.totalAyekooCollectionsInvalidCount,
      totalAyekooCollectionsPendingCount:
          totalAyekooCollectionsPendingCount ??
          this.totalAyekooCollectionsPendingCount,
      totalAyekooCollectionsRejectedCount:
          totalAyekooCollectionsRejectedCount ??
          this.totalAyekooCollectionsRejectedCount,
      totalCashCountAllocationsCount:
          totalCashCountAllocationsCount ?? this.totalCashCountAllocationsCount,
      totalCashCountFieldSignUpsApprovedCount:
          totalCashCountFieldSignUpsApprovedCount ??
          this.totalCashCountFieldSignUpsApprovedCount,
      totalCashCountFieldSignUpsCount:
          totalCashCountFieldSignUpsCount ??
          this.totalCashCountFieldSignUpsCount,
      totalCashCountFieldSignUpsInvalidCount:
          totalCashCountFieldSignUpsInvalidCount ??
          this.totalCashCountFieldSignUpsInvalidCount,
      totalCashCountFieldSignUpsPendingCount:
          totalCashCountFieldSignUpsPendingCount ??
          this.totalCashCountFieldSignUpsPendingCount,
      totalCashCountFieldSignUpsRejectedCount:
          totalCashCountFieldSignUpsRejectedCount ??
          this.totalCashCountFieldSignUpsRejectedCount,
      updateMeta: updateMeta ?? this.updateMeta,
      updatedAt: updatedAt ?? this.updatedAt,
      userId: userId ?? this.userId,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FieldAgent &&
        other.$_creationTime == $_creationTime &&
        other.$_id == $_id &&
        other.ayekooLeaderboardPosition == ayekooLeaderboardPosition &&
        other.cashCountLeaderboardPosition == cashCountLeaderboardPosition &&
        other.countryCityId == countryCityId &&
        other.countryCityName == countryCityName &&
        other.countryCode == countryCode &&
        other.countryISO == countryISO &&
        other.countryName == countryName &&
        other.countryStateId == countryStateId &&
        other.countryStateName == countryStateName &&
        other.createMeta == createMeta &&
        other.createdAt == createdAt &&
        other.creatorId == creatorId &&
        other.dateBirth == dateBirth &&
        other.deletedAt == deletedAt &&
        other.deletedMeta == deletedMeta &&
        other.email == email &&
        other.firstName == firstName &&
        other.fullName == fullName &&
        other.gender == gender &&
        other.invitationId == invitationId &&
        other.invitationStatus == invitationStatus &&
        other.lastName == lastName &&
        other.middleName == middleName &&
        other.phoneNumber == phoneNumber &&
        other.profileImage == profileImage &&
        other.project == project &&
        other.referralCode == referralCode &&
        other.status == status &&
        other.teamId == teamId &&
        other.totalAyekooAllocationsCount == totalAyekooAllocationsCount &&
        other.totalAyekooCollectionsApprovedCount ==
            totalAyekooCollectionsApprovedCount &&
        other.totalAyekooCollectionsCount == totalAyekooCollectionsCount &&
        other.totalAyekooCollectionsInvalidCount ==
            totalAyekooCollectionsInvalidCount &&
        other.totalAyekooCollectionsPendingCount ==
            totalAyekooCollectionsPendingCount &&
        other.totalAyekooCollectionsRejectedCount ==
            totalAyekooCollectionsRejectedCount &&
        other.totalCashCountAllocationsCount ==
            totalCashCountAllocationsCount &&
        other.totalCashCountFieldSignUpsApprovedCount ==
            totalCashCountFieldSignUpsApprovedCount &&
        other.totalCashCountFieldSignUpsCount ==
            totalCashCountFieldSignUpsCount &&
        other.totalCashCountFieldSignUpsInvalidCount ==
            totalCashCountFieldSignUpsInvalidCount &&
        other.totalCashCountFieldSignUpsPendingCount ==
            totalCashCountFieldSignUpsPendingCount &&
        other.totalCashCountFieldSignUpsRejectedCount ==
            totalCashCountFieldSignUpsRejectedCount &&
        other.updateMeta == updateMeta &&
        other.updatedAt == updatedAt &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    return $_creationTime.hashCode ^
        $_id.hashCode ^
        ayekooLeaderboardPosition.hashCode ^
        cashCountLeaderboardPosition.hashCode ^
        countryCityId.hashCode ^
        countryCityName.hashCode ^
        countryCode.hashCode ^
        countryISO.hashCode ^
        countryName.hashCode ^
        countryStateId.hashCode ^
        countryStateName.hashCode ^
        createMeta.hashCode ^
        createdAt.hashCode ^
        creatorId.hashCode ^
        dateBirth.hashCode ^
        deletedAt.hashCode ^
        deletedMeta.hashCode ^
        email.hashCode ^
        firstName.hashCode ^
        fullName.hashCode ^
        gender.hashCode ^
        invitationId.hashCode ^
        invitationStatus.hashCode ^
        lastName.hashCode ^
        middleName.hashCode ^
        phoneNumber.hashCode ^
        profileImage.hashCode ^
        project.hashCode ^
        referralCode.hashCode ^
        status.hashCode ^
        teamId.hashCode ^
        totalAyekooAllocationsCount.hashCode ^
        totalAyekooCollectionsApprovedCount.hashCode ^
        totalAyekooCollectionsCount.hashCode ^
        totalAyekooCollectionsInvalidCount.hashCode ^
        totalAyekooCollectionsPendingCount.hashCode ^
        totalAyekooCollectionsRejectedCount.hashCode ^
        totalCashCountAllocationsCount.hashCode ^
        totalCashCountFieldSignUpsApprovedCount.hashCode ^
        totalCashCountFieldSignUpsCount.hashCode ^
        totalCashCountFieldSignUpsInvalidCount.hashCode ^
        totalCashCountFieldSignUpsPendingCount.hashCode ^
        totalCashCountFieldSignUpsRejectedCount.hashCode ^
        updateMeta.hashCode ^
        updatedAt.hashCode ^
        userId.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
