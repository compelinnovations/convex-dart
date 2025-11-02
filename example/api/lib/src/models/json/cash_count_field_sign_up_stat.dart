// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class CashCountFieldSignUpStat {
  final double approved;
  final double invalid;
  final double pending;
  final double rejected;
  final double total;

  const CashCountFieldSignUpStat({
    required this.approved,
    required this.invalid,
    required this.pending,
    required this.rejected,
    required this.total,
  });

  factory CashCountFieldSignUpStat.empty() {
    return CashCountFieldSignUpStat(
      approved: 0.0,
      invalid: 0.0,
      pending: 0.0,
      rejected: 0.0,
      total: 0.0,
    );
  }

  factory CashCountFieldSignUpStat.fromJson(Map<String, dynamic> json) {
    return CashCountFieldSignUpStat(
      approved: json['approved'] as double,
      invalid: json['invalid'] as double,
      pending: json['pending'] as double,
      rejected: json['rejected'] as double,
      total: json['total'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'approved': approved,
      'invalid': invalid,
      'pending': pending,
      'rejected': rejected,
      'total': total,
    };
  }

  /// Create from inline record (used in typedef conversions)
  factory CashCountFieldSignUpStat.fromRecord(
    ({
      double approved,
      double invalid,
      double pending,
      double rejected,
      double total,
    })
    record,
  ) {
    return CashCountFieldSignUpStat(
      approved: record.approved,
      invalid: record.invalid,
      pending: record.pending,
      rejected: record.rejected,
      total: record.total,
    );
  }

  /// Convert to inline record (inverse of fromRecord)
  ({
    double approved,
    double invalid,
    double pending,
    double rejected,
    double total,
  })
  toRecord() {
    return (
      approved: approved,
      invalid: invalid,
      pending: pending,
      rejected: rejected,
      total: total,
    );
  }

  CashCountFieldSignUpStat copyWith({
    double? approved,
    double? invalid,
    double? pending,
    double? rejected,
    double? total,
  }) {
    return CashCountFieldSignUpStat(
      approved: approved ?? this.approved,
      invalid: invalid ?? this.invalid,
      pending: pending ?? this.pending,
      rejected: rejected ?? this.rejected,
      total: total ?? this.total,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CashCountFieldSignUpStat &&
        other.approved == approved &&
        other.invalid == invalid &&
        other.pending == pending &&
        other.rejected == rejected &&
        other.total == total;
  }

  @override
  int get hashCode {
    return approved.hashCode ^
        invalid.hashCode ^
        pending.hashCode ^
        rejected.hashCode ^
        total.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
