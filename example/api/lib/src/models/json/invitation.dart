// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "../../functions/fieldAgentAuth/getMyInvitation.dart" show InvitationDoc;

class Invitation {
  final Optional<double> $_creationTime;
  final Optional<String> $_id;
  final Optional<double?> acceptedAt;
  final Optional<String?> appCountryIso;
  final Optional<String?> appCountryName;
  final Optional<double?> createdAt;
  final Optional<double?> deletedAt;
  final String email;
  final double expiresAt;
  final Optional<String?> fieldAgentId;
  final Optional<String?> firstName;
  final Optional<String?> fullName;
  final Optional<String?> inviteMessage;
  final Optional<String?> inviterEmail;
  final String inviterId;
  final Optional<String?> inviterMemberId;
  final Optional<String?> inviterName;
  final Optional<String?> inviterPhoneNumber;
  final Optional<String?> lastName;
  final String organizationId;
  final Optional<String?> organizationName;
  final Optional<String?> organizationType;
  final Optional<String?> phoneNumber;
  final Optional<String?> role;
  final Optional<String?> shippingClientId;
  final String status;
  final Optional<String?> subRole;
  final Optional<String?> teamId;
  final Optional<String?> teamName;
  final Optional<String?> teamType;
  final Optional<double?> updatedAt;

  const Invitation({
    this.$_creationTime = const Undefined(),
    this.$_id = const Undefined(),
    this.acceptedAt = const Undefined(),
    this.appCountryIso = const Undefined(),
    this.appCountryName = const Undefined(),
    this.createdAt = const Undefined(),
    this.deletedAt = const Undefined(),
    required this.email,
    required this.expiresAt,
    this.fieldAgentId = const Undefined(),
    this.firstName = const Undefined(),
    this.fullName = const Undefined(),
    this.inviteMessage = const Undefined(),
    this.inviterEmail = const Undefined(),
    required this.inviterId,
    this.inviterMemberId = const Undefined(),
    this.inviterName = const Undefined(),
    this.inviterPhoneNumber = const Undefined(),
    this.lastName = const Undefined(),
    required this.organizationId,
    this.organizationName = const Undefined(),
    this.organizationType = const Undefined(),
    this.phoneNumber = const Undefined(),
    this.role = const Undefined(),
    this.shippingClientId = const Undefined(),
    required this.status,
    this.subRole = const Undefined(),
    this.teamId = const Undefined(),
    this.teamName = const Undefined(),
    this.teamType = const Undefined(),
    this.updatedAt = const Undefined(),
  });

  factory Invitation.empty() {
    return Invitation(
      email: '',
      expiresAt: 0.0,
      inviterId: '',
      organizationId: '',
      status: '',
    );
  }

  factory Invitation.fromJson(Map<String, dynamic> json) {
    return Invitation(
      $_creationTime: json['_creationTime'] != null
          ? Defined(json['_creationTime'] as double)
          : const Undefined(),
      $_id: json['_id'] != null
          ? Defined(json['_id'] as String)
          : const Undefined(),
      acceptedAt: json['acceptedAt'] != null
          ? Defined(json['acceptedAt'])
          : const Undefined(),
      appCountryIso: json['appCountryIso'] != null
          ? Defined(json['appCountryIso'])
          : const Undefined(),
      appCountryName: json['appCountryName'] != null
          ? Defined(json['appCountryName'])
          : const Undefined(),
      createdAt: json['createdAt'] != null
          ? Defined(json['createdAt'])
          : const Undefined(),
      deletedAt: json['deletedAt'] != null
          ? Defined(json['deletedAt'])
          : const Undefined(),
      email: json['email'] as String,
      expiresAt: json['expiresAt'] as double,
      fieldAgentId: json['fieldAgentId'] != null
          ? Defined(json['fieldAgentId'])
          : const Undefined(),
      firstName: json['firstName'] != null
          ? Defined(json['firstName'])
          : const Undefined(),
      fullName: json['fullName'] != null
          ? Defined(json['fullName'])
          : const Undefined(),
      inviteMessage: json['inviteMessage'] != null
          ? Defined(json['inviteMessage'])
          : const Undefined(),
      inviterEmail: json['inviterEmail'] != null
          ? Defined(json['inviterEmail'])
          : const Undefined(),
      inviterId: json['inviterId'] as String,
      inviterMemberId: json['inviterMemberId'] != null
          ? Defined(json['inviterMemberId'])
          : const Undefined(),
      inviterName: json['inviterName'] != null
          ? Defined(json['inviterName'])
          : const Undefined(),
      inviterPhoneNumber: json['inviterPhoneNumber'] != null
          ? Defined(json['inviterPhoneNumber'])
          : const Undefined(),
      lastName: json['lastName'] != null
          ? Defined(json['lastName'])
          : const Undefined(),
      organizationId: json['organizationId'] as String,
      organizationName: json['organizationName'] != null
          ? Defined(json['organizationName'])
          : const Undefined(),
      organizationType: json['organizationType'] != null
          ? Defined(json['organizationType'])
          : const Undefined(),
      phoneNumber: json['phoneNumber'] != null
          ? Defined(json['phoneNumber'])
          : const Undefined(),
      role: json['role'] != null ? Defined(json['role']) : const Undefined(),
      shippingClientId: json['shippingClientId'] != null
          ? Defined(json['shippingClientId'])
          : const Undefined(),
      status: json['status'] as String,
      subRole: json['subRole'] != null
          ? Defined(json['subRole'])
          : const Undefined(),
      teamId: json['teamId'] != null
          ? Defined(json['teamId'])
          : const Undefined(),
      teamName: json['teamName'] != null
          ? Defined(json['teamName'])
          : const Undefined(),
      teamType: json['teamType'] != null
          ? Defined(json['teamType'])
          : const Undefined(),
      updatedAt: json['updatedAt'] != null
          ? Defined(json['updatedAt'])
          : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if ($_creationTime.isDefined)
        '_creationTime': $_creationTime.asDefined().value,
      if ($_id.isDefined) '_id': $_id.asDefined().value,
      if (acceptedAt.isDefined) 'acceptedAt': acceptedAt.asDefined().value,
      if (appCountryIso.isDefined)
        'appCountryIso': appCountryIso.asDefined().value,
      if (appCountryName.isDefined)
        'appCountryName': appCountryName.asDefined().value,
      if (createdAt.isDefined) 'createdAt': createdAt.asDefined().value,
      if (deletedAt.isDefined) 'deletedAt': deletedAt.asDefined().value,
      'email': email,
      'expiresAt': expiresAt,
      if (fieldAgentId.isDefined)
        'fieldAgentId': fieldAgentId.asDefined().value,
      if (firstName.isDefined) 'firstName': firstName.asDefined().value,
      if (fullName.isDefined) 'fullName': fullName.asDefined().value,
      if (inviteMessage.isDefined)
        'inviteMessage': inviteMessage.asDefined().value,
      if (inviterEmail.isDefined)
        'inviterEmail': inviterEmail.asDefined().value,
      'inviterId': inviterId,
      if (inviterMemberId.isDefined)
        'inviterMemberId': inviterMemberId.asDefined().value,
      if (inviterName.isDefined) 'inviterName': inviterName.asDefined().value,
      if (inviterPhoneNumber.isDefined)
        'inviterPhoneNumber': inviterPhoneNumber.asDefined().value,
      if (lastName.isDefined) 'lastName': lastName.asDefined().value,
      'organizationId': organizationId,
      if (organizationName.isDefined)
        'organizationName': organizationName.asDefined().value,
      if (organizationType.isDefined)
        'organizationType': organizationType.asDefined().value,
      if (phoneNumber.isDefined) 'phoneNumber': phoneNumber.asDefined().value,
      if (role.isDefined) 'role': role.asDefined().value,
      if (shippingClientId.isDefined)
        'shippingClientId': shippingClientId.asDefined().value,
      'status': status,
      if (subRole.isDefined) 'subRole': subRole.asDefined().value,
      if (teamId.isDefined) 'teamId': teamId.asDefined().value,
      if (teamName.isDefined) 'teamName': teamName.asDefined().value,
      if (teamType.isDefined) 'teamType': teamType.asDefined().value,
      if (updatedAt.isDefined) 'updatedAt': updatedAt.asDefined().value,
    };
  }

  /// Create from Convex typedef record
  factory Invitation.fromDoc(InvitationDoc doc) {
    final body = doc.body;
    if (body == null) {
      throw ArgumentError('Cannot create Invitation from null doc.body');
    }
    return Invitation(
      $_creationTime: body.$_creationTime.isDefined
          ? Defined(body.$_creationTime.asDefined().value)
          : const Undefined(),
      $_id: body.$_id.isDefined
          ? Defined(body.$_id.asDefined().value)
          : const Undefined(),
      acceptedAt: body.acceptedAt.isDefined
          ? Defined(body.acceptedAt.asDefined().value)
          : const Undefined(),
      appCountryIso: body.appCountryIso.isDefined
          ? Defined(body.appCountryIso.asDefined().value)
          : const Undefined(),
      appCountryName: body.appCountryName.isDefined
          ? Defined(body.appCountryName.asDefined().value)
          : const Undefined(),
      createdAt: body.createdAt.isDefined
          ? Defined(body.createdAt.asDefined().value)
          : const Undefined(),
      deletedAt: body.deletedAt.isDefined
          ? Defined(body.deletedAt.asDefined().value)
          : const Undefined(),
      email: body.email,
      expiresAt: body.expiresAt,
      fieldAgentId: body.fieldAgentId.isDefined
          ? Defined(body.fieldAgentId.asDefined().value)
          : const Undefined(),
      firstName: body.firstName.isDefined
          ? Defined(body.firstName.asDefined().value)
          : const Undefined(),
      fullName: body.fullName.isDefined
          ? Defined(body.fullName.asDefined().value)
          : const Undefined(),
      inviteMessage: body.inviteMessage.isDefined
          ? Defined(body.inviteMessage.asDefined().value)
          : const Undefined(),
      inviterEmail: body.inviterEmail.isDefined
          ? Defined(body.inviterEmail.asDefined().value)
          : const Undefined(),
      inviterId: body.inviterId,
      inviterMemberId: body.inviterMemberId.isDefined
          ? Defined(body.inviterMemberId.asDefined().value)
          : const Undefined(),
      inviterName: body.inviterName.isDefined
          ? Defined(body.inviterName.asDefined().value)
          : const Undefined(),
      inviterPhoneNumber: body.inviterPhoneNumber.isDefined
          ? Defined(body.inviterPhoneNumber.asDefined().value)
          : const Undefined(),
      lastName: body.lastName.isDefined
          ? Defined(body.lastName.asDefined().value)
          : const Undefined(),
      organizationId: body.organizationId,
      organizationName: body.organizationName.isDefined
          ? Defined(body.organizationName.asDefined().value)
          : const Undefined(),
      organizationType: body.organizationType.isDefined
          ? Defined(body.organizationType.asDefined().value)
          : const Undefined(),
      phoneNumber: body.phoneNumber.isDefined
          ? Defined(body.phoneNumber.asDefined().value)
          : const Undefined(),
      role: body.role.isDefined
          ? Defined(body.role.asDefined().value)
          : const Undefined(),
      shippingClientId: body.shippingClientId.isDefined
          ? Defined(body.shippingClientId.asDefined().value)
          : const Undefined(),
      status: body.status,
      subRole: body.subRole.isDefined
          ? Defined(body.subRole.asDefined().value)
          : const Undefined(),
      teamId: body.teamId.isDefined
          ? Defined(body.teamId.asDefined().value)
          : const Undefined(),
      teamName: body.teamName.isDefined
          ? Defined(body.teamName.asDefined().value)
          : const Undefined(),
      teamType: body.teamType.isDefined
          ? Defined(body.teamType.asDefined().value)
          : const Undefined(),
      updatedAt: body.updatedAt.isDefined
          ? Defined(body.updatedAt.asDefined().value)
          : const Undefined(),
    );
  }

  /// Convert to Convex typedef record
  dynamic toDoc() {
    return (
      $_creationTime: $_creationTime,
      $_id: $_id,
      acceptedAt: acceptedAt,
      appCountryIso: appCountryIso,
      appCountryName: appCountryName,
      createdAt: createdAt,
      deletedAt: deletedAt,
      email: email,
      expiresAt: expiresAt,
      fieldAgentId: fieldAgentId,
      firstName: firstName,
      fullName: fullName,
      inviteMessage: inviteMessage,
      inviterEmail: inviterEmail,
      inviterId: inviterId,
      inviterMemberId: inviterMemberId,
      inviterName: inviterName,
      inviterPhoneNumber: inviterPhoneNumber,
      lastName: lastName,
      organizationId: organizationId,
      organizationName: organizationName,
      organizationType: organizationType,
      phoneNumber: phoneNumber,
      role: role,
      shippingClientId: shippingClientId,
      status: status,
      subRole: subRole,
      teamId: teamId,
      teamName: teamName,
      teamType: teamType,
      updatedAt: updatedAt,
    );
  }

  Invitation copyWith({
    Optional<double>? $_creationTime,
    Optional<String>? $_id,
    Optional<double?>? acceptedAt,
    Optional<String?>? appCountryIso,
    Optional<String?>? appCountryName,
    Optional<double?>? createdAt,
    Optional<double?>? deletedAt,
    String? email,
    double? expiresAt,
    Optional<String?>? fieldAgentId,
    Optional<String?>? firstName,
    Optional<String?>? fullName,
    Optional<String?>? inviteMessage,
    Optional<String?>? inviterEmail,
    String? inviterId,
    Optional<String?>? inviterMemberId,
    Optional<String?>? inviterName,
    Optional<String?>? inviterPhoneNumber,
    Optional<String?>? lastName,
    String? organizationId,
    Optional<String?>? organizationName,
    Optional<String?>? organizationType,
    Optional<String?>? phoneNumber,
    Optional<String?>? role,
    Optional<String?>? shippingClientId,
    String? status,
    Optional<String?>? subRole,
    Optional<String?>? teamId,
    Optional<String?>? teamName,
    Optional<String?>? teamType,
    Optional<double?>? updatedAt,
  }) {
    return Invitation(
      $_creationTime: $_creationTime ?? this.$_creationTime,
      $_id: $_id ?? this.$_id,
      acceptedAt: acceptedAt ?? this.acceptedAt,
      appCountryIso: appCountryIso ?? this.appCountryIso,
      appCountryName: appCountryName ?? this.appCountryName,
      createdAt: createdAt ?? this.createdAt,
      deletedAt: deletedAt ?? this.deletedAt,
      email: email ?? this.email,
      expiresAt: expiresAt ?? this.expiresAt,
      fieldAgentId: fieldAgentId ?? this.fieldAgentId,
      firstName: firstName ?? this.firstName,
      fullName: fullName ?? this.fullName,
      inviteMessage: inviteMessage ?? this.inviteMessage,
      inviterEmail: inviterEmail ?? this.inviterEmail,
      inviterId: inviterId ?? this.inviterId,
      inviterMemberId: inviterMemberId ?? this.inviterMemberId,
      inviterName: inviterName ?? this.inviterName,
      inviterPhoneNumber: inviterPhoneNumber ?? this.inviterPhoneNumber,
      lastName: lastName ?? this.lastName,
      organizationId: organizationId ?? this.organizationId,
      organizationName: organizationName ?? this.organizationName,
      organizationType: organizationType ?? this.organizationType,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      role: role ?? this.role,
      shippingClientId: shippingClientId ?? this.shippingClientId,
      status: status ?? this.status,
      subRole: subRole ?? this.subRole,
      teamId: teamId ?? this.teamId,
      teamName: teamName ?? this.teamName,
      teamType: teamType ?? this.teamType,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Invitation &&
        other.$_creationTime == $_creationTime &&
        other.$_id == $_id &&
        other.acceptedAt == acceptedAt &&
        other.appCountryIso == appCountryIso &&
        other.appCountryName == appCountryName &&
        other.createdAt == createdAt &&
        other.deletedAt == deletedAt &&
        other.email == email &&
        other.expiresAt == expiresAt &&
        other.fieldAgentId == fieldAgentId &&
        other.firstName == firstName &&
        other.fullName == fullName &&
        other.inviteMessage == inviteMessage &&
        other.inviterEmail == inviterEmail &&
        other.inviterId == inviterId &&
        other.inviterMemberId == inviterMemberId &&
        other.inviterName == inviterName &&
        other.inviterPhoneNumber == inviterPhoneNumber &&
        other.lastName == lastName &&
        other.organizationId == organizationId &&
        other.organizationName == organizationName &&
        other.organizationType == organizationType &&
        other.phoneNumber == phoneNumber &&
        other.role == role &&
        other.shippingClientId == shippingClientId &&
        other.status == status &&
        other.subRole == subRole &&
        other.teamId == teamId &&
        other.teamName == teamName &&
        other.teamType == teamType &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return $_creationTime.hashCode ^
        $_id.hashCode ^
        acceptedAt.hashCode ^
        appCountryIso.hashCode ^
        appCountryName.hashCode ^
        createdAt.hashCode ^
        deletedAt.hashCode ^
        email.hashCode ^
        expiresAt.hashCode ^
        fieldAgentId.hashCode ^
        firstName.hashCode ^
        fullName.hashCode ^
        inviteMessage.hashCode ^
        inviterEmail.hashCode ^
        inviterId.hashCode ^
        inviterMemberId.hashCode ^
        inviterName.hashCode ^
        inviterPhoneNumber.hashCode ^
        lastName.hashCode ^
        organizationId.hashCode ^
        organizationName.hashCode ^
        organizationType.hashCode ^
        phoneNumber.hashCode ^
        role.hashCode ^
        shippingClientId.hashCode ^
        status.hashCode ^
        subRole.hashCode ^
        teamId.hashCode ^
        teamName.hashCode ^
        teamType.hashCode ^
        updatedAt.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
