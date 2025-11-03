// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "../../models/json/list_query.dart";

final listFieldAgentWeeklyEarnings =
    QueryOperation<ListQuery, FieldAgentWeeklyEarningsDoc>(
      'app/fieldAgentEarnings:listFieldAgentWeeklyEarnings',
      serialize,
      deserialize,
    );
BTreeMapStringValue serialize(ListQuery args) {
  return hashmapToBtreemap(
    hashmap: {
      if (args.lastSyncDate.isDefined)
        'lastSyncDate': encodeValue(args.lastSyncDate.asDefined().value),
      if (args.paginationOpts.isDefined)
        'paginationOpts': encodeValue({
          'cursor': encodeValue(args.paginationOpts.asDefined().value.cursor),
          'numItems': encodeValue(
            args.paginationOpts.asDefined().value.numItems,
          ),
        }),
      if (args.searchText.isDefined)
        'searchText': encodeValue(args.searchText.asDefined().value),
      if (args.sortBy.isDefined)
        'sortBy': encodeValue(args.sortBy.asDefined().value),
      if (args.sortOrder.isDefined)
        'sortOrder': encodeValue(
          args.sortOrder.asDefined().value.split(
            (on390407) => encodeValue(on390407),
            (on854163) => encodeValue(on854163),
          ),
        ),
    },
  );
}

FieldAgentWeeklyEarningsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on502526) => (
      continueCursor: (on502526['continueCursor'] as String),
      isDone: (on502526['isDone'] as bool),
      list: (on502526['list'] as IList<dynamic>)
          .map(
            (on852808) => (on852808 as IMap<String, dynamic>).then(
              (on938160) => (
                approvedAt: on938160.containsKey('approvedAt')
                    ? Defined<double>((on938160['approvedAt'] as double))
                    : Undefined<double>(),
                batchId: FieldAgentPaymentBatchesId(
                  on938160['batchId'] as String,
                ),
                paidAt: on938160.containsKey('paidAt')
                    ? Defined<double>((on938160['paidAt'] as double))
                    : Undefined<double>(),
                payoutStatus: (on938160['payoutStatus'] as String),
                periodEndDate: (on938160['periodEndDate'] as double),
                periodStartDate: (on938160['periodStartDate'] as double),
                totalAcquisitions: (on938160['totalAcquisitions'] as double),
                totalEarnings: (on938160['totalEarnings'] as double),
                weekLabel: (on938160['weekLabel'] as String),
                weekOf: on938160.containsKey('weekOf')
                    ? Defined<String>((on938160['weekOf'] as String))
                    : Undefined<String>(),
              ),
            ),
          )
          .toIList(),
    ),
  );
}

typedef FieldAgentWeeklyEarningsDoc = ({
  String continueCursor,
  bool isDone,
  IList<
    ({
      Optional<double> approvedAt,
      FieldAgentPaymentBatchesId batchId,
      Optional<double> paidAt,
      String payoutStatus,
      double periodEndDate,
      double periodStartDate,
      double totalAcquisitions,
      double totalEarnings,
      String weekLabel,
      Optional<String> weekOf,
    })
  >
  list,
});
