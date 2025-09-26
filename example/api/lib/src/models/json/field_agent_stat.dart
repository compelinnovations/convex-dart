// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class FieldAgentStat {
  final FieldAgentStatsId $_id;
  final double createdAt;
  final Optional<double> deletedAt;
  final Optional<double> totalCashCountSignUps;
  final Optional<double> totalCommissionsEarned;
  final Optional<double> totalCommissionsInvalid;
  final Optional<double> totalCommissionsPaid;
  final Optional<double> totalCompletedCashCountSignUps;
  final Optional<double> totalExpiredCashCountSignUps;
  final Optional<double> totalPendingCashCountSignUps;
  final Optional<double> updatedAt;
  final UsersId userId;

  const FieldAgentStat({
    required this.$_id,
    required this.createdAt,
    this.deletedAt = const Undefined(),
    this.totalCashCountSignUps = const Undefined(),
    this.totalCommissionsEarned = const Undefined(),
    this.totalCommissionsInvalid = const Undefined(),
    this.totalCommissionsPaid = const Undefined(),
    this.totalCompletedCashCountSignUps = const Undefined(),
    this.totalExpiredCashCountSignUps = const Undefined(),
    this.totalPendingCashCountSignUps = const Undefined(),
    this.updatedAt = const Undefined(),
    required this.userId,
  });

  factory FieldAgentStat.empty() {
    return FieldAgentStat(
      $_id: FieldAgentStatsId(''),
      createdAt: 0.0,
      userId: UsersId(''),
    );
  }

  factory FieldAgentStat.fromJson(Map<String, dynamic> json) {
    return FieldAgentStat(
      $_id: FieldAgentStatsId(json['_id'] as String),
      createdAt: json['createdAt'] as double,
      deletedAt: json['deletedAt'] != null
          ? Defined(json['deletedAt'] as double)
          : const Undefined(),
      totalCashCountSignUps: json['totalCashCountSignUps'] != null
          ? Defined(json['totalCashCountSignUps'] as double)
          : const Undefined(),
      totalCommissionsEarned: json['totalCommissionsEarned'] != null
          ? Defined(json['totalCommissionsEarned'] as double)
          : const Undefined(),
      totalCommissionsInvalid: json['totalCommissionsInvalid'] != null
          ? Defined(json['totalCommissionsInvalid'] as double)
          : const Undefined(),
      totalCommissionsPaid: json['totalCommissionsPaid'] != null
          ? Defined(json['totalCommissionsPaid'] as double)
          : const Undefined(),
      totalCompletedCashCountSignUps:
          json['totalCompletedCashCountSignUps'] != null
          ? Defined(json['totalCompletedCashCountSignUps'] as double)
          : const Undefined(),
      totalExpiredCashCountSignUps: json['totalExpiredCashCountSignUps'] != null
          ? Defined(json['totalExpiredCashCountSignUps'] as double)
          : const Undefined(),
      totalPendingCashCountSignUps: json['totalPendingCashCountSignUps'] != null
          ? Defined(json['totalPendingCashCountSignUps'] as double)
          : const Undefined(),
      updatedAt: json['updatedAt'] != null
          ? Defined(json['updatedAt'] as double)
          : const Undefined(),
      userId: UsersId(json['userId'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': $_id,
      'createdAt': createdAt,
      if (deletedAt.isDefined) 'deletedAt': deletedAt.asDefined().value,
      if (totalCashCountSignUps.isDefined)
        'totalCashCountSignUps': totalCashCountSignUps.asDefined().value,
      if (totalCommissionsEarned.isDefined)
        'totalCommissionsEarned': totalCommissionsEarned.asDefined().value,
      if (totalCommissionsInvalid.isDefined)
        'totalCommissionsInvalid': totalCommissionsInvalid.asDefined().value,
      if (totalCommissionsPaid.isDefined)
        'totalCommissionsPaid': totalCommissionsPaid.asDefined().value,
      if (totalCompletedCashCountSignUps.isDefined)
        'totalCompletedCashCountSignUps': totalCompletedCashCountSignUps
            .asDefined()
            .value,
      if (totalExpiredCashCountSignUps.isDefined)
        'totalExpiredCashCountSignUps': totalExpiredCashCountSignUps
            .asDefined()
            .value,
      if (totalPendingCashCountSignUps.isDefined)
        'totalPendingCashCountSignUps': totalPendingCashCountSignUps
            .asDefined()
            .value,
      if (updatedAt.isDefined) 'updatedAt': updatedAt.asDefined().value,
      'userId': userId,
    };
  }

  FieldAgentStat copyWith({
    FieldAgentStatsId? $_id,
    double? createdAt,
    Optional<double>? deletedAt,
    Optional<double>? totalCashCountSignUps,
    Optional<double>? totalCommissionsEarned,
    Optional<double>? totalCommissionsInvalid,
    Optional<double>? totalCommissionsPaid,
    Optional<double>? totalCompletedCashCountSignUps,
    Optional<double>? totalExpiredCashCountSignUps,
    Optional<double>? totalPendingCashCountSignUps,
    Optional<double>? updatedAt,
    UsersId? userId,
  }) {
    return FieldAgentStat(
      $_id: $_id ?? this.$_id,
      createdAt: createdAt ?? this.createdAt,
      deletedAt: deletedAt ?? this.deletedAt,
      totalCashCountSignUps:
          totalCashCountSignUps ?? this.totalCashCountSignUps,
      totalCommissionsEarned:
          totalCommissionsEarned ?? this.totalCommissionsEarned,
      totalCommissionsInvalid:
          totalCommissionsInvalid ?? this.totalCommissionsInvalid,
      totalCommissionsPaid: totalCommissionsPaid ?? this.totalCommissionsPaid,
      totalCompletedCashCountSignUps:
          totalCompletedCashCountSignUps ?? this.totalCompletedCashCountSignUps,
      totalExpiredCashCountSignUps:
          totalExpiredCashCountSignUps ?? this.totalExpiredCashCountSignUps,
      totalPendingCashCountSignUps:
          totalPendingCashCountSignUps ?? this.totalPendingCashCountSignUps,
      updatedAt: updatedAt ?? this.updatedAt,
      userId: userId ?? this.userId,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FieldAgentStat &&
        other.$_id == $_id &&
        other.createdAt == createdAt &&
        other.deletedAt == deletedAt &&
        other.totalCashCountSignUps == totalCashCountSignUps &&
        other.totalCommissionsEarned == totalCommissionsEarned &&
        other.totalCommissionsInvalid == totalCommissionsInvalid &&
        other.totalCommissionsPaid == totalCommissionsPaid &&
        other.totalCompletedCashCountSignUps ==
            totalCompletedCashCountSignUps &&
        other.totalExpiredCashCountSignUps == totalExpiredCashCountSignUps &&
        other.totalPendingCashCountSignUps == totalPendingCashCountSignUps &&
        other.updatedAt == updatedAt &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    return $_id.hashCode ^
        createdAt.hashCode ^
        deletedAt.hashCode ^
        totalCashCountSignUps.hashCode ^
        totalCommissionsEarned.hashCode ^
        totalCommissionsInvalid.hashCode ^
        totalCommissionsPaid.hashCode ^
        totalCompletedCashCountSignUps.hashCode ^
        totalExpiredCashCountSignUps.hashCode ^
        totalPendingCashCountSignUps.hashCode ^
        updatedAt.hashCode ^
        userId.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
