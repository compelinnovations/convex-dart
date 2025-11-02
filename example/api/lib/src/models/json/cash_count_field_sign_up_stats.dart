// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "cash_count_field_sign_up_stat.dart";
import "cash_count_field_sign_up_stat_week.dart";
import "../../functions/fieldAgentCashCount/getCashCountFieldSignUpStats.dart"
    show CashCountFieldSignUpStatsDoc;

class CashCountFieldSignUpStats {
  final CashCountFieldSignUpStat month;
  final CashCountFieldSignUpStat today;
  final CashCountFieldSignUpStatWeek week;

  const CashCountFieldSignUpStats({
    required this.month,
    required this.today,
    required this.week,
  });

  factory CashCountFieldSignUpStats.empty() {
    return CashCountFieldSignUpStats(
      month: CashCountFieldSignUpStat.empty(),
      today: CashCountFieldSignUpStat.empty(),
      week: CashCountFieldSignUpStatWeek.empty(),
    );
  }

  factory CashCountFieldSignUpStats.fromJson(Map<String, dynamic> json) {
    return CashCountFieldSignUpStats(
      month: CashCountFieldSignUpStat.fromJson(
        json['month'] as Map<String, dynamic>,
      ),
      today: CashCountFieldSignUpStat.fromJson(
        json['today'] as Map<String, dynamic>,
      ),
      week: CashCountFieldSignUpStatWeek.fromJson(
        json['week'] as Map<String, dynamic>,
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'month': month.toJson(),
      'today': today.toJson(),
      'week': week.toJson(),
    };
  }

  /// Create from Convex typedef record
  factory CashCountFieldSignUpStats.fromDoc(CashCountFieldSignUpStatsDoc doc) {
    return CashCountFieldSignUpStats(
      month: CashCountFieldSignUpStat.fromRecord(doc.month),
      today: CashCountFieldSignUpStat.fromRecord(doc.today),
      week: CashCountFieldSignUpStatWeek.fromRecord(doc.week),
    );
  }

  /// Convert to Convex typedef record
  dynamic toDoc() {
    return (
      month: month.toRecord(),
      today: today.toRecord(),
      week: week.toRecord(),
    );
  }

  CashCountFieldSignUpStats copyWith({
    CashCountFieldSignUpStat? month,
    CashCountFieldSignUpStat? today,
    CashCountFieldSignUpStatWeek? week,
  }) {
    return CashCountFieldSignUpStats(
      month: month ?? this.month,
      today: today ?? this.today,
      week: week ?? this.week,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CashCountFieldSignUpStats &&
        other.month == month &&
        other.today == today &&
        other.week == week;
  }

  @override
  int get hashCode {
    return month.hashCode ^ today.hashCode ^ week.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
