// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final getMyStat = QueryOperation<void, GetMyStatResponse>(
  'fieldAgentStat:getMyStat',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(void args) {
  return hashmapToBtreemap(hashmap: {});
}

GetMyStatResponse deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on779737) => (
      $_id: FieldAgentStatsId(on779737['_id'] as String),
      createdAt: (on779737['createdAt'] as double),
      deletedAt: on779737.containsKey('deletedAt')
          ? Defined((on779737['deletedAt'] as double))
          : Undefined<double>(),
      totalCashCountSignUps: on779737.containsKey('totalCashCountSignUps')
          ? Defined((on779737['totalCashCountSignUps'] as double))
          : Undefined<double>(),
      totalCommissionsEarned: on779737.containsKey('totalCommissionsEarned')
          ? Defined((on779737['totalCommissionsEarned'] as double))
          : Undefined<double>(),
      totalCommissionsInvalid: on779737.containsKey('totalCommissionsInvalid')
          ? Defined((on779737['totalCommissionsInvalid'] as double))
          : Undefined<double>(),
      totalCommissionsPaid: on779737.containsKey('totalCommissionsPaid')
          ? Defined((on779737['totalCommissionsPaid'] as double))
          : Undefined<double>(),
      totalCompletedCashCountSignUps:
          on779737.containsKey('totalCompletedCashCountSignUps')
          ? Defined((on779737['totalCompletedCashCountSignUps'] as double))
          : Undefined<double>(),
      totalExpiredCashCountSignUps:
          on779737.containsKey('totalExpiredCashCountSignUps')
          ? Defined((on779737['totalExpiredCashCountSignUps'] as double))
          : Undefined<double>(),
      totalPendingCashCountSignUps:
          on779737.containsKey('totalPendingCashCountSignUps')
          ? Defined((on779737['totalPendingCashCountSignUps'] as double))
          : Undefined<double>(),
      updatedAt: on779737.containsKey('updatedAt')
          ? Defined((on779737['updatedAt'] as double))
          : Undefined<double>(),
      userId: UsersId(on779737['userId'] as String),
    ),
  );
}

typedef GetMyStatResponse = ({
  FieldAgentStatsId $_id,
  double createdAt,
  Optional<double> deletedAt,
  Optional<double> totalCashCountSignUps,
  Optional<double> totalCommissionsEarned,
  Optional<double> totalCommissionsInvalid,
  Optional<double> totalCommissionsPaid,
  Optional<double> totalCompletedCashCountSignUps,
  Optional<double> totalExpiredCashCountSignUps,
  Optional<double> totalPendingCashCountSignUps,
  Optional<double> updatedAt,
  UsersId userId,
});
