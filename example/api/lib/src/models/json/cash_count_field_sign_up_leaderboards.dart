// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "cash_count_field_sign_up_position.dart";
import "../../functions/fieldAgentCashCount/listCashCountFieldSignUpLeaderboard.dart"
    show CashCountFieldSignUpLeaderboardsDoc;

class CashCountFieldSignUpLeaderboards {
  final IList<FieldAgentsId> deletedIds;
  final IList<CashCountFieldSignUpPosition> list;

  const CashCountFieldSignUpLeaderboards({
    required this.deletedIds,
    required this.list,
  });

  factory CashCountFieldSignUpLeaderboards.empty() {
    return CashCountFieldSignUpLeaderboards(
      deletedIds: <FieldAgentsId>[].toIList(),
      list: <CashCountFieldSignUpPosition>[].toIList(),
    );
  }

  factory CashCountFieldSignUpLeaderboards.fromJson(Map<String, dynamic> json) {
    return CashCountFieldSignUpLeaderboards(
      deletedIds: (json['deletedIds'] as List<dynamic>)
          .map((e) => FieldAgentsId(e as String))
          .toList()
          .toIList(),
      list: (json['list'] as List<dynamic>)
          .map(
            (item) => CashCountFieldSignUpPosition.fromJson(
              item as Map<String, dynamic>,
            ),
          )
          .toList()
          .toIList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'deletedIds': deletedIds.map((item) => item.value).toList(),
      'list': list.toList(),
    };
  }

  /// Create from Convex typedef record
  factory CashCountFieldSignUpLeaderboards.fromDoc(
    CashCountFieldSignUpLeaderboardsDoc doc,
  ) {
    return CashCountFieldSignUpLeaderboards(
      deletedIds: doc.deletedIds,
      list: doc.list
          .map((item) => CashCountFieldSignUpPosition.fromRecord(item))
          .toIList(),
    );
  }

  /// Convert to Convex typedef record
  dynamic toDoc() {
    return (deletedIds: deletedIds, list: list);
  }

  CashCountFieldSignUpLeaderboards copyWith({
    IList<FieldAgentsId>? deletedIds,
    IList<CashCountFieldSignUpPosition>? list,
  }) {
    return CashCountFieldSignUpLeaderboards(
      deletedIds: deletedIds ?? this.deletedIds,
      list: list ?? this.list,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CashCountFieldSignUpLeaderboards &&
        other.deletedIds == deletedIds &&
        other.list == list;
  }

  @override
  int get hashCode {
    return deletedIds.hashCode ^ list.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
