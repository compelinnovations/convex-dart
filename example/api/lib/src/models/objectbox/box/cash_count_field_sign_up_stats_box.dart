import 'package:objectbox/objectbox.dart';
import 'dart:convert';
import '../../json/index.dart';

@Entity()
class CashCountFieldSignUpStatsBox {
  @Id()
  int id = 0;

  String month;
  String today;
  String week;

  CashCountFieldSignUpStatsBox({
    this.id = 0,
    required this.month,
    required this.today,
    required this.week,
  });

  factory CashCountFieldSignUpStatsBox.fromAPI(
    CashCountFieldSignUpStats model,
  ) {
    return CashCountFieldSignUpStatsBox(
      id: 0,
      month: jsonEncode(model.month.toJson()),
      today: jsonEncode(model.today.toJson()),
      week: jsonEncode(model.week.toJson()),
    );
  }

  CashCountFieldSignUpStats toAPI() {
    return CashCountFieldSignUpStats(
      month: CashCountFieldSignUpStat.fromJson(
        jsonDecode(month) as Map<String, dynamic>,
      ),
      today: CashCountFieldSignUpStat.fromJson(
        jsonDecode(today) as Map<String, dynamic>,
      ),
      week: CashCountFieldSignUpStatWeek.fromJson(
        jsonDecode(week) as Map<String, dynamic>,
      ),
    );
  }

  /// Convert directly from Convex typedef record to ObjectBox
  /// Bypasses the JSON model intermediate step for better performance
  factory CashCountFieldSignUpStatsBox.fromDoc(dynamic doc) {
    return CashCountFieldSignUpStatsBox.fromAPI(
      CashCountFieldSignUpStats.fromDoc(doc),
    );
  }

  /// Convert directly from ObjectBox to Convex typedef record
  /// Returns a record that matches the Convex typedef structure
  dynamic toDoc() {
    return toAPI().toDoc();
  }
}
