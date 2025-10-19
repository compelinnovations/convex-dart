// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "pagination_opts.dart";

class ListQuery {
  final Optional<double> lastSyncDate;
  final Optional<PaginationOpts> paginationOpts;
  final Optional<String> searchText;
  final Optional<String> sortBy;
  final Optional<Union2<$AscLiteral, $DescLiteral>> sortOrder;

  const ListQuery({
    this.lastSyncDate = const Undefined(),
    this.paginationOpts = const Undefined(),
    this.searchText = const Undefined(),
    this.sortBy = const Undefined(),
    this.sortOrder = const Undefined(),
  });

  factory ListQuery.empty() {
    return ListQuery();
  }

  factory ListQuery.fromJson(Map<String, dynamic> json) {
    return ListQuery(
      lastSyncDate: json['lastSyncDate'] != null
          ? Defined(json['lastSyncDate'] as double)
          : const Undefined(),
      paginationOpts: json['paginationOpts'] != null
          ? Defined(
              PaginationOpts.fromJson(
                json['paginationOpts'] as Map<String, dynamic>,
              ),
            )
          : const Undefined(),
      searchText: json['searchText'] != null
          ? Defined(json['searchText'] as String)
          : const Undefined(),
      sortBy: json['sortBy'] != null
          ? Defined(json['sortBy'] as String)
          : const Undefined(),
      sortOrder: json['sortOrder'] != null
          ? Defined(json['sortOrder'])
          : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (lastSyncDate.isDefined)
        'lastSyncDate': lastSyncDate.asDefined().value,
      if (paginationOpts.isDefined)
        'paginationOpts': paginationOpts.asDefined().value,
      if (searchText.isDefined) 'searchText': searchText.asDefined().value,
      if (sortBy.isDefined) 'sortBy': sortBy.asDefined().value,
      if (sortOrder.isDefined) 'sortOrder': sortOrder.asDefined().value,
    };
  }

  /// Create from inline record (used in typedef conversions)
  factory ListQuery.fromRecord(
    ({
      Optional<double> lastSyncDate,
      Optional<({String? cursor, double numItems})> paginationOpts,
      Optional<String> searchText,
      Optional<String> sortBy,
      Optional<Union2<$AscLiteral, $DescLiteral>> sortOrder,
    })
    record,
  ) {
    return ListQuery(
      lastSyncDate: record.lastSyncDate,
      paginationOpts: record.paginationOpts.isDefined
          ? Defined(
              PaginationOpts.fromRecord(
                record.paginationOpts.asDefined().value,
              ),
            )
          : const Undefined(),
      searchText: record.searchText,
      sortBy: record.sortBy,
      sortOrder: record.sortOrder,
    );
  }

  ListQuery copyWith({
    Optional<double>? lastSyncDate,
    Optional<PaginationOpts>? paginationOpts,
    Optional<String>? searchText,
    Optional<String>? sortBy,
    Optional<Union2<$AscLiteral, $DescLiteral>>? sortOrder,
  }) {
    return ListQuery(
      lastSyncDate: lastSyncDate ?? this.lastSyncDate,
      paginationOpts: paginationOpts ?? this.paginationOpts,
      searchText: searchText ?? this.searchText,
      sortBy: sortBy ?? this.sortBy,
      sortOrder: sortOrder ?? this.sortOrder,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ListQuery &&
        other.lastSyncDate == lastSyncDate &&
        other.paginationOpts == paginationOpts &&
        other.searchText == searchText &&
        other.sortBy == sortBy &&
        other.sortOrder == sortOrder;
  }

  @override
  int get hashCode {
    return lastSyncDate.hashCode ^
        paginationOpts.hashCode ^
        searchText.hashCode ^
        sortBy.hashCode ^
        sortOrder.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
