import 'package:objectbox/objectbox.dart';
import 'dart:convert';
import 'package:convex_dart/convex_dart.dart';
import '../../../schema.dart';
import '../../json/index.dart';

@Entity()
class CashCountFieldSignUpBox {
  @Id()
  int id = 0;

  String dbId;
  @Property(type: PropertyType.dateNano)
  int? completedAt;
  String? completedMeta;
  @Property(type: PropertyType.dateNano)
  int createdAt;
  String creatorId;
  @Property(type: PropertyType.dateNano)
  int? deletedAt;
  String? deletedMeta;
  String deviceInfo;
  @Property(type: PropertyType.dateNano)
  int? expiredAt;
  String? mongoId;
  String phoneNumber;
  @Property(type: PropertyType.dateNano)
  int? rejectionAt;
  String? rejectionMeta;
  String? rejectionReason;
  @Property(type: PropertyType.dateNano)
  int? statUpdatedAt;
  String status;
  String? updateMeta;
  @Property(type: PropertyType.dateNano)
  int? updatedAt;

  CashCountFieldSignUpBox({
    this.id = 0,
    required this.dbId,
    this.completedAt,
    this.completedMeta,
    required this.createdAt,
    required this.creatorId,
    this.deletedAt,
    this.deletedMeta,
    required this.deviceInfo,
    this.expiredAt,
    this.mongoId,
    required this.phoneNumber,
    this.rejectionAt,
    this.rejectionMeta,
    this.rejectionReason,
    this.statUpdatedAt,
    required this.status,
    this.updateMeta,
    this.updatedAt,
  });

  factory CashCountFieldSignUpBox.fromAPI(CashCountFieldSignUp model) {
    return CashCountFieldSignUpBox(
      id: 0,
      dbId: model.$_id.value,
      completedAt: model.completedAt.isDefined
          ? model.completedAt.asDefined().value.round()
          : null,
      completedMeta: model.completedMeta.isDefined
          ? jsonEncode(model.completedMeta.asDefined().value.toJson())
          : null,
      createdAt: model.createdAt.round(),
      creatorId: model.creatorId.value,
      deletedAt: model.deletedAt.isDefined
          ? model.deletedAt.asDefined().value.round()
          : null,
      deletedMeta: model.deletedMeta.isDefined
          ? jsonEncode(model.deletedMeta.asDefined().value.toJson())
          : null,
      deviceInfo: jsonEncode(model.deviceInfo.toJson()),
      expiredAt: model.expiredAt.isDefined
          ? model.expiredAt.asDefined().value.round()
          : null,
      mongoId: model.mongoId.isDefined ? model.mongoId.asDefined().value : null,
      phoneNumber: model.phoneNumber,
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
      status: jsonEncode(model.status.value),
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
      createdAt: createdAt.toDouble(),
      creatorId: UsersId(creatorId),
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
      deviceInfo: DeviceInfo.fromJson(
        jsonDecode(deviceInfo) as Map<String, dynamic>,
      ),
      expiredAt: expiredAt != null
          ? Defined(expiredAt!.toDouble())
          : const Undefined(),
      mongoId: mongoId != null ? Defined(mongoId!) : const Undefined(),
      phoneNumber: phoneNumber,
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
