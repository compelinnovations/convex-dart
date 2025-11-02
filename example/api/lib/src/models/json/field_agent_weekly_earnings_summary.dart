// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "../../functions/fieldAgentEarnings/getFieldAgentWeeklyEarningsSummary.dart"
    show FieldAgentWeeklyEarningsSummaryDoc;

class FieldAgentWeeklyEarningsSummary {
  final Optional<FieldAgentPaymentBatchesId> batchId;
  final double commissionPerAcquisition;
  final Optional<double> paidAt;
  final Optional<String> payoutStatus;
  final double periodEndDate;
  final double periodStartDate;
  final double totalEarnings;
  final double totalSignUps;
  final String weekLabel;

  const FieldAgentWeeklyEarningsSummary({
    this.batchId = const Undefined(),
    required this.commissionPerAcquisition,
    this.paidAt = const Undefined(),
    this.payoutStatus = const Undefined(),
    required this.periodEndDate,
    required this.periodStartDate,
    required this.totalEarnings,
    required this.totalSignUps,
    required this.weekLabel,
  });

  factory FieldAgentWeeklyEarningsSummary.empty() {
    return FieldAgentWeeklyEarningsSummary(
      commissionPerAcquisition: 0.0,
      periodEndDate: 0.0,
      periodStartDate: 0.0,
      totalEarnings: 0.0,
      totalSignUps: 0.0,
      weekLabel: '',
    );
  }

  factory FieldAgentWeeklyEarningsSummary.fromJson(Map<String, dynamic> json) {
    return FieldAgentWeeklyEarningsSummary(
      batchId: json['batchId'] != null
          ? Defined(FieldAgentPaymentBatchesId(json['batchId'] as String))
          : const Undefined(),
      commissionPerAcquisition: json['commissionPerAcquisition'] as double,
      paidAt: json['paidAt'] != null
          ? Defined(json['paidAt'] as double)
          : const Undefined(),
      payoutStatus: json['payoutStatus'] != null
          ? Defined(json['payoutStatus'] as String)
          : const Undefined(),
      periodEndDate: json['periodEndDate'] as double,
      periodStartDate: json['periodStartDate'] as double,
      totalEarnings: json['totalEarnings'] as double,
      totalSignUps: json['totalSignUps'] as double,
      weekLabel: json['weekLabel'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (batchId.isDefined) 'batchId': batchId.asDefined().value.value,
      'commissionPerAcquisition': commissionPerAcquisition,
      if (paidAt.isDefined) 'paidAt': paidAt.asDefined().value,
      if (payoutStatus.isDefined)
        'payoutStatus': payoutStatus.asDefined().value,
      'periodEndDate': periodEndDate,
      'periodStartDate': periodStartDate,
      'totalEarnings': totalEarnings,
      'totalSignUps': totalSignUps,
      'weekLabel': weekLabel,
    };
  }

  /// Create from Convex typedef record
  factory FieldAgentWeeklyEarningsSummary.fromDoc(
    FieldAgentWeeklyEarningsSummaryDoc doc,
  ) {
    return FieldAgentWeeklyEarningsSummary(
      batchId: doc.batchId.isDefined
          ? Defined(doc.batchId.asDefined().value)
          : const Undefined(),
      commissionPerAcquisition: doc.commissionPerAcquisition,
      paidAt: doc.paidAt.isDefined
          ? Defined(doc.paidAt.asDefined().value)
          : const Undefined(),
      payoutStatus: doc.payoutStatus.isDefined
          ? Defined(doc.payoutStatus.asDefined().value)
          : const Undefined(),
      periodEndDate: doc.periodEndDate,
      periodStartDate: doc.periodStartDate,
      totalEarnings: doc.totalEarnings,
      totalSignUps: doc.totalSignUps,
      weekLabel: doc.weekLabel,
    );
  }

  /// Convert to Convex typedef record
  dynamic toDoc() {
    return (
      batchId: batchId,
      commissionPerAcquisition: commissionPerAcquisition,
      paidAt: paidAt,
      payoutStatus: payoutStatus,
      periodEndDate: periodEndDate,
      periodStartDate: periodStartDate,
      totalEarnings: totalEarnings,
      totalSignUps: totalSignUps,
      weekLabel: weekLabel,
    );
  }

  FieldAgentWeeklyEarningsSummary copyWith({
    Optional<FieldAgentPaymentBatchesId>? batchId,
    double? commissionPerAcquisition,
    Optional<double>? paidAt,
    Optional<String>? payoutStatus,
    double? periodEndDate,
    double? periodStartDate,
    double? totalEarnings,
    double? totalSignUps,
    String? weekLabel,
  }) {
    return FieldAgentWeeklyEarningsSummary(
      batchId: batchId ?? this.batchId,
      commissionPerAcquisition:
          commissionPerAcquisition ?? this.commissionPerAcquisition,
      paidAt: paidAt ?? this.paidAt,
      payoutStatus: payoutStatus ?? this.payoutStatus,
      periodEndDate: periodEndDate ?? this.periodEndDate,
      periodStartDate: periodStartDate ?? this.periodStartDate,
      totalEarnings: totalEarnings ?? this.totalEarnings,
      totalSignUps: totalSignUps ?? this.totalSignUps,
      weekLabel: weekLabel ?? this.weekLabel,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FieldAgentWeeklyEarningsSummary &&
        other.batchId == batchId &&
        other.commissionPerAcquisition == commissionPerAcquisition &&
        other.paidAt == paidAt &&
        other.payoutStatus == payoutStatus &&
        other.periodEndDate == periodEndDate &&
        other.periodStartDate == periodStartDate &&
        other.totalEarnings == totalEarnings &&
        other.totalSignUps == totalSignUps &&
        other.weekLabel == weekLabel;
  }

  @override
  int get hashCode {
    return batchId.hashCode ^
        commissionPerAcquisition.hashCode ^
        paidAt.hashCode ^
        payoutStatus.hashCode ^
        periodEndDate.hashCode ^
        periodStartDate.hashCode ^
        totalEarnings.hashCode ^
        totalSignUps.hashCode ^
        weekLabel.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
