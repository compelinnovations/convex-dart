// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "cash_count_field_sign_up.dart";
import "../../functions/fieldAgentCashCount/listPendingFieldSignUps.dart"
    show CashCountFieldSignUpsDoc;

class CashCountFieldSignUps {
  final String continueCursor;
  final IList<CashCountFieldSignUpsId> deletedIds;
  final bool isDone;
  final IList<CashCountFieldSignUp> list;

  const CashCountFieldSignUps({
    required this.continueCursor,
    required this.deletedIds,
    required this.isDone,
    required this.list,
  });

  factory CashCountFieldSignUps.empty() {
    return CashCountFieldSignUps(
      continueCursor: '',
      deletedIds: <CashCountFieldSignUpsId>[].toIList(),
      isDone: false,
      list: <CashCountFieldSignUp>[].toIList(),
    );
  }

  factory CashCountFieldSignUps.fromJson(Map<String, dynamic> json) {
    return CashCountFieldSignUps(
      continueCursor: json['continueCursor'] as String,
      deletedIds: (json['deletedIds'] as List<dynamic>)
          .map((e) => CashCountFieldSignUpsId(e as String))
          .toList()
          .toIList(),
      isDone: json['isDone'] as bool,
      list: (json['list'] as List<dynamic>)
          .map(
            (item) =>
                CashCountFieldSignUp.fromJson(item as Map<String, dynamic>),
          )
          .toList()
          .toIList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'continueCursor': continueCursor,
      'deletedIds': deletedIds.map((item) => item.value).toList(),
      'isDone': isDone,
      'list': list.toList(),
    };
  }

  /// Create from Convex typedef record
  factory CashCountFieldSignUps.fromDoc(CashCountFieldSignUpsDoc doc) {
    return CashCountFieldSignUps(
      continueCursor: doc.continueCursor,
      deletedIds: doc.deletedIds,
      isDone: doc.isDone,
      list: doc.list
          .map((item) => CashCountFieldSignUp.fromRecord(item))
          .toIList(),
    );
  }

  /// Convert to Convex typedef record
  dynamic toDoc() {
    return (
      continueCursor: continueCursor,
      deletedIds: deletedIds,
      isDone: isDone,
      list: list,
    );
  }

  CashCountFieldSignUps copyWith({
    String? continueCursor,
    IList<CashCountFieldSignUpsId>? deletedIds,
    bool? isDone,
    IList<CashCountFieldSignUp>? list,
  }) {
    return CashCountFieldSignUps(
      continueCursor: continueCursor ?? this.continueCursor,
      deletedIds: deletedIds ?? this.deletedIds,
      isDone: isDone ?? this.isDone,
      list: list ?? this.list,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CashCountFieldSignUps &&
        other.continueCursor == continueCursor &&
        other.deletedIds == deletedIds &&
        other.isDone == isDone &&
        other.list == list;
  }

  @override
  int get hashCode {
    return continueCursor.hashCode ^
        deletedIds.hashCode ^
        isDone.hashCode ^
        list.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
