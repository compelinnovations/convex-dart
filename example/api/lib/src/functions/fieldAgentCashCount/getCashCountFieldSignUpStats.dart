// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final getCashCountFieldSignUpStats =
    QueryOperation<void, CashCountFieldSignUpStatsDoc>(
      'app/fieldAgentCashCount:getCashCountFieldSignUpStats',
      serialize,
      deserialize,
    );
BTreeMapStringValue serialize(void args) {
  return hashmapToBtreemap(hashmap: {});
}

CashCountFieldSignUpStatsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on495508) => (
      month: (on495508['month'] as IMap<String, dynamic>).then(
        (on175046) => (
          approved: (on175046['approved'] as double),
          invalid: (on175046['invalid'] as double),
          pending: (on175046['pending'] as double),
          rejected: (on175046['rejected'] as double),
          total: (on175046['total'] as double),
        ),
      ),
      today: (on495508['today'] as IMap<String, dynamic>).then(
        (on627469) => (
          approved: (on627469['approved'] as double),
          invalid: (on627469['invalid'] as double),
          pending: (on627469['pending'] as double),
          rejected: (on627469['rejected'] as double),
          total: (on627469['total'] as double),
        ),
      ),
      week: (on495508['week'] as IMap<String, dynamic>).then(
        (on647466) => (
          friday: (on647466['friday'] as IMap<String, dynamic>).then(
            (on897723) => (
              approved: (on897723['approved'] as double),
              invalid: (on897723['invalid'] as double),
              pending: (on897723['pending'] as double),
              rejected: (on897723['rejected'] as double),
              total: (on897723['total'] as double),
            ),
          ),
          monday: (on647466['monday'] as IMap<String, dynamic>).then(
            (on465994) => (
              approved: (on465994['approved'] as double),
              invalid: (on465994['invalid'] as double),
              pending: (on465994['pending'] as double),
              rejected: (on465994['rejected'] as double),
              total: (on465994['total'] as double),
            ),
          ),
          saturday: (on647466['saturday'] as IMap<String, dynamic>).then(
            (on375595) => (
              approved: (on375595['approved'] as double),
              invalid: (on375595['invalid'] as double),
              pending: (on375595['pending'] as double),
              rejected: (on375595['rejected'] as double),
              total: (on375595['total'] as double),
            ),
          ),
          sunday: (on647466['sunday'] as IMap<String, dynamic>).then(
            (on511589) => (
              approved: (on511589['approved'] as double),
              invalid: (on511589['invalid'] as double),
              pending: (on511589['pending'] as double),
              rejected: (on511589['rejected'] as double),
              total: (on511589['total'] as double),
            ),
          ),
          thursday: (on647466['thursday'] as IMap<String, dynamic>).then(
            (on725016) => (
              approved: (on725016['approved'] as double),
              invalid: (on725016['invalid'] as double),
              pending: (on725016['pending'] as double),
              rejected: (on725016['rejected'] as double),
              total: (on725016['total'] as double),
            ),
          ),
          total: (on647466['total'] as IMap<String, dynamic>).then(
            (on34810) => (
              approved: (on34810['approved'] as double),
              invalid: (on34810['invalid'] as double),
              pending: (on34810['pending'] as double),
              rejected: (on34810['rejected'] as double),
              total: (on34810['total'] as double),
            ),
          ),
          tuesday: (on647466['tuesday'] as IMap<String, dynamic>).then(
            (on261795) => (
              approved: (on261795['approved'] as double),
              invalid: (on261795['invalid'] as double),
              pending: (on261795['pending'] as double),
              rejected: (on261795['rejected'] as double),
              total: (on261795['total'] as double),
            ),
          ),
          wednesday: (on647466['wednesday'] as IMap<String, dynamic>).then(
            (on56437) => (
              approved: (on56437['approved'] as double),
              invalid: (on56437['invalid'] as double),
              pending: (on56437['pending'] as double),
              rejected: (on56437['rejected'] as double),
              total: (on56437['total'] as double),
            ),
          ),
        ),
      ),
    ),
  );
}

typedef CashCountFieldSignUpStatsDoc = ({
  ({
    double approved,
    double invalid,
    double pending,
    double rejected,
    double total,
  })
  month,
  ({
    double approved,
    double invalid,
    double pending,
    double rejected,
    double total,
  })
  today,
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
  week,
});
