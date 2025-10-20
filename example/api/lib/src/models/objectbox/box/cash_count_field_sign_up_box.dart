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
  @Property(type: PropertyType.dateNano)
  int? completedAt;
  String? completedMeta;
  String? createMeta;
  @Property(type: PropertyType.dateNano)
  int createdAt;
  String creatorId;
  @Property(type: PropertyType.dateNano)
  int? deletedAt;
  String? deletedMeta;
  String deviceId;
  String deviceInfo;
  @Property(type: PropertyType.dateNano)
  int? expiredAt;
  String fieldAgentId;
  String mongoId;
  String phoneNumber;
  String referralCode;
  @Property(type: PropertyType.dateNano)
  int? rejectionAt;
  String? rejectionMeta;
  String? rejectionReason;
  @Property(type: PropertyType.dateNano)
  int? statUpdatedAt;
  String status;
  String? teamId;
  String? updateMeta;
  @Property(type: PropertyType.dateNano)
  int? updatedAt;

  CashCountFieldSignUpBox({
    this.id = 0,
    required this.creationTime,
    required this.dbId,
    this.completedAt,
    this.completedMeta,
    this.createMeta,
    required this.createdAt,
    required this.creatorId,
    this.deletedAt,
    this.deletedMeta,
    required this.deviceId,
    required this.deviceInfo,
    this.expiredAt,
    required this.fieldAgentId,
    required this.mongoId,
    required this.phoneNumber,
    required this.referralCode,
    this.rejectionAt,
    this.rejectionMeta,
    this.rejectionReason,
    this.statUpdatedAt,
    required this.status,
    this.teamId,
    this.updateMeta,
    this.updatedAt,
  });

  factory CashCountFieldSignUpBox.fromAPI(CashCountFieldSignUp model) {
    return CashCountFieldSignUpBox(
      id: 0,
      creationTime: model.$_creationTime.round(),
      dbId: model.$_id.value,
      completedAt: model.completedAt.isDefined
          ? model.completedAt.asDefined().value.round()
          : null,
      completedMeta: model.completedMeta.isDefined
          ? jsonEncode(model.completedMeta.asDefined().value.toJson())
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
      mongoId: model.mongoId,
      phoneNumber: model.phoneNumber,
      referralCode: model.referralCode,
      rejectionAt: model.rejectionAt.isDefined
          ? model.rejectionAt.asDefined().value.round()
          : null,
      rejectionMeta: model.rejectionMeta.isDefined
          ? jsonEncode(model.rejectionMeta.asDefined().value.toJson())
          : null,
      rejectionReason: model.rejectionReason.isDefined
          ? model.rejectionReason.asDefined().value
          : null,
      statUpdatedAt: model.statUpdatedAt.isDefined
          ? model.statUpdatedAt.asDefined().value.round()
          : null,
      status: jsonEncode(
        model.status.value is String
            ? model.status.value
            : (model.status.value as dynamic).value,
      ),
      teamId: model.teamId.isDefined ? model.teamId.asDefined().value : null,
      updateMeta: model.updateMeta.isDefined
          ? jsonEncode(model.updateMeta.asDefined().value.toJson())
          : null,
      updatedAt: model.updatedAt.isDefined
          ? model.updatedAt.asDefined().value.round()
          : null,
    );
  }

  CashCountFieldSignUp toAPI() {
    return CashCountFieldSignUp(
      $_creationTime: creationTime.toDouble(),
      $_id: CashCountFieldSignUpsId(dbId),
      completedAt: completedAt != null
          ? Defined(completedAt!.toDouble())
          : const Undefined(),
      completedMeta: completedMeta != null
          ? Defined(
              AuditAction.fromJson(
                jsonDecode(completedMeta!) as Map<String, dynamic>,
              ),
            )
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
      mongoId: mongoId,
      phoneNumber: phoneNumber,
      referralCode: referralCode,
      rejectionAt: rejectionAt != null
          ? Defined(rejectionAt!.toDouble())
          : const Undefined(),
      rejectionMeta: rejectionMeta != null
          ? Defined(
              AuditAction.fromJson(
                jsonDecode(rejectionMeta!) as Map<String, dynamic>,
              ),
            )
          : const Undefined(),
      rejectionReason: rejectionReason != null
          ? Defined(rejectionReason!)
          : const Undefined(),
      statUpdatedAt: statUpdatedAt != null
          ? Defined(statUpdatedAt!.toDouble())
          : const Undefined(),
      status: jsonDecode(status),
      teamId: teamId != null ? Defined(teamId!) : const Undefined(),
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
    );
  }
}
