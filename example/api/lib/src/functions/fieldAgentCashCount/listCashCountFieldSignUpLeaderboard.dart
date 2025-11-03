// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "../../models/json/list_query.dart";

final listCashCountFieldSignUpLeaderboard =
    QueryOperation<ListQuery, CashCountFieldSignUpLeaderboardsDoc>(
      'app/fieldAgentCashCount:listCashCountFieldSignUpLeaderboard',
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
            (on56829) => encodeValue(on56829),
            (on847155) => encodeValue(on847155),
          ),
        ),
    },
  );
}

CashCountFieldSignUpLeaderboardsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on952138) => (
      deletedIds: (on952138['deletedIds'] as IList<dynamic>)
          .map((on152422) => FieldAgentsId(on152422 as String))
          .toIList(),
      list: (on952138['list'] as IList<dynamic>)
          .map(
            (on818807) => (on818807 as IMap<String, dynamic>).then(
              (on431378) => (
                $_id: FieldAgentsId(on431378['_id'] as String),
                fieldAgentId: FieldAgentsId(on431378['fieldAgentId'] as String),
                firstName: (on431378['firstName'] as String),
                fullName: (on431378['fullName'] as String),
                image: on431378.containsKey('image')
                    ? Defined<
                        ({
                          Optional<String> blurHash,
                          Optional<String> mime,
                          Optional<String> name,
                          Optional<double> size,
                          Optional<StorageId> storageId,
                          Optional<String> url,
                        })
                      >(
                        (on431378['image'] as IMap<String, dynamic>).then(
                          (on492483) => (
                            blurHash: on492483.containsKey('blurHash')
                                ? Defined<String>(
                                    (on492483['blurHash'] as String),
                                  )
                                : Undefined<String>(),
                            mime: on492483.containsKey('mime')
                                ? Defined<String>((on492483['mime'] as String))
                                : Undefined<String>(),
                            name: on492483.containsKey('name')
                                ? Defined<String>((on492483['name'] as String))
                                : Undefined<String>(),
                            size: on492483.containsKey('size')
                                ? Defined<double>((on492483['size'] as double))
                                : Undefined<double>(),
                            storageId: on492483.containsKey('storageId')
                                ? Defined<StorageId>(
                                    StorageId(on492483['storageId'] as String),
                                  )
                                : Undefined<StorageId>(),
                            url: on492483.containsKey('url')
                                ? Defined<String>((on492483['url'] as String))
                                : Undefined<String>(),
                          ),
                        ),
                      )
                    : Undefined<
                        ({
                          Optional<String> blurHash,
                          Optional<String> mime,
                          Optional<String> name,
                          Optional<double> size,
                          Optional<StorageId> storageId,
                          Optional<String> url,
                        })
                      >(),
                lastName: (on431378['lastName'] as String),
                position: (on431378['position'] as double),
                totalSignUps: (on431378['totalSignUps'] as double),
                totalSignUpsApproved:
                    (on431378['totalSignUpsApproved'] as double),
                totalSignUpsInvalid:
                    (on431378['totalSignUpsInvalid'] as double),
                totalSignUpsPending:
                    (on431378['totalSignUpsPending'] as double),
                totalSignUpsRejected:
                    (on431378['totalSignUpsRejected'] as double),
              ),
            ),
          )
          .toIList(),
    ),
  );
}

typedef CashCountFieldSignUpLeaderboardsDoc = ({
  IList<FieldAgentsId> deletedIds,
  IList<
    ({
      FieldAgentsId $_id,
      FieldAgentsId fieldAgentId,
      String firstName,
      String fullName,
      Optional<
        ({
          Optional<String> blurHash,
          Optional<String> mime,
          Optional<String> name,
          Optional<double> size,
          Optional<StorageId> storageId,
          Optional<String> url,
        })
      >
      image,
      String lastName,
      double position,
      double totalSignUps,
      double totalSignUpsApproved,
      double totalSignUpsInvalid,
      double totalSignUpsPending,
      double totalSignUpsRejected,
    })
  >
  list,
});
