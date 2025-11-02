// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "cash_count_field_sign_up_stat.dart";

class CashCountFieldSignUpStatWeek {
  final CashCountFieldSignUpStat friday;
  final CashCountFieldSignUpStat monday;
  final CashCountFieldSignUpStat saturday;
  final CashCountFieldSignUpStat sunday;
  final CashCountFieldSignUpStat thursday;
  final CashCountFieldSignUpStat total;
  final CashCountFieldSignUpStat tuesday;
  final CashCountFieldSignUpStat wednesday;

  const CashCountFieldSignUpStatWeek({
    required this.friday,
    required this.monday,
    required this.saturday,
    required this.sunday,
    required this.thursday,
    required this.total,
    required this.tuesday,
    required this.wednesday,
  });

  factory CashCountFieldSignUpStatWeek.empty() {
    return CashCountFieldSignUpStatWeek(
      friday: CashCountFieldSignUpStat.empty(),
      monday: CashCountFieldSignUpStat.empty(),
      saturday: CashCountFieldSignUpStat.empty(),
      sunday: CashCountFieldSignUpStat.empty(),
      thursday: CashCountFieldSignUpStat.empty(),
      total: CashCountFieldSignUpStat.empty(),
      tuesday: CashCountFieldSignUpStat.empty(),
      wednesday: CashCountFieldSignUpStat.empty(),
    );
  }

  factory CashCountFieldSignUpStatWeek.fromJson(Map<String, dynamic> json) {
    return CashCountFieldSignUpStatWeek(
      friday: CashCountFieldSignUpStat.fromJson(
        json['friday'] as Map<String, dynamic>,
      ),
      monday: CashCountFieldSignUpStat.fromJson(
        json['monday'] as Map<String, dynamic>,
      ),
      saturday: CashCountFieldSignUpStat.fromJson(
        json['saturday'] as Map<String, dynamic>,
      ),
      sunday: CashCountFieldSignUpStat.fromJson(
        json['sunday'] as Map<String, dynamic>,
      ),
      thursday: CashCountFieldSignUpStat.fromJson(
        json['thursday'] as Map<String, dynamic>,
      ),
      total: CashCountFieldSignUpStat.fromJson(
        json['total'] as Map<String, dynamic>,
      ),
      tuesday: CashCountFieldSignUpStat.fromJson(
        json['tuesday'] as Map<String, dynamic>,
      ),
      wednesday: CashCountFieldSignUpStat.fromJson(
        json['wednesday'] as Map<String, dynamic>,
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'friday': friday.toJson(),
      'monday': monday.toJson(),
      'saturday': saturday.toJson(),
      'sunday': sunday.toJson(),
      'thursday': thursday.toJson(),
      'total': total.toJson(),
      'tuesday': tuesday.toJson(),
      'wednesday': wednesday.toJson(),
    };
  }

  /// Create from inline record (used in typedef conversions)
  factory CashCountFieldSignUpStatWeek.fromRecord(
    ({
      ({
        double approved,
        double invalid,
        double pending,
        double rejected,
        double total,
      })
      friday,
      ({
        double approved,
        double invalid,
        double pending,
        double rejected,
        double total,
      })
      monday,
      ({
        double approved,
        double invalid,
        double pending,
        double rejected,
        double total,
      })
      saturday,
      ({
        double approved,
        double invalid,
        double pending,
        double rejected,
        double total,
      })
      sunday,
      ({
        double approved,
        double invalid,
        double pending,
        double rejected,
        double total,
      })
      thursday,
      ({
        double approved,
        double invalid,
        double pending,
        double rejected,
        double total,
      })
      total,
      ({
        double approved,
        double invalid,
        double pending,
        double rejected,
        double total,
      })
      tuesday,
      ({
        double approved,
        double invalid,
        double pending,
        double rejected,
        double total,
      })
      wednesday,
    })
    record,
  ) {
    return CashCountFieldSignUpStatWeek(
      friday: CashCountFieldSignUpStat.fromRecord(record.friday),
      monday: CashCountFieldSignUpStat.fromRecord(record.monday),
      saturday: CashCountFieldSignUpStat.fromRecord(record.saturday),
      sunday: CashCountFieldSignUpStat.fromRecord(record.sunday),
      thursday: CashCountFieldSignUpStat.fromRecord(record.thursday),
      total: CashCountFieldSignUpStat.fromRecord(record.total),
      tuesday: CashCountFieldSignUpStat.fromRecord(record.tuesday),
      wednesday: CashCountFieldSignUpStat.fromRecord(record.wednesday),
    );
  }

  /// Convert to inline record (inverse of fromRecord)
  ({
    ({
      double approved,
      double invalid,
      double pending,
      double rejected,
      double total,
    })
    friday,
    ({
      double approved,
      double invalid,
      double pending,
      double rejected,
      double total,
    })
    monday,
    ({
      double approved,
      double invalid,
      double pending,
      double rejected,
      double total,
    })
    saturday,
    ({
      double approved,
      double invalid,
      double pending,
      double rejected,
      double total,
    })
    sunday,
    ({
      double approved,
      double invalid,
      double pending,
      double rejected,
      double total,
    })
    thursday,
    ({
      double approved,
      double invalid,
      double pending,
      double rejected,
      double total,
    })
    total,
    ({
      double approved,
      double invalid,
      double pending,
      double rejected,
      double total,
    })
    tuesday,
    ({
      double approved,
      double invalid,
      double pending,
      double rejected,
      double total,
    })
    wednesday,
  })
  toRecord() {
    return (
      friday: friday.toRecord(),
      monday: monday.toRecord(),
      saturday: saturday.toRecord(),
      sunday: sunday.toRecord(),
      thursday: thursday.toRecord(),
      total: total.toRecord(),
      tuesday: tuesday.toRecord(),
      wednesday: wednesday.toRecord(),
    );
  }

  CashCountFieldSignUpStatWeek copyWith({
    CashCountFieldSignUpStat? friday,
    CashCountFieldSignUpStat? monday,
    CashCountFieldSignUpStat? saturday,
    CashCountFieldSignUpStat? sunday,
    CashCountFieldSignUpStat? thursday,
    CashCountFieldSignUpStat? total,
    CashCountFieldSignUpStat? tuesday,
    CashCountFieldSignUpStat? wednesday,
  }) {
    return CashCountFieldSignUpStatWeek(
      friday: friday ?? this.friday,
      monday: monday ?? this.monday,
      saturday: saturday ?? this.saturday,
      sunday: sunday ?? this.sunday,
      thursday: thursday ?? this.thursday,
      total: total ?? this.total,
      tuesday: tuesday ?? this.tuesday,
      wednesday: wednesday ?? this.wednesday,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CashCountFieldSignUpStatWeek &&
        other.friday == friday &&
        other.monday == monday &&
        other.saturday == saturday &&
        other.sunday == sunday &&
        other.thursday == thursday &&
        other.total == total &&
        other.tuesday == tuesday &&
        other.wednesday == wednesday;
  }

  @override
  int get hashCode {
    return friday.hashCode ^
        monday.hashCode ^
        saturday.hashCode ^
        sunday.hashCode ^
        thursday.hashCode ^
        total.hashCode ^
        tuesday.hashCode ^
        wednesday.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
