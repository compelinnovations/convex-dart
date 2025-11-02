// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class FieldAgentWeeklyEarning {
  final Optional<double> approvedAt;
  final FieldAgentPaymentBatchesId batchId;
  final Optional<double> paidAt;
  final String payoutStatus;
  final double periodEndDate;
  final double periodStartDate;
  final double totalAcquisitions;
  final double totalEarnings;
  final String weekLabel;
  final Optional<String> weekOf;

  const FieldAgentWeeklyEarning({
    this.approvedAt = const Undefined(),
    required this.batchId,
    this.paidAt = const Undefined(),
    required this.payoutStatus,
    required this.periodEndDate,
    required this.periodStartDate,
    required this.totalAcquisitions,
    required this.totalEarnings,
    required this.weekLabel,
    this.weekOf = const Undefined(),
  });

  factory FieldAgentWeeklyEarning.empty() {
    return FieldAgentWeeklyEarning(
      batchId: FieldAgentPaymentBatchesId(''),
      payoutStatus: '',
      periodEndDate: 0.0,
      periodStartDate: 0.0,
      totalAcquisitions: 0.0,
      totalEarnings: 0.0,
      weekLabel: '',
    );
  }

  factory FieldAgentWeeklyEarning.fromJson(Map<String, dynamic> json) {
    return FieldAgentWeeklyEarning(
      approvedAt: json['approvedAt'] != null
          ? Defined(json['approvedAt'] as double)
          : const Undefined(),
      batchId: FieldAgentPaymentBatchesId(json['batchId'] as String),
      paidAt: json['paidAt'] != null
          ? Defined(json['paidAt'] as double)
          : const Undefined(),
      payoutStatus: json['payoutStatus'] as String,
      periodEndDate: json['periodEndDate'] as double,
      periodStartDate: json['periodStartDate'] as double,
      totalAcquisitions: json['totalAcquisitions'] as double,
      totalEarnings: json['totalEarnings'] as double,
      weekLabel: json['weekLabel'] as String,
      weekOf: json['weekOf'] != null
          ? Defined(json['weekOf'] as String)
          : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (approvedAt.isDefined) 'approvedAt': approvedAt.asDefined().value,
      'batchId': batchId.value,
      if (paidAt.isDefined) 'paidAt': paidAt.asDefined().value,
      'payoutStatus': payoutStatus,
      'periodEndDate': periodEndDate,
      'periodStartDate': periodStartDate,
      'totalAcquisitions': totalAcquisitions,
      'totalEarnings': totalEarnings,
      'weekLabel': weekLabel,
      if (weekOf.isDefined) 'weekOf': weekOf.asDefined().value,
    };
  }

  /// Create from inline record (used in typedef conversions)
  factory FieldAgentWeeklyEarning.fromRecord(
    ({
      Optional<double> approvedAt,
      FieldAgentPaymentBatchesId batchId,
      Optional<double> paidAt,
      String payoutStatus,
      double periodEndDate,
      double periodStartDate,
      double totalAcquisitions,
      double totalEarnings,
      String weekLabel,
      Optional<String> weekOf,
    })
    record,
  ) {
    return FieldAgentWeeklyEarning(
      approvedAt: record.approvedAt,
      batchId: record.batchId,
      paidAt: record.paidAt,
      payoutStatus: record.payoutStatus,
      periodEndDate: record.periodEndDate,
      periodStartDate: record.periodStartDate,
      totalAcquisitions: record.totalAcquisitions,
      totalEarnings: record.totalEarnings,
      weekLabel: record.weekLabel,
      weekOf: record.weekOf,
    );
  }

  FieldAgentWeeklyEarning copyWith({
    Optional<double>? approvedAt,
    FieldAgentPaymentBatchesId? batchId,
    Optional<double>? paidAt,
    String? payoutStatus,
    double? periodEndDate,
    double? periodStartDate,
    double? totalAcquisitions,
    double? totalEarnings,
    String? weekLabel,
    Optional<String>? weekOf,
  }) {
    return FieldAgentWeeklyEarning(
      approvedAt: approvedAt ?? this.approvedAt,
      batchId: batchId ?? this.batchId,
      paidAt: paidAt ?? this.paidAt,
      payoutStatus: payoutStatus ?? this.payoutStatus,
      periodEndDate: periodEndDate ?? this.periodEndDate,
      periodStartDate: periodStartDate ?? this.periodStartDate,
      totalAcquisitions: totalAcquisitions ?? this.totalAcquisitions,
      totalEarnings: totalEarnings ?? this.totalEarnings,
      weekLabel: weekLabel ?? this.weekLabel,
      weekOf: weekOf ?? this.weekOf,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FieldAgentWeeklyEarning &&
        other.approvedAt == approvedAt &&
        other.batchId == batchId &&
        other.paidAt == paidAt &&
        other.payoutStatus == payoutStatus &&
        other.periodEndDate == periodEndDate &&
        other.periodStartDate == periodStartDate &&
        other.totalAcquisitions == totalAcquisitions &&
        other.totalEarnings == totalEarnings &&
        other.weekLabel == weekLabel &&
        other.weekOf == weekOf;
  }

  @override
  int get hashCode {
    return approvedAt.hashCode ^
        batchId.hashCode ^
        paidAt.hashCode ^
        payoutStatus.hashCode ^
        periodEndDate.hashCode ^
        periodStartDate.hashCode ^
        totalAcquisitions.hashCode ^
        totalEarnings.hashCode ^
        weekLabel.hashCode ^
        weekOf.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
