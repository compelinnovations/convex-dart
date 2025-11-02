import 'package:objectbox/objectbox.dart';
import 'dart:convert';
import 'package:convex_dart/convex_dart.dart';
import '../../../schema.dart';
import '../../json/index.dart';

@Entity()
class CashCountFieldSignUpBox {
  @Id()
  int id = 0;

  @Property(type: PropertyType.dateNano)
  int creationTime;
  String dbId;
  String businessName;
  String? cashCountTeamId;
  String? cashCountUserFullName;
  String? cashCountUserId;
  String? cashCountUserRole;
  double? commissionAmount;
  String? createMeta;
  @Property(type: PropertyType.dateNano)
  int createdAt;
  String creatorId;
  double? dateEarned;
  @Property(type: PropertyType.dateNano)
  int? deletedAt;
  String? deletedMeta;
  String deviceId;
  String deviceInfo;
  @Property(type: PropertyType.dateNano)
  int? expiredAt;
  String fieldAgentId;
  String? fieldAgentName;
  String? invalidRejectionReason;
  String mongoId;
  String mongoTeamId;
  double? monthTxnsCount;
  @Property(type: PropertyType.dateNano)
  int? paidAt;
  String? paymentBatchId;
  String? paymentStatus;
  @Property(type: PropertyType.dateNano)
  int? periodEndDate;
  @Property(type: PropertyType.dateNano)
  int? periodStartDate;
  String phoneNumber;
  @Property(type: PropertyType.dateNano)
  int? processedAt;
  String referralCode;
  String status;
  String? teamId;
  double? txnsCount;
  String? updateMeta;
  @Property(type: PropertyType.dateNano)
  int? updatedAt;
  String? weekOf;
  double? weekTxnsCount;

  CashCountFieldSignUpBox({
    this.id = 0,
    required this.creationTime,
    required this.dbId,
    required this.businessName,
    this.cashCountTeamId,
    this.cashCountUserFullName,
    this.cashCountUserId,
    this.cashCountUserRole,
    this.commissionAmount,
    this.createMeta,
    required this.createdAt,
    required this.creatorId,
    this.dateEarned,
    this.deletedAt,
    this.deletedMeta,
    required this.deviceId,
    required this.deviceInfo,
    this.expiredAt,
    required this.fieldAgentId,
    this.fieldAgentName,
    this.invalidRejectionReason,
    required this.mongoId,
    required this.mongoTeamId,
    this.monthTxnsCount,
    this.paidAt,
    this.paymentBatchId,
    this.paymentStatus,
    this.periodEndDate,
    this.periodStartDate,
    required this.phoneNumber,
    this.processedAt,
    required this.referralCode,
    required this.status,
    this.teamId,
    this.txnsCount,
    this.updateMeta,
    this.updatedAt,
    this.weekOf,
    this.weekTxnsCount,
  });

  factory CashCountFieldSignUpBox.fromAPI(CashCountFieldSignUp model) {
    return CashCountFieldSignUpBox(
      id: 0,
      creationTime: model.$_creationTime.round(),
      dbId: model.$_id.value,
      businessName: model.businessName,
      cashCountTeamId: model.cashCountTeamId.isDefined
          ? model.cashCountTeamId.asDefined().value.value
          : null,
      cashCountUserFullName: model.cashCountUserFullName.isDefined
          ? model.cashCountUserFullName.asDefined().value
          : null,
      cashCountUserId: model.cashCountUserId.isDefined
          ? model.cashCountUserId.asDefined().value.value
          : null,
      cashCountUserRole: model.cashCountUserRole.isDefined
          ? model.cashCountUserRole.asDefined().value
          : null,
      commissionAmount: model.commissionAmount.isDefined
          ? model.commissionAmount.asDefined().value
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
      dateEarned: model.dateEarned.isDefined
          ? model.dateEarned.asDefined().value
          : null,
      deletedAt: model.deletedAt.isDefined
          ? model.deletedAt.asDefined().value.round()
          : null,
      deletedMeta: model.deletedMeta.isDefined
          ? jsonEncode(model.deletedMeta.asDefined().value.toJson())
          : null,
      deviceId: model.deviceId,
      deviceInfo: jsonEncode(model.deviceInfo.toJson()),
      expiredAt: model.expiredAt.isDefined
          ? model.expiredAt.asDefined().value.round()
          : null,
      fieldAgentId: model.fieldAgentId.value,
      fieldAgentName: model.fieldAgentName.isDefined
          ? model.fieldAgentName.asDefined().value
          : null,
      invalidRejectionReason: model.invalidRejectionReason.isDefined
          ? model.invalidRejectionReason.asDefined().value
          : null,
      mongoId: model.mongoId,
      mongoTeamId: model.mongoTeamId,
      monthTxnsCount: model.monthTxnsCount.isDefined
          ? model.monthTxnsCount.asDefined().value
          : null,
      paidAt: model.paidAt.isDefined
          ? model.paidAt.asDefined().value.round()
          : null,
      paymentBatchId: model.paymentBatchId.isDefined
          ? model.paymentBatchId.asDefined().value.value
          : null,
      paymentStatus: model.paymentStatus.isDefined
          ? model.paymentStatus.asDefined().value
          : null,
      periodEndDate: model.periodEndDate.isDefined
          ? model.periodEndDate.asDefined().value.round()
          : null,
      periodStartDate: model.periodStartDate.isDefined
          ? model.periodStartDate.asDefined().value.round()
          : null,
      phoneNumber: model.phoneNumber,
      processedAt: model.processedAt.isDefined
          ? model.processedAt.asDefined().value.round()
          : null,
      referralCode: model.referralCode,
      status: jsonEncode(
        model.status.value is String
            ? model.status.value
            : (model.status.value as dynamic).value,
      ),
      teamId: model.teamId.isDefined ? model.teamId.asDefined().value : null,
      txnsCount: model.txnsCount.isDefined
          ? model.txnsCount.asDefined().value
          : null,
      updateMeta: model.updateMeta.isDefined
          ? jsonEncode(model.updateMeta.asDefined().value.toJson())
          : null,
      updatedAt: model.updatedAt.isDefined
          ? model.updatedAt.asDefined().value.round()
          : null,
      weekOf: model.weekOf.isDefined ? model.weekOf.asDefined().value : null,
      weekTxnsCount: model.weekTxnsCount.isDefined
          ? model.weekTxnsCount.asDefined().value
          : null,
    );
  }

  CashCountFieldSignUp toAPI() {
    return CashCountFieldSignUp(
      $_creationTime: creationTime.toDouble(),
      $_id: CashCountFieldSignUpsId(dbId),
      businessName: businessName,
      cashCountTeamId: cashCountTeamId != null
          ? Defined(CashCountTeamsId(cashCountTeamId!))
          : const Undefined(),
      cashCountUserFullName: cashCountUserFullName != null
          ? Defined(cashCountUserFullName!)
          : const Undefined(),
      cashCountUserId: cashCountUserId != null
          ? Defined(CashCountAuthUsersId(cashCountUserId!))
          : const Undefined(),
      cashCountUserRole: cashCountUserRole != null
          ? Defined(cashCountUserRole!)
          : const Undefined(),
      commissionAmount: commissionAmount != null
          ? Defined(commissionAmount!)
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
      dateEarned: dateEarned != null ? Defined(dateEarned!) : const Undefined(),
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
      deviceId: deviceId,
      deviceInfo: DeviceInfo.fromJson(
        jsonDecode(deviceInfo) as Map<String, dynamic>,
      ),
      expiredAt: expiredAt != null
          ? Defined(expiredAt!.toDouble())
          : const Undefined(),
      fieldAgentId: FieldAgentsId(fieldAgentId),
      fieldAgentName: fieldAgentName != null
          ? Defined(fieldAgentName!)
          : const Undefined(),
      invalidRejectionReason: invalidRejectionReason != null
          ? Defined(invalidRejectionReason!)
          : const Undefined(),
      mongoId: mongoId,
      mongoTeamId: mongoTeamId,
      monthTxnsCount: monthTxnsCount != null
          ? Defined(monthTxnsCount!)
          : const Undefined(),
      paidAt: paidAt != null ? Defined(paidAt!.toDouble()) : const Undefined(),
      paymentBatchId: paymentBatchId != null
          ? Defined(FieldAgentPaymentBatchesId(paymentBatchId!))
          : const Undefined(),
      paymentStatus: paymentStatus != null
          ? Defined(paymentStatus!)
          : const Undefined(),
      periodEndDate: periodEndDate != null
          ? Defined(periodEndDate!.toDouble())
          : const Undefined(),
      periodStartDate: periodStartDate != null
          ? Defined(periodStartDate!.toDouble())
          : const Undefined(),
      phoneNumber: phoneNumber,
      processedAt: processedAt != null
          ? Defined(processedAt!.toDouble())
          : const Undefined(),
      referralCode: referralCode,
      status: jsonDecode(status),
      teamId: teamId != null ? Defined(teamId!) : const Undefined(),
      txnsCount: txnsCount != null ? Defined(txnsCount!) : const Undefined(),
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
      weekOf: weekOf != null ? Defined(weekOf!) : const Undefined(),
      weekTxnsCount: weekTxnsCount != null
          ? Defined(weekTxnsCount!)
          : const Undefined(),
    );
  }
}
