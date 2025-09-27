import 'package:objectbox/objectbox.dart';
import 'package:convex_dart/convex_dart.dart';
import '../../../schema.dart';
import '../../json/index.dart';

@Entity()
class FieldAgentStatBox {
  @Id()
  int id = 0;

  String dbId;
  @Property(type: PropertyType.dateNano)
  int createdAt;
  @Property(type: PropertyType.dateNano)
  int? deletedAt;
  double? totalCashCountSignUps;
  double? totalCommissionsEarned;
  double? totalCommissionsInvalid;
  double? totalCommissionsPaid;
  double? totalCompletedCashCountSignUps;
  double? totalExpiredCashCountSignUps;
  double? totalPendingCashCountSignUps;
  @Property(type: PropertyType.dateNano)
  int? updatedAt;
  String userId;

  FieldAgentStatBox({
    this.id = 0,
    required this.dbId,
    required this.createdAt,
    this.deletedAt,
    this.totalCashCountSignUps,
    this.totalCommissionsEarned,
    this.totalCommissionsInvalid,
    this.totalCommissionsPaid,
    this.totalCompletedCashCountSignUps,
    this.totalExpiredCashCountSignUps,
    this.totalPendingCashCountSignUps,
    this.updatedAt,
    required this.userId,
  });

  factory FieldAgentStatBox.fromAPI(FieldAgentStat model) {
    return FieldAgentStatBox(
      id: 0,
      dbId: model.$_id.value,
      createdAt: model.createdAt.round(),
      deletedAt: model.deletedAt.isDefined
          ? model.deletedAt.asDefined().value.round()
          : null,
      totalCashCountSignUps: model.totalCashCountSignUps.isDefined
          ? model.totalCashCountSignUps.asDefined().value
          : null,
      totalCommissionsEarned: model.totalCommissionsEarned.isDefined
          ? model.totalCommissionsEarned.asDefined().value
          : null,
      totalCommissionsInvalid: model.totalCommissionsInvalid.isDefined
          ? model.totalCommissionsInvalid.asDefined().value
          : null,
      totalCommissionsPaid: model.totalCommissionsPaid.isDefined
          ? model.totalCommissionsPaid.asDefined().value
          : null,
      totalCompletedCashCountSignUps:
          model.totalCompletedCashCountSignUps.isDefined
          ? model.totalCompletedCashCountSignUps.asDefined().value
          : null,
      totalExpiredCashCountSignUps: model.totalExpiredCashCountSignUps.isDefined
          ? model.totalExpiredCashCountSignUps.asDefined().value
          : null,
      totalPendingCashCountSignUps: model.totalPendingCashCountSignUps.isDefined
          ? model.totalPendingCashCountSignUps.asDefined().value
          : null,
      updatedAt: model.updatedAt.isDefined
          ? model.updatedAt.asDefined().value.round()
          : null,
      userId: model.userId.value,
    );
  }

  FieldAgentStat toAPI() {
    return FieldAgentStat(
      $_id: FieldAgentStatsId(dbId),
      createdAt: createdAt.toDouble(),
      deletedAt: deletedAt != null
          ? Defined(deletedAt!.toDouble())
          : const Undefined(),
      totalCashCountSignUps: totalCashCountSignUps != null
          ? Defined(totalCashCountSignUps!)
          : const Undefined(),
      totalCommissionsEarned: totalCommissionsEarned != null
          ? Defined(totalCommissionsEarned!)
          : const Undefined(),
      totalCommissionsInvalid: totalCommissionsInvalid != null
          ? Defined(totalCommissionsInvalid!)
          : const Undefined(),
      totalCommissionsPaid: totalCommissionsPaid != null
          ? Defined(totalCommissionsPaid!)
          : const Undefined(),
      totalCompletedCashCountSignUps: totalCompletedCashCountSignUps != null
          ? Defined(totalCompletedCashCountSignUps!)
          : const Undefined(),
      totalExpiredCashCountSignUps: totalExpiredCashCountSignUps != null
          ? Defined(totalExpiredCashCountSignUps!)
          : const Undefined(),
      totalPendingCashCountSignUps: totalPendingCashCountSignUps != null
          ? Defined(totalPendingCashCountSignUps!)
          : const Undefined(),
      updatedAt: updatedAt != null
          ? Defined(updatedAt!.toDouble())
          : const Undefined(),
      userId: UsersId(userId),
    );
  }
}
