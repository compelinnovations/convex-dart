// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final getFieldAgentWeeklyEarningsSummary =
    QueryOperation<void, FieldAgentWeeklyEarningsSummaryDoc>(
      'app/fieldAgentEarnings:getFieldAgentWeeklyEarningsSummary',
      serialize,
      deserialize,
    );
BTreeMapStringValue serialize(void args) {
  return hashmapToBtreemap(hashmap: {});
}

FieldAgentWeeklyEarningsSummaryDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on384199) => (
      batchId: on384199.containsKey('batchId')
          ? Defined<FieldAgentPaymentBatchesId>(
              FieldAgentPaymentBatchesId(on384199['batchId'] as String),
            )
          : Undefined<FieldAgentPaymentBatchesId>(),
      commissionPerAcquisition:
          (on384199['commissionPerAcquisition'] as double),
      paidAt: on384199.containsKey('paidAt')
          ? Defined<double>((on384199['paidAt'] as double))
          : Undefined<double>(),
      payoutStatus: on384199.containsKey('payoutStatus')
          ? Defined<String>((on384199['payoutStatus'] as String))
          : Undefined<String>(),
      periodEndDate: (on384199['periodEndDate'] as double),
      periodStartDate: (on384199['periodStartDate'] as double),
      totalEarnings: (on384199['totalEarnings'] as double),
      totalSignUps: (on384199['totalSignUps'] as double),
      weekLabel: (on384199['weekLabel'] as String),
    ),
  );
}

typedef FieldAgentWeeklyEarningsSummaryDoc = ({
  Optional<FieldAgentPaymentBatchesId> batchId,
  double commissionPerAcquisition,
  Optional<double> paidAt,
  Optional<String> payoutStatus,
  double periodEndDate,
  double periodStartDate,
  double totalEarnings,
  double totalSignUps,
  String weekLabel,
});
