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
    (on993771) => (
      $_id: FieldAgentStatsId(on993771['_id'] as String),
      createdAt: (on993771['createdAt'] as double),
      deletedAt: on993771.containsKey('deletedAt')
          ? Defined((on993771['deletedAt'] as double))
          : Undefined<double>(),
      totalCashCountSignUps: on993771.containsKey('totalCashCountSignUps')
          ? Defined((on993771['totalCashCountSignUps'] as double))
          : Undefined<double>(),
      totalCommissionsEarned: on993771.containsKey('totalCommissionsEarned')
          ? Defined((on993771['totalCommissionsEarned'] as double))
          : Undefined<double>(),
      totalCommissionsInvalid: on993771.containsKey('totalCommissionsInvalid')
          ? Defined((on993771['totalCommissionsInvalid'] as double))
          : Undefined<double>(),
      totalCommissionsPaid: on993771.containsKey('totalCommissionsPaid')
          ? Defined((on993771['totalCommissionsPaid'] as double))
          : Undefined<double>(),
      totalCompletedCashCountSignUps:
          on993771.containsKey('totalCompletedCashCountSignUps')
          ? Defined((on993771['totalCompletedCashCountSignUps'] as double))
          : Undefined<double>(),
      totalExpiredCashCountSignUps:
          on993771.containsKey('totalExpiredCashCountSignUps')
          ? Defined((on993771['totalExpiredCashCountSignUps'] as double))
          : Undefined<double>(),
      totalPendingCashCountSignUps:
          on993771.containsKey('totalPendingCashCountSignUps')
          ? Defined((on993771['totalPendingCashCountSignUps'] as double))
          : Undefined<double>(),
      updatedAt: on993771.containsKey('updatedAt')
          ? Defined((on993771['updatedAt'] as double))
          : Undefined<double>(),
      userId: UsersId(on993771['userId'] as String),
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
