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
    (on845321) => (
      month: (on845321['month'] as IMap<String, dynamic>).then(
        (on731521) => (
          approved: (on731521['approved'] as double),
          invalid: (on731521['invalid'] as double),
          pending: (on731521['pending'] as double),
          rejected: (on731521['rejected'] as double),
          total: (on731521['total'] as double),
        ),
      ),
      today: (on845321['today'] as IMap<String, dynamic>).then(
        (on823208) => (
          approved: (on823208['approved'] as double),
          invalid: (on823208['invalid'] as double),
          pending: (on823208['pending'] as double),
          rejected: (on823208['rejected'] as double),
          total: (on823208['total'] as double),
        ),
      ),
      week: (on845321['week'] as IMap<String, dynamic>).then(
        (on202331) => (
          friday: (on202331['friday'] as IMap<String, dynamic>).then(
            (on582241) => (
              approved: (on582241['approved'] as double),
              invalid: (on582241['invalid'] as double),
              pending: (on582241['pending'] as double),
              rejected: (on582241['rejected'] as double),
              total: (on582241['total'] as double),
            ),
          ),
          monday: (on202331['monday'] as IMap<String, dynamic>).then(
            (on739004) => (
              approved: (on739004['approved'] as double),
              invalid: (on739004['invalid'] as double),
              pending: (on739004['pending'] as double),
              rejected: (on739004['rejected'] as double),
              total: (on739004['total'] as double),
            ),
          ),
          saturday: (on202331['saturday'] as IMap<String, dynamic>).then(
            (on138284) => (
              approved: (on138284['approved'] as double),
              invalid: (on138284['invalid'] as double),
              pending: (on138284['pending'] as double),
              rejected: (on138284['rejected'] as double),
              total: (on138284['total'] as double),
            ),
          ),
          sunday: (on202331['sunday'] as IMap<String, dynamic>).then(
            (on833660) => (
              approved: (on833660['approved'] as double),
              invalid: (on833660['invalid'] as double),
              pending: (on833660['pending'] as double),
              rejected: (on833660['rejected'] as double),
              total: (on833660['total'] as double),
            ),
          ),
          thursday: (on202331['thursday'] as IMap<String, dynamic>).then(
            (on245771) => (
              approved: (on245771['approved'] as double),
              invalid: (on245771['invalid'] as double),
              pending: (on245771['pending'] as double),
              rejected: (on245771['rejected'] as double),
              total: (on245771['total'] as double),
            ),
          ),
          total: (on202331['total'] as IMap<String, dynamic>).then(
            (on734053) => (
              approved: (on734053['approved'] as double),
              invalid: (on734053['invalid'] as double),
              pending: (on734053['pending'] as double),
              rejected: (on734053['rejected'] as double),
              total: (on734053['total'] as double),
            ),
          ),
          tuesday: (on202331['tuesday'] as IMap<String, dynamic>).then(
            (on72761) => (
              approved: (on72761['approved'] as double),
              invalid: (on72761['invalid'] as double),
              pending: (on72761['pending'] as double),
              rejected: (on72761['rejected'] as double),
              total: (on72761['total'] as double),
            ),
          ),
          wednesday: (on202331['wednesday'] as IMap<String, dynamic>).then(
            (on243149) => (
              approved: (on243149['approved'] as double),
              invalid: (on243149['invalid'] as double),
              pending: (on243149['pending'] as double),
              rejected: (on243149['rejected'] as double),
              total: (on243149['total'] as double),
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
