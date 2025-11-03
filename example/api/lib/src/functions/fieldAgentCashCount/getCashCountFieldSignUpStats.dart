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
    (on244444) => (
      month: (on244444['month'] as IMap<String, dynamic>).then(
        (on652402) => (
          approved: (on652402['approved'] as double),
          invalid: (on652402['invalid'] as double),
          pending: (on652402['pending'] as double),
          rejected: (on652402['rejected'] as double),
          total: (on652402['total'] as double),
        ),
      ),
      today: (on244444['today'] as IMap<String, dynamic>).then(
        (on932579) => (
          approved: (on932579['approved'] as double),
          invalid: (on932579['invalid'] as double),
          pending: (on932579['pending'] as double),
          rejected: (on932579['rejected'] as double),
          total: (on932579['total'] as double),
        ),
      ),
      week: (on244444['week'] as IMap<String, dynamic>).then(
        (on448529) => (
          friday: (on448529['friday'] as IMap<String, dynamic>).then(
            (on531909) => (
              approved: (on531909['approved'] as double),
              invalid: (on531909['invalid'] as double),
              pending: (on531909['pending'] as double),
              rejected: (on531909['rejected'] as double),
              total: (on531909['total'] as double),
            ),
          ),
          monday: (on448529['monday'] as IMap<String, dynamic>).then(
            (on706242) => (
              approved: (on706242['approved'] as double),
              invalid: (on706242['invalid'] as double),
              pending: (on706242['pending'] as double),
              rejected: (on706242['rejected'] as double),
              total: (on706242['total'] as double),
            ),
          ),
          saturday: (on448529['saturday'] as IMap<String, dynamic>).then(
            (on510986) => (
              approved: (on510986['approved'] as double),
              invalid: (on510986['invalid'] as double),
              pending: (on510986['pending'] as double),
              rejected: (on510986['rejected'] as double),
              total: (on510986['total'] as double),
            ),
          ),
          sunday: (on448529['sunday'] as IMap<String, dynamic>).then(
            (on796681) => (
              approved: (on796681['approved'] as double),
              invalid: (on796681['invalid'] as double),
              pending: (on796681['pending'] as double),
              rejected: (on796681['rejected'] as double),
              total: (on796681['total'] as double),
            ),
          ),
          thursday: (on448529['thursday'] as IMap<String, dynamic>).then(
            (on999611) => (
              approved: (on999611['approved'] as double),
              invalid: (on999611['invalid'] as double),
              pending: (on999611['pending'] as double),
              rejected: (on999611['rejected'] as double),
              total: (on999611['total'] as double),
            ),
          ),
          total: (on448529['total'] as IMap<String, dynamic>).then(
            (on117825) => (
              approved: (on117825['approved'] as double),
              invalid: (on117825['invalid'] as double),
              pending: (on117825['pending'] as double),
              rejected: (on117825['rejected'] as double),
              total: (on117825['total'] as double),
            ),
          ),
          tuesday: (on448529['tuesday'] as IMap<String, dynamic>).then(
            (on466449) => (
              approved: (on466449['approved'] as double),
              invalid: (on466449['invalid'] as double),
              pending: (on466449['pending'] as double),
              rejected: (on466449['rejected'] as double),
              total: (on466449['total'] as double),
            ),
          ),
          wednesday: (on448529['wednesday'] as IMap<String, dynamic>).then(
            (on212483) => (
              approved: (on212483['approved'] as double),
              invalid: (on212483['invalid'] as double),
              pending: (on212483['pending'] as double),
              rejected: (on212483['rejected'] as double),
              total: (on212483['total'] as double),
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
