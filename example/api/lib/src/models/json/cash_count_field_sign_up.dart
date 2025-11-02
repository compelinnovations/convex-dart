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
  final double $_creationTime;
  final CashCountFieldSignUpsId $_id;
  final String businessName;
  final Optional<CashCountTeamsId> cashCountTeamId;
  final Optional<String> cashCountUserFullName;
  final Optional<CashCountAuthUsersId> cashCountUserId;
  final Optional<String> cashCountUserRole;
  final Optional<double> commissionAmount;
  final Optional<AuditAction> createMeta;
  final double createdAt;
  final Union3<FieldAgentsId, ShippingClientsId, String> creatorId;
  final Optional<double> dateEarned;
  final Optional<double> deletedAt;
  final Optional<AuditAction> deletedMeta;
  final String deviceId;
  final DeviceInfo deviceInfo;
  final Optional<double> expiredAt;
  final FieldAgentsId fieldAgentId;
  final Optional<String> fieldAgentName;
  final Optional<String> invalidRejectionReason;
  final String mongoId;
  final String mongoTeamId;
  final Optional<double> monthTxnsCount;
  final Optional<double> paidAt;
  final Optional<FieldAgentPaymentBatchesId> paymentBatchId;
  final Optional<String> paymentStatus;
  final Optional<double> periodEndDate;
  final Optional<double> periodStartDate;
  final String phoneNumber;
  final Optional<double> processedAt;
  final String referralCode;
  final Union4<
    $ApprovedLiteral,
    $PendingLiteral,
    $InvalidLiteral,
    $RejectedLiteral
  >
  status;
  final Optional<String> teamId;
  final Optional<double> txnsCount;
  final Optional<AuditAction> updateMeta;
  final Optional<double> updatedAt;
  final Optional<String> weekOf;
  final Optional<double> weekTxnsCount;

  const CashCountFieldSignUp({
    required this.$_creationTime,
    required this.$_id,
    required this.businessName,
    this.cashCountTeamId = const Undefined(),
    this.cashCountUserFullName = const Undefined(),
    this.cashCountUserId = const Undefined(),
    this.cashCountUserRole = const Undefined(),
    this.commissionAmount = const Undefined(),
    this.createMeta = const Undefined(),
    required this.createdAt,
    required this.creatorId,
    this.dateEarned = const Undefined(),
    this.deletedAt = const Undefined(),
    this.deletedMeta = const Undefined(),
    required this.deviceId,
    required this.deviceInfo,
    this.expiredAt = const Undefined(),
    required this.fieldAgentId,
    this.fieldAgentName = const Undefined(),
    this.invalidRejectionReason = const Undefined(),
    required this.mongoId,
    required this.mongoTeamId,
    this.monthTxnsCount = const Undefined(),
    this.paidAt = const Undefined(),
    this.paymentBatchId = const Undefined(),
    this.paymentStatus = const Undefined(),
    this.periodEndDate = const Undefined(),
    this.periodStartDate = const Undefined(),
    required this.phoneNumber,
    this.processedAt = const Undefined(),
    required this.referralCode,
    required this.status,
    this.teamId = const Undefined(),
    this.txnsCount = const Undefined(),
    this.updateMeta = const Undefined(),
    this.updatedAt = const Undefined(),
    this.weekOf = const Undefined(),
    this.weekTxnsCount = const Undefined(),
  });

  factory CashCountFieldSignUp.empty() {
    return CashCountFieldSignUp(
      $_creationTime: 0.0,
      $_id: CashCountFieldSignUpsId(''),
      businessName: '',
      createdAt: 0.0,
      creatorId: Union3(FieldAgentsId('')),
      deviceId: '',
      deviceInfo: DeviceInfo.empty(),
      fieldAgentId: FieldAgentsId(''),
      mongoId: '',
      mongoTeamId: '',
      phoneNumber: '',
      referralCode: '',
      status: Union4(const $ApprovedLiteral()),
    );
  }

  factory CashCountFieldSignUp.fromJson(Map<String, dynamic> json) {
    return CashCountFieldSignUp(
      $_creationTime: json['_creationTime'] as double,
      $_id: CashCountFieldSignUpsId(json['_id'] as String),
      businessName: json['businessName'] as String,
      cashCountTeamId: json['cashCountTeamId'] != null
          ? Defined(CashCountTeamsId(json['cashCountTeamId'] as String))
          : const Undefined(),
      cashCountUserFullName: json['cashCountUserFullName'] != null
          ? Defined(json['cashCountUserFullName'] as String)
          : const Undefined(),
      cashCountUserId: json['cashCountUserId'] != null
          ? Defined(CashCountAuthUsersId(json['cashCountUserId'] as String))
          : const Undefined(),
      cashCountUserRole: json['cashCountUserRole'] != null
          ? Defined(json['cashCountUserRole'] as String)
          : const Undefined(),
      commissionAmount: json['commissionAmount'] != null
          ? Defined(json['commissionAmount'] as double)
          : const Undefined(),
      createMeta: json['createMeta'] != null
          ? Defined(
              AuditAction.fromJson(json['createMeta'] as Map<String, dynamic>),
            )
          : const Undefined(),
      createdAt: json['createdAt'] as double,
      creatorId: json['creatorId'],
      dateEarned: json['dateEarned'] != null
          ? Defined(json['dateEarned'] as double)
          : const Undefined(),
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
      fieldAgentName: json['fieldAgentName'] != null
          ? Defined(json['fieldAgentName'] as String)
          : const Undefined(),
      invalidRejectionReason: json['invalidRejectionReason'] != null
          ? Defined(json['invalidRejectionReason'] as String)
          : const Undefined(),
      mongoId: json['mongoId'] as String,
      mongoTeamId: json['mongoTeamId'] as String,
      monthTxnsCount: json['monthTxnsCount'] != null
          ? Defined(json['monthTxnsCount'] as double)
          : const Undefined(),
      paidAt: json['paidAt'] != null
          ? Defined(json['paidAt'] as double)
          : const Undefined(),
      paymentBatchId: json['paymentBatchId'] != null
          ? Defined(
              FieldAgentPaymentBatchesId(json['paymentBatchId'] as String),
            )
          : const Undefined(),
      paymentStatus: json['paymentStatus'] != null
          ? Defined(json['paymentStatus'] as String)
          : const Undefined(),
      periodEndDate: json['periodEndDate'] != null
          ? Defined(json['periodEndDate'] as double)
          : const Undefined(),
      periodStartDate: json['periodStartDate'] != null
          ? Defined(json['periodStartDate'] as double)
          : const Undefined(),
      phoneNumber: json['phoneNumber'] as String,
      processedAt: json['processedAt'] != null
          ? Defined(json['processedAt'] as double)
          : const Undefined(),
      referralCode: json['referralCode'] as String,
      status: json['status'],
      teamId: json['teamId'] != null
          ? Defined(json['teamId'] as String)
          : const Undefined(),
      txnsCount: json['txnsCount'] != null
          ? Defined(json['txnsCount'] as double)
          : const Undefined(),
      updateMeta: json['updateMeta'] != null
          ? Defined(
              AuditAction.fromJson(json['updateMeta'] as Map<String, dynamic>),
            )
          : const Undefined(),
      updatedAt: json['updatedAt'] != null
          ? Defined(json['updatedAt'] as double)
          : const Undefined(),
      weekOf: json['weekOf'] != null
          ? Defined(json['weekOf'] as String)
          : const Undefined(),
      weekTxnsCount: json['weekTxnsCount'] != null
          ? Defined(json['weekTxnsCount'] as double)
          : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_creationTime': $_creationTime,
      '_id': $_id.value,
      'businessName': businessName,
      if (cashCountTeamId.isDefined)
        'cashCountTeamId': cashCountTeamId.asDefined().value.value,
      if (cashCountUserFullName.isDefined)
        'cashCountUserFullName': cashCountUserFullName.asDefined().value,
      if (cashCountUserId.isDefined)
        'cashCountUserId': cashCountUserId.asDefined().value.value,
      if (cashCountUserRole.isDefined)
        'cashCountUserRole': cashCountUserRole.asDefined().value,
      if (commissionAmount.isDefined)
        'commissionAmount': commissionAmount.asDefined().value,
      if (createMeta.isDefined)
        'createMeta': createMeta.asDefined().value.toJson(),
      'createdAt': createdAt,
      'creatorId': (creatorId.value is String
          ? creatorId.value
          : (creatorId.value as dynamic).value),
      if (dateEarned.isDefined) 'dateEarned': dateEarned.asDefined().value,
      if (deletedAt.isDefined) 'deletedAt': deletedAt.asDefined().value,
      if (deletedMeta.isDefined)
        'deletedMeta': deletedMeta.asDefined().value.toJson(),
      'deviceId': deviceId,
      'deviceInfo': deviceInfo.toJson(),
      if (expiredAt.isDefined) 'expiredAt': expiredAt.asDefined().value,
      'fieldAgentId': fieldAgentId.value,
      if (fieldAgentName.isDefined)
        'fieldAgentName': fieldAgentName.asDefined().value,
      if (invalidRejectionReason.isDefined)
        'invalidRejectionReason': invalidRejectionReason.asDefined().value,
      'mongoId': mongoId,
      'mongoTeamId': mongoTeamId,
      if (monthTxnsCount.isDefined)
        'monthTxnsCount': monthTxnsCount.asDefined().value,
      if (paidAt.isDefined) 'paidAt': paidAt.asDefined().value,
      if (paymentBatchId.isDefined)
        'paymentBatchId': paymentBatchId.asDefined().value.value,
      if (paymentStatus.isDefined)
        'paymentStatus': paymentStatus.asDefined().value,
      if (periodEndDate.isDefined)
        'periodEndDate': periodEndDate.asDefined().value,
      if (periodStartDate.isDefined)
        'periodStartDate': periodStartDate.asDefined().value,
      'phoneNumber': phoneNumber,
      if (processedAt.isDefined) 'processedAt': processedAt.asDefined().value,
      'referralCode': referralCode,
      'status': (status.value is String
          ? status.value
          : (status.value as dynamic).value),
      if (teamId.isDefined) 'teamId': teamId.asDefined().value,
      if (txnsCount.isDefined) 'txnsCount': txnsCount.asDefined().value,
      if (updateMeta.isDefined)
        'updateMeta': updateMeta.asDefined().value.toJson(),
      if (updatedAt.isDefined) 'updatedAt': updatedAt.asDefined().value,
      if (weekOf.isDefined) 'weekOf': weekOf.asDefined().value,
      if (weekTxnsCount.isDefined)
        'weekTxnsCount': weekTxnsCount.asDefined().value,
    };
  }

  /// Create from inline record (used in typedef conversions)
  factory CashCountFieldSignUp.fromRecord(
    ({
      double $_creationTime,
      CashCountFieldSignUpsId $_id,
      String businessName,
      Optional<CashCountTeamsId> cashCountTeamId,
      Optional<String> cashCountUserFullName,
      Optional<CashCountAuthUsersId> cashCountUserId,
      Optional<String> cashCountUserRole,
      Optional<double> commissionAmount,
      Optional<
        ({
          String action,
          Optional<IMap<String, dynamic>> details,
          Optional<String> name,
          Optional<String> role,
          Optional<String> userId,
        })
      >
      createMeta,
      double createdAt,
      Union3<FieldAgentsId, ShippingClientsId, String> creatorId,
      Optional<double> dateEarned,
      Optional<double> deletedAt,
      Optional<
        ({
          String action,
          Optional<IMap<String, dynamic>> details,
          Optional<String> name,
          Optional<String> role,
          Optional<String> userId,
        })
      >
      deletedMeta,
      String deviceId,
      ({
        String deviceId,
        String deviceModel,
        String deviceName,
        String deviceOs,
      })
      deviceInfo,
      Optional<double> expiredAt,
      FieldAgentsId fieldAgentId,
      Optional<String> fieldAgentName,
      Optional<String> invalidRejectionReason,
      String mongoId,
      String mongoTeamId,
      Optional<double> monthTxnsCount,
      Optional<double> paidAt,
      Optional<FieldAgentPaymentBatchesId> paymentBatchId,
      Optional<String> paymentStatus,
      Optional<double> periodEndDate,
      Optional<double> periodStartDate,
      String phoneNumber,
      Optional<double> processedAt,
      String referralCode,
      Union4<
        $ApprovedLiteral,
        $PendingLiteral,
        $InvalidLiteral,
        $RejectedLiteral
      >
      status,
      Optional<String> teamId,
      Optional<double> txnsCount,
      Optional<
        ({
          String action,
          Optional<IMap<String, dynamic>> details,
          Optional<String> name,
          Optional<String> role,
          Optional<String> userId,
        })
      >
      updateMeta,
      Optional<double> updatedAt,
      Optional<String> weekOf,
      Optional<double> weekTxnsCount,
    })
    record,
  ) {
    return CashCountFieldSignUp(
      $_creationTime: record.$_creationTime,
      $_id: record.$_id,
      businessName: record.businessName,
      cashCountTeamId: record.cashCountTeamId,
      cashCountUserFullName: record.cashCountUserFullName,
      cashCountUserId: record.cashCountUserId,
      cashCountUserRole: record.cashCountUserRole,
      commissionAmount: record.commissionAmount,
      createMeta: record.createMeta.isDefined
          ? Defined(AuditAction.fromRecord(record.createMeta.asDefined().value))
          : const Undefined(),
      createdAt: record.createdAt,
      creatorId: record.creatorId,
      dateEarned: record.dateEarned,
      deletedAt: record.deletedAt,
      deletedMeta: record.deletedMeta.isDefined
          ? Defined(
              AuditAction.fromRecord(record.deletedMeta.asDefined().value),
            )
          : const Undefined(),
      deviceId: record.deviceId,
      deviceInfo: DeviceInfo.fromRecord(record.deviceInfo),
      expiredAt: record.expiredAt,
      fieldAgentId: record.fieldAgentId,
      fieldAgentName: record.fieldAgentName,
      invalidRejectionReason: record.invalidRejectionReason,
      mongoId: record.mongoId,
      mongoTeamId: record.mongoTeamId,
      monthTxnsCount: record.monthTxnsCount,
      paidAt: record.paidAt,
      paymentBatchId: record.paymentBatchId,
      paymentStatus: record.paymentStatus,
      periodEndDate: record.periodEndDate,
      periodStartDate: record.periodStartDate,
      phoneNumber: record.phoneNumber,
      processedAt: record.processedAt,
      referralCode: record.referralCode,
      status: record.status,
      teamId: record.teamId,
      txnsCount: record.txnsCount,
      updateMeta: record.updateMeta.isDefined
          ? Defined(AuditAction.fromRecord(record.updateMeta.asDefined().value))
          : const Undefined(),
      updatedAt: record.updatedAt,
      weekOf: record.weekOf,
      weekTxnsCount: record.weekTxnsCount,
    );
  }

  CashCountFieldSignUp copyWith({
    double? $_creationTime,
    CashCountFieldSignUpsId? $_id,
    String? businessName,
    Optional<CashCountTeamsId>? cashCountTeamId,
    Optional<String>? cashCountUserFullName,
    Optional<CashCountAuthUsersId>? cashCountUserId,
    Optional<String>? cashCountUserRole,
    Optional<double>? commissionAmount,
    Optional<AuditAction>? createMeta,
    double? createdAt,
    Union3<FieldAgentsId, ShippingClientsId, String>? creatorId,
    Optional<double>? dateEarned,
    Optional<double>? deletedAt,
    Optional<AuditAction>? deletedMeta,
    String? deviceId,
    DeviceInfo? deviceInfo,
    Optional<double>? expiredAt,
    FieldAgentsId? fieldAgentId,
    Optional<String>? fieldAgentName,
    Optional<String>? invalidRejectionReason,
    String? mongoId,
    String? mongoTeamId,
    Optional<double>? monthTxnsCount,
    Optional<double>? paidAt,
    Optional<FieldAgentPaymentBatchesId>? paymentBatchId,
    Optional<String>? paymentStatus,
    Optional<double>? periodEndDate,
    Optional<double>? periodStartDate,
    String? phoneNumber,
    Optional<double>? processedAt,
    String? referralCode,
    Union4<
      $ApprovedLiteral,
      $PendingLiteral,
      $InvalidLiteral,
      $RejectedLiteral
    >?
    status,
    Optional<String>? teamId,
    Optional<double>? txnsCount,
    Optional<AuditAction>? updateMeta,
    Optional<double>? updatedAt,
    Optional<String>? weekOf,
    Optional<double>? weekTxnsCount,
  }) {
    return CashCountFieldSignUp(
      $_creationTime: $_creationTime ?? this.$_creationTime,
      $_id: $_id ?? this.$_id,
      businessName: businessName ?? this.businessName,
      cashCountTeamId: cashCountTeamId ?? this.cashCountTeamId,
      cashCountUserFullName:
          cashCountUserFullName ?? this.cashCountUserFullName,
      cashCountUserId: cashCountUserId ?? this.cashCountUserId,
      cashCountUserRole: cashCountUserRole ?? this.cashCountUserRole,
      commissionAmount: commissionAmount ?? this.commissionAmount,
      createMeta: createMeta ?? this.createMeta,
      createdAt: createdAt ?? this.createdAt,
      creatorId: creatorId ?? this.creatorId,
      dateEarned: dateEarned ?? this.dateEarned,
      deletedAt: deletedAt ?? this.deletedAt,
      deletedMeta: deletedMeta ?? this.deletedMeta,
      deviceId: deviceId ?? this.deviceId,
      deviceInfo: deviceInfo ?? this.deviceInfo,
      expiredAt: expiredAt ?? this.expiredAt,
      fieldAgentId: fieldAgentId ?? this.fieldAgentId,
      fieldAgentName: fieldAgentName ?? this.fieldAgentName,
      invalidRejectionReason:
          invalidRejectionReason ?? this.invalidRejectionReason,
      mongoId: mongoId ?? this.mongoId,
      mongoTeamId: mongoTeamId ?? this.mongoTeamId,
      monthTxnsCount: monthTxnsCount ?? this.monthTxnsCount,
      paidAt: paidAt ?? this.paidAt,
      paymentBatchId: paymentBatchId ?? this.paymentBatchId,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      periodEndDate: periodEndDate ?? this.periodEndDate,
      periodStartDate: periodStartDate ?? this.periodStartDate,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      processedAt: processedAt ?? this.processedAt,
      referralCode: referralCode ?? this.referralCode,
      status: status ?? this.status,
      teamId: teamId ?? this.teamId,
      txnsCount: txnsCount ?? this.txnsCount,
      updateMeta: updateMeta ?? this.updateMeta,
      updatedAt: updatedAt ?? this.updatedAt,
      weekOf: weekOf ?? this.weekOf,
      weekTxnsCount: weekTxnsCount ?? this.weekTxnsCount,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CashCountFieldSignUp &&
        other.$_creationTime == $_creationTime &&
        other.$_id == $_id &&
        other.businessName == businessName &&
        other.cashCountTeamId == cashCountTeamId &&
        other.cashCountUserFullName == cashCountUserFullName &&
        other.cashCountUserId == cashCountUserId &&
        other.cashCountUserRole == cashCountUserRole &&
        other.commissionAmount == commissionAmount &&
        other.createMeta == createMeta &&
        other.createdAt == createdAt &&
        other.creatorId == creatorId &&
        other.dateEarned == dateEarned &&
        other.deletedAt == deletedAt &&
        other.deletedMeta == deletedMeta &&
        other.deviceId == deviceId &&
        other.deviceInfo == deviceInfo &&
        other.expiredAt == expiredAt &&
        other.fieldAgentId == fieldAgentId &&
        other.fieldAgentName == fieldAgentName &&
        other.invalidRejectionReason == invalidRejectionReason &&
        other.mongoId == mongoId &&
        other.mongoTeamId == mongoTeamId &&
        other.monthTxnsCount == monthTxnsCount &&
        other.paidAt == paidAt &&
        other.paymentBatchId == paymentBatchId &&
        other.paymentStatus == paymentStatus &&
        other.periodEndDate == periodEndDate &&
        other.periodStartDate == periodStartDate &&
        other.phoneNumber == phoneNumber &&
        other.processedAt == processedAt &&
        other.referralCode == referralCode &&
        other.status == status &&
        other.teamId == teamId &&
        other.txnsCount == txnsCount &&
        other.updateMeta == updateMeta &&
        other.updatedAt == updatedAt &&
        other.weekOf == weekOf &&
        other.weekTxnsCount == weekTxnsCount;
  }

  @override
  int get hashCode {
    return $_creationTime.hashCode ^
        $_id.hashCode ^
        businessName.hashCode ^
        cashCountTeamId.hashCode ^
        cashCountUserFullName.hashCode ^
        cashCountUserId.hashCode ^
        cashCountUserRole.hashCode ^
        commissionAmount.hashCode ^
        createMeta.hashCode ^
        createdAt.hashCode ^
        creatorId.hashCode ^
        dateEarned.hashCode ^
        deletedAt.hashCode ^
        deletedMeta.hashCode ^
        deviceId.hashCode ^
        deviceInfo.hashCode ^
        expiredAt.hashCode ^
        fieldAgentId.hashCode ^
        fieldAgentName.hashCode ^
        invalidRejectionReason.hashCode ^
        mongoId.hashCode ^
        mongoTeamId.hashCode ^
        monthTxnsCount.hashCode ^
        paidAt.hashCode ^
        paymentBatchId.hashCode ^
        paymentStatus.hashCode ^
        periodEndDate.hashCode ^
        periodStartDate.hashCode ^
        phoneNumber.hashCode ^
        processedAt.hashCode ^
        referralCode.hashCode ^
        status.hashCode ^
        teamId.hashCode ^
        txnsCount.hashCode ^
        updateMeta.hashCode ^
        updatedAt.hashCode ^
        weekOf.hashCode ^
        weekTxnsCount.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
