// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class PaginationOpts {
  final String? cursor;
  final double numItems;

  const PaginationOpts({required this.cursor, required this.numItems});

  factory PaginationOpts.empty() {
    return PaginationOpts(cursor: null, numItems: 0.0);
  }

  factory PaginationOpts.fromJson(Map<String, dynamic> json) {
    return PaginationOpts(
      cursor: json['cursor'],
      numItems: json['numItems'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {'cursor': cursor, 'numItems': numItems};
  }

  /// Create from inline record (used in typedef conversions)
  factory PaginationOpts.fromRecord(
    ({String? cursor, double numItems}) record,
  ) {
    return PaginationOpts(cursor: record.cursor, numItems: record.numItems);
  }

  /// Convert to inline record (inverse of fromRecord)
  ({String? cursor, double numItems}) toRecord() {
    return (cursor: cursor, numItems: numItems);
  }

  PaginationOpts copyWith({String? cursor, double? numItems}) {
    return PaginationOpts(
      cursor: cursor ?? this.cursor,
      numItems: numItems ?? this.numItems,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PaginationOpts &&
        other.cursor == cursor &&
        other.numItems == numItems;
  }

  @override
  int get hashCode {
    return cursor.hashCode ^ numItems.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
