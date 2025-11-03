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
            (on34263) => encodeValue(on34263),
            (on399925) => encodeValue(on399925),
          ),
        ),
    },
  );
}

FieldAgentWeeklyEarningsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on390674) => (
      continueCursor: (on390674['continueCursor'] as String),
      isDone: (on390674['isDone'] as bool),
      list: (on390674['list'] as IList<dynamic>)
          .map(
            (on383975) => (on383975 as IMap<String, dynamic>).then(
              (on850664) => (
                approvedAt: on850664.containsKey('approvedAt')
                    ? Defined<double>((on850664['approvedAt'] as double))
                    : Undefined<double>(),
                batchId: FieldAgentPaymentBatchesId(
                  on850664['batchId'] as String,
                ),
                paidAt: on850664.containsKey('paidAt')
                    ? Defined<double>((on850664['paidAt'] as double))
                    : Undefined<double>(),
                payoutStatus: (on850664['payoutStatus'] as String),
                periodEndDate: (on850664['periodEndDate'] as double),
                periodStartDate: (on850664['periodStartDate'] as double),
                totalAcquisitions: (on850664['totalAcquisitions'] as double),
                totalEarnings: (on850664['totalEarnings'] as double),
                weekLabel: (on850664['weekLabel'] as String),
                weekOf: on850664.containsKey('weekOf')
                    ? Defined<String>((on850664['weekOf'] as String))
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
