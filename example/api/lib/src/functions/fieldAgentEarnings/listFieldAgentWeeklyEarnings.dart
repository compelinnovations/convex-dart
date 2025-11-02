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
            (on728797) => encodeValue(on728797),
            (on785395) => encodeValue(on785395),
          ),
        ),
    },
  );
}

FieldAgentWeeklyEarningsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on657650) => (
      continueCursor: (on657650['continueCursor'] as String),
      isDone: (on657650['isDone'] as bool),
      list: (on657650['list'] as IList<dynamic>)
          .map(
            (on980579) => (on980579 as IMap<String, dynamic>).then(
              (on76775) => (
                approvedAt: on76775.containsKey('approvedAt')
                    ? Defined<double>((on76775['approvedAt'] as double))
                    : Undefined<double>(),
                batchId: FieldAgentPaymentBatchesId(
                  on76775['batchId'] as String,
                ),
                paidAt: on76775.containsKey('paidAt')
                    ? Defined<double>((on76775['paidAt'] as double))
                    : Undefined<double>(),
                payoutStatus: (on76775['payoutStatus'] as String),
                periodEndDate: (on76775['periodEndDate'] as double),
                periodStartDate: (on76775['periodStartDate'] as double),
                totalAcquisitions: (on76775['totalAcquisitions'] as double),
                totalEarnings: (on76775['totalEarnings'] as double),
                weekLabel: (on76775['weekLabel'] as String),
                weekOf: on76775.containsKey('weekOf')
                    ? Defined<String>((on76775['weekOf'] as String))
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
