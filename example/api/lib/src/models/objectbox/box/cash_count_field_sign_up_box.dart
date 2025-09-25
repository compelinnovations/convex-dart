import 'package:objectbox/objectbox.dart';
import 'dart:convert';

@Entity()
class CashCountFieldSignUpBox {
  @Id()
  int id = 0;

  @Property(type: PropertyType.dateNano)
  int? lastSyncDate;
  String? paginationOpts;
  String? searchText;
  String? sortBy;
  String? sortOrder;

  CashCountFieldSignUpBox({
    this.id = 0,
    this.lastSyncDate,
    this.paginationOpts,
    this.searchText,
    this.sortBy,
    this.sortOrder,
  });

  factory CashCountFieldSignUpBox.fromMap(Map<String, dynamic> map) {
    return CashCountFieldSignUpBox(
      id: 0,
      lastSyncDate: (map['lastSyncDate'] as double?)?.round(),
      paginationOpts: jsonEncode(map['paginationOpts']),
      searchText: map['searchText'],
      sortBy: map['sortBy'],
      sortOrder: jsonEncode(map['sortOrder']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'lastSyncDate': lastSyncDate?.toDouble(),
      'paginationOpts': paginationOpts != null
          ? jsonDecode(paginationOpts!)
          : null,
      'searchText': searchText,
      'sortBy': sortBy,
      'sortOrder': sortOrder != null ? jsonDecode(sortOrder!) : null,
    };
  }
}
