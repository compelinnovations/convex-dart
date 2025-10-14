// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "audit_action.dart";
import "create_meta.dart";
import "device_info.dart";

class CashCountFieldSignUp {
  final CashCountFieldSignUpsId $_id;
  final Optional<double> completedAt;
  final Optional<AuditAction> completedMeta;
  final Optional<CreateMeta> createMeta;
  final double createdAt;
  final Optional<double> deletedAt;
  final Optional<AuditAction> deletedMeta;
  final String deviceId;
  final DeviceInfo deviceInfo;
  final Optional<double> expiredAt;
  final FieldAgentsId fieldAgentId;
  final String mongoId;
  final String phoneNumber;
  final String referralCode;
  final Optional<double> rejectionAt;
  final Optional<AuditAction> rejectionMeta;
  final Optional<String> rejectionReason;
  final Optional<double> statUpdatedAt;
  final Union4<
    $CompletedLiteral,
    $PendingLiteral,
    $RejectedLiteral,
    $ExpiredLiteral
  >
  status;
  final Optional<AuditAction> updateMeta;
  final Optional<double> updatedAt;

  const CashCountFieldSignUp({
    required this.$_id,
    this.completedAt = const Undefined(),
    this.completedMeta = const Undefined(),
    this.createMeta = const Undefined(),
    required this.createdAt,
    this.deletedAt = const Undefined(),
    this.deletedMeta = const Undefined(),
    required this.deviceId,
    required this.deviceInfo,
    this.expiredAt = const Undefined(),
    required this.fieldAgentId,
    required this.mongoId,
    required this.phoneNumber,
    required this.referralCode,
    this.rejectionAt = const Undefined(),
    this.rejectionMeta = const Undefined(),
    this.rejectionReason = const Undefined(),
    this.statUpdatedAt = const Undefined(),
    required this.status,
    this.updateMeta = const Undefined(),
    this.updatedAt = const Undefined(),
  });

  factory CashCountFieldSignUp.empty() {
    return CashCountFieldSignUp(
      $_id: CashCountFieldSignUpsId(''),
      createdAt: 0.0,
      deviceId: '',
      deviceInfo: DeviceInfo.empty(),
      fieldAgentId: FieldAgentsId(''),
      mongoId: '',
      phoneNumber: '',
      referralCode: '',
      status: Union4(const $CompletedLiteral()),
    );
  }

  factory CashCountFieldSignUp.fromJson(Map<String, dynamic> json) {
    return CashCountFieldSignUp(
      $_id: CashCountFieldSignUpsId(json['_id'] as String),
      completedAt: json['completedAt'] != null
          ? Defined(json['completedAt'] as double)
          : const Undefined(),
      completedMeta: json['completedMeta'] != null
          ? Defined(
              AuditAction.fromJson(
                json['completedMeta'] as Map<String, dynamic>,
              ),
            )
          : const Undefined(),
      createMeta: json['createMeta'] != null
          ? Defined(
              CreateMeta.fromJson(json['createMeta'] as Map<String, dynamic>),
            )
          : const Undefined(),
      createdAt: json['createdAt'] as double,
      deletedAt: json['deletedAt'] != null
          ? Defined(json['deletedAt'] as double)
          : const Undefined(),
      deletedMeta: json['deletedMeta'] != null
          ? Defined(
              AuditAction.fromJson(json['deletedMeta'] as Map<String, dynamic>),
            )
          : const Undefined(),
      deviceId: json['deviceId'] as String,
      deviceInfo: DeviceInfo.fromJson(
        json['deviceInfo'] as Map<String, dynamic>,
      ),
      expiredAt: json['expiredAt'] != null
          ? Defined(json['expiredAt'] as double)
          : const Undefined(),
      fieldAgentId: FieldAgentsId(json['fieldAgentId'] as String),
      mongoId: json['mongoId'] as String,
      phoneNumber: json['phoneNumber'] as String,
      referralCode: json['referralCode'] as String,
      rejectionAt: json['rejectionAt'] != null
          ? Defined(json['rejectionAt'] as double)
          : const Undefined(),
      rejectionMeta: json['rejectionMeta'] != null
          ? Defined(
              AuditAction.fromJson(
                json['rejectionMeta'] as Map<String, dynamic>,
              ),
            )
          : const Undefined(),
      rejectionReason: json['rejectionReason'] != null
          ? Defined(json['rejectionReason'] as String)
          : const Undefined(),
      statUpdatedAt: json['statUpdatedAt'] != null
          ? Defined(json['statUpdatedAt'] as double)
          : const Undefined(),
      status: json['status'],
      updateMeta: json['updateMeta'] != null
          ? Defined(
              AuditAction.fromJson(json['updateMeta'] as Map<String, dynamic>),
            )
          : const Undefined(),
      updatedAt: json['updatedAt'] != null
          ? Defined(json['updatedAt'] as double)
          : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': $_id,
      if (completedAt.isDefined) 'completedAt': completedAt.asDefined().value,
      if (completedMeta.isDefined)
        'completedMeta': completedMeta.asDefined().value,
      if (createMeta.isDefined) 'createMeta': createMeta.asDefined().value,
      'createdAt': createdAt,
      if (deletedAt.isDefined) 'deletedAt': deletedAt.asDefined().value,
      if (deletedMeta.isDefined) 'deletedMeta': deletedMeta.asDefined().value,
      'deviceId': deviceId,
      'deviceInfo': deviceInfo,
      if (expiredAt.isDefined) 'expiredAt': expiredAt.asDefined().value,
      'fieldAgentId': fieldAgentId,
      'mongoId': mongoId,
      'phoneNumber': phoneNumber,
      'referralCode': referralCode,
      if (rejectionAt.isDefined) 'rejectionAt': rejectionAt.asDefined().value,
      if (rejectionMeta.isDefined)
        'rejectionMeta': rejectionMeta.asDefined().value,
      if (rejectionReason.isDefined)
        'rejectionReason': rejectionReason.asDefined().value,
      if (statUpdatedAt.isDefined)
        'statUpdatedAt': statUpdatedAt.asDefined().value,
      'status': status,
      if (updateMeta.isDefined) 'updateMeta': updateMeta.asDefined().value,
      if (updatedAt.isDefined) 'updatedAt': updatedAt.asDefined().value,
    };
  }

  CashCountFieldSignUp copyWith({
    CashCountFieldSignUpsId? $_id,
    Optional<double>? completedAt,
    Optional<AuditAction>? completedMeta,
    Optional<CreateMeta>? createMeta,
    double? createdAt,
    Optional<double>? deletedAt,
    Optional<AuditAction>? deletedMeta,
    String? deviceId,
    DeviceInfo? deviceInfo,
    Optional<double>? expiredAt,
    FieldAgentsId? fieldAgentId,
    String? mongoId,
    String? phoneNumber,
    String? referralCode,
    Optional<double>? rejectionAt,
    Optional<AuditAction>? rejectionMeta,
    Optional<String>? rejectionReason,
    Optional<double>? statUpdatedAt,
    Union4<
      $CompletedLiteral,
      $PendingLiteral,
      $RejectedLiteral,
      $ExpiredLiteral
    >?
    status,
    Optional<AuditAction>? updateMeta,
    Optional<double>? updatedAt,
  }) {
    return CashCountFieldSignUp(
      $_id: $_id ?? this.$_id,
      completedAt: completedAt ?? this.completedAt,
      completedMeta: completedMeta ?? this.completedMeta,
      createMeta: createMeta ?? this.createMeta,
      createdAt: createdAt ?? this.createdAt,
      deletedAt: deletedAt ?? this.deletedAt,
      deletedMeta: deletedMeta ?? this.deletedMeta,
      deviceId: deviceId ?? this.deviceId,
      deviceInfo: deviceInfo ?? this.deviceInfo,
      expiredAt: expiredAt ?? this.expiredAt,
      fieldAgentId: fieldAgentId ?? this.fieldAgentId,
      mongoId: mongoId ?? this.mongoId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      referralCode: referralCode ?? this.referralCode,
      rejectionAt: rejectionAt ?? this.rejectionAt,
      rejectionMeta: rejectionMeta ?? this.rejectionMeta,
      rejectionReason: rejectionReason ?? this.rejectionReason,
      statUpdatedAt: statUpdatedAt ?? this.statUpdatedAt,
      status: status ?? this.status,
      updateMeta: updateMeta ?? this.updateMeta,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CashCountFieldSignUp &&
        other.$_id == $_id &&
        other.completedAt == completedAt &&
        other.completedMeta == completedMeta &&
        other.createMeta == createMeta &&
        other.createdAt == createdAt &&
        other.deletedAt == deletedAt &&
        other.deletedMeta == deletedMeta &&
        other.deviceId == deviceId &&
        other.deviceInfo == deviceInfo &&
        other.expiredAt == expiredAt &&
        other.fieldAgentId == fieldAgentId &&
        other.mongoId == mongoId &&
        other.phoneNumber == phoneNumber &&
        other.referralCode == referralCode &&
        other.rejectionAt == rejectionAt &&
        other.rejectionMeta == rejectionMeta &&
        other.rejectionReason == rejectionReason &&
        other.statUpdatedAt == statUpdatedAt &&
        other.status == status &&
        other.updateMeta == updateMeta &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return $_id.hashCode ^
        completedAt.hashCode ^
        completedMeta.hashCode ^
        createMeta.hashCode ^
        createdAt.hashCode ^
        deletedAt.hashCode ^
        deletedMeta.hashCode ^
        deviceId.hashCode ^
        deviceInfo.hashCode ^
        expiredAt.hashCode ^
        fieldAgentId.hashCode ^
        mongoId.hashCode ^
        phoneNumber.hashCode ^
        referralCode.hashCode ^
        rejectionAt.hashCode ^
        rejectionMeta.hashCode ^
        rejectionReason.hashCode ^
        statUpdatedAt.hashCode ^
        status.hashCode ^
        updateMeta.hashCode ^
        updatedAt.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
