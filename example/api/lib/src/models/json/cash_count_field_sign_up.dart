// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "audit_action.dart";
import "device_info.dart";

class CashCountFieldSignUp {
  final CashCountFieldSignUpsId $_id;
  final Optional<double> completedAt;
  final Optional<AuditAction> completedMeta;
  final double createdAt;
  final UsersId creatorId;
  final Optional<double> deletedAt;
  final Optional<AuditAction> deletedMeta;
  final DeviceInfo deviceInfo;
  final Optional<double> expiredAt;
  final Optional<String> mongoId;
  final String phoneNumber;
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
    required this.createdAt,
    required this.creatorId,
    this.deletedAt = const Undefined(),
    this.deletedMeta = const Undefined(),
    required this.deviceInfo,
    this.expiredAt = const Undefined(),
    this.mongoId = const Undefined(),
    required this.phoneNumber,
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
      creatorId: UsersId(''),
      deviceInfo: DeviceInfo.empty(),
      phoneNumber: '',
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
      createdAt: json['createdAt'] as double,
      creatorId: UsersId(json['creatorId'] as String),
      deletedAt: json['deletedAt'] != null
          ? Defined(json['deletedAt'] as double)
          : const Undefined(),
      deletedMeta: json['deletedMeta'] != null
          ? Defined(
              AuditAction.fromJson(json['deletedMeta'] as Map<String, dynamic>),
            )
          : const Undefined(),
      deviceInfo: DeviceInfo.fromJson(
        json['deviceInfo'] as Map<String, dynamic>,
      ),
      expiredAt: json['expiredAt'] != null
          ? Defined(json['expiredAt'] as double)
          : const Undefined(),
      mongoId: json['mongoId'] != null
          ? Defined(json['mongoId'] as String)
          : const Undefined(),
      phoneNumber: json['phoneNumber'] as String,
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
      'createdAt': createdAt,
      'creatorId': creatorId,
      if (deletedAt.isDefined) 'deletedAt': deletedAt.asDefined().value,
      if (deletedMeta.isDefined) 'deletedMeta': deletedMeta.asDefined().value,
      'deviceInfo': deviceInfo,
      if (expiredAt.isDefined) 'expiredAt': expiredAt.asDefined().value,
      if (mongoId.isDefined) 'mongoId': mongoId.asDefined().value,
      'phoneNumber': phoneNumber,
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
    double? createdAt,
    UsersId? creatorId,
    Optional<double>? deletedAt,
    Optional<AuditAction>? deletedMeta,
    DeviceInfo? deviceInfo,
    Optional<double>? expiredAt,
    Optional<String>? mongoId,
    String? phoneNumber,
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
      createdAt: createdAt ?? this.createdAt,
      creatorId: creatorId ?? this.creatorId,
      deletedAt: deletedAt ?? this.deletedAt,
      deletedMeta: deletedMeta ?? this.deletedMeta,
      deviceInfo: deviceInfo ?? this.deviceInfo,
      expiredAt: expiredAt ?? this.expiredAt,
      mongoId: mongoId ?? this.mongoId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
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
        other.createdAt == createdAt &&
        other.creatorId == creatorId &&
        other.deletedAt == deletedAt &&
        other.deletedMeta == deletedMeta &&
        other.deviceInfo == deviceInfo &&
        other.expiredAt == expiredAt &&
        other.mongoId == mongoId &&
        other.phoneNumber == phoneNumber &&
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
        createdAt.hashCode ^
        creatorId.hashCode ^
        deletedAt.hashCode ^
        deletedMeta.hashCode ^
        deviceInfo.hashCode ^
        expiredAt.hashCode ^
        mongoId.hashCode ^
        phoneNumber.hashCode ^
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
