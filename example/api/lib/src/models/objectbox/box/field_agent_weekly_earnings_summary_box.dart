import 'package:objectbox/objectbox.dart';
import 'package:convex_dart/convex_dart.dart';
import '../../../schema.dart';
import '../../json/index.dart';

@Entity()
class FieldAgentWeeklyEarningsSummaryBox {
  @Id()
  int id = 0;

  String? batchId;
  double commissionPerAcquisition;
  @Property(type: PropertyType.dateNano)
  int? paidAt;
  String? payoutStatus;
  @Property(type: PropertyType.dateNano)
  int periodEndDate;
  @Property(type: PropertyType.dateNano)
  int periodStartDate;
  double totalEarnings;
  double totalSignUps;
  String weekLabel;

  FieldAgentWeeklyEarningsSummaryBox({
    this.id = 0,
    this.batchId,
    required this.commissionPerAcquisition,
    this.paidAt,
    this.payoutStatus,
    required this.periodEndDate,
    required this.periodStartDate,
    required this.totalEarnings,
    required this.totalSignUps,
    required this.weekLabel,
  });

  factory FieldAgentWeeklyEarningsSummaryBox.fromAPI(
    FieldAgentWeeklyEarningsSummary model,
  ) {
    return FieldAgentWeeklyEarningsSummaryBox(
      id: 0,
      batchId: model.batchId.isDefined
          ? model.batchId.asDefined().value.value
          : null,
      commissionPerAcquisition: model.commissionPerAcquisition,
      paidAt: model.paidAt.isDefined
          ? model.paidAt.asDefined().value.round()
          : null,
      payoutStatus: model.payoutStatus.isDefined
          ? model.payoutStatus.asDefined().value
          : null,
      periodEndDate: model.periodEndDate.round(),
      periodStartDate: model.periodStartDate.round(),
      totalEarnings: model.totalEarnings,
      totalSignUps: model.totalSignUps,
      weekLabel: model.weekLabel,
    );
  }

  FieldAgentWeeklyEarningsSummary toAPI() {
    return FieldAgentWeeklyEarningsSummary(
      batchId: batchId != null
          ? Defined(FieldAgentPaymentBatchesId(batchId!))
          : const Undefined(),
      commissionPerAcquisition: commissionPerAcquisition,
      paidAt: paidAt != null ? Defined(paidAt!.toDouble()) : const Undefined(),
      payoutStatus: payoutStatus != null
          ? Defined(payoutStatus!)
          : const Undefined(),
      periodEndDate: periodEndDate.toDouble(),
      periodStartDate: periodStartDate.toDouble(),
      totalEarnings: totalEarnings,
      totalSignUps: totalSignUps,
      weekLabel: weekLabel,
    );
  }

  /// Convert directly from Convex typedef record to ObjectBox
  /// Bypasses the JSON model intermediate step for better performance
  factory FieldAgentWeeklyEarningsSummaryBox.fromDoc(dynamic doc) {
    return FieldAgentWeeklyEarningsSummaryBox.fromAPI(
      FieldAgentWeeklyEarningsSummary.fromDoc(doc),
    );
  }

  /// Convert directly from ObjectBox to Convex typedef record
  /// Returns a record that matches the Convex typedef structure
  dynamic toDoc() {
    return toAPI().toDoc();
  }
}
