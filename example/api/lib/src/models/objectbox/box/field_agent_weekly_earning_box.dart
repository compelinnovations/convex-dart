import 'package:objectbox/objectbox.dart';
import 'package:convex_dart/convex_dart.dart';
import '../../../schema.dart';
import '../../json/index.dart';

@Entity()
class FieldAgentWeeklyEarningBox {
  @Id()
  int id = 0;

  @Property(type: PropertyType.dateNano)
  int? approvedAt;
  String batchId;
  @Property(type: PropertyType.dateNano)
  int? paidAt;
  String payoutStatus;
  @Property(type: PropertyType.dateNano)
  int periodEndDate;
  @Property(type: PropertyType.dateNano)
  int periodStartDate;
  double totalAcquisitions;
  double totalEarnings;
  String weekLabel;
  String? weekOf;

  FieldAgentWeeklyEarningBox({
    this.id = 0,
    this.approvedAt,
    required this.batchId,
    this.paidAt,
    required this.payoutStatus,
    required this.periodEndDate,
    required this.periodStartDate,
    required this.totalAcquisitions,
    required this.totalEarnings,
    required this.weekLabel,
    this.weekOf,
  });

  factory FieldAgentWeeklyEarningBox.fromAPI(FieldAgentWeeklyEarning model) {
    return FieldAgentWeeklyEarningBox(
      id: 0,
      approvedAt: model.approvedAt.isDefined
          ? model.approvedAt.asDefined().value.round()
          : null,
      batchId: model.batchId.value,
      paidAt: model.paidAt.isDefined
          ? model.paidAt.asDefined().value.round()
          : null,
      payoutStatus: model.payoutStatus,
      periodEndDate: model.periodEndDate.round(),
      periodStartDate: model.periodStartDate.round(),
      totalAcquisitions: model.totalAcquisitions,
      totalEarnings: model.totalEarnings,
      weekLabel: model.weekLabel,
      weekOf: model.weekOf.isDefined ? model.weekOf.asDefined().value : null,
    );
  }

  FieldAgentWeeklyEarning toAPI() {
    return FieldAgentWeeklyEarning(
      approvedAt: approvedAt != null
          ? Defined(approvedAt!.toDouble())
          : const Undefined(),
      batchId: FieldAgentPaymentBatchesId(batchId),
      paidAt: paidAt != null ? Defined(paidAt!.toDouble()) : const Undefined(),
      payoutStatus: payoutStatus,
      periodEndDate: periodEndDate.toDouble(),
      periodStartDate: periodStartDate.toDouble(),
      totalAcquisitions: totalAcquisitions,
      totalEarnings: totalEarnings,
      weekLabel: weekLabel,
      weekOf: weekOf != null ? Defined(weekOf!) : const Undefined(),
    );
  }
}
