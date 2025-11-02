// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "field_agent_weekly_earning.dart";
import "../../functions/fieldAgentEarnings/listFieldAgentWeeklyEarnings.dart"
    show FieldAgentWeeklyEarningsDoc;

class FieldAgentWeeklyEarnings {
  final String continueCursor;
  final bool isDone;
  final IList<FieldAgentWeeklyEarning> list;

  const FieldAgentWeeklyEarnings({
    required this.continueCursor,
    required this.isDone,
    required this.list,
  });

  factory FieldAgentWeeklyEarnings.empty() {
    return FieldAgentWeeklyEarnings(
      continueCursor: '',
      isDone: false,
      list: <FieldAgentWeeklyEarning>[].toIList(),
    );
  }

  factory FieldAgentWeeklyEarnings.fromJson(Map<String, dynamic> json) {
    return FieldAgentWeeklyEarnings(
      continueCursor: json['continueCursor'] as String,
      isDone: json['isDone'] as bool,
      list: (json['list'] as List<dynamic>)
          .map(
            (item) =>
                FieldAgentWeeklyEarning.fromJson(item as Map<String, dynamic>),
          )
          .toList()
          .toIList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'continueCursor': continueCursor,
      'isDone': isDone,
      'list': list.toList(),
    };
  }

  /// Create from Convex typedef record
  factory FieldAgentWeeklyEarnings.fromDoc(FieldAgentWeeklyEarningsDoc doc) {
    return FieldAgentWeeklyEarnings(
      continueCursor: doc.continueCursor,
      isDone: doc.isDone,
      list: doc.list
          .map((item) => FieldAgentWeeklyEarning.fromRecord(item))
          .toIList(),
    );
  }

  /// Convert to Convex typedef record
  dynamic toDoc() {
    return (continueCursor: continueCursor, isDone: isDone, list: list);
  }

  FieldAgentWeeklyEarnings copyWith({
    String? continueCursor,
    bool? isDone,
    IList<FieldAgentWeeklyEarning>? list,
  }) {
    return FieldAgentWeeklyEarnings(
      continueCursor: continueCursor ?? this.continueCursor,
      isDone: isDone ?? this.isDone,
      list: list ?? this.list,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FieldAgentWeeklyEarnings &&
        other.continueCursor == continueCursor &&
        other.isDone == isDone &&
        other.list == list;
  }

  @override
  int get hashCode {
    return continueCursor.hashCode ^ isDone.hashCode ^ list.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
