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
            (on571608) => encodeValue(on571608),
            (on920262) => encodeValue(on920262),
          ),
        ),
    },
  );
}

CashCountFieldSignUpLeaderboardsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on786140) => (
      deletedIds: (on786140['deletedIds'] as IList<dynamic>)
          .map((on924540) => FieldAgentsId(on924540 as String))
          .toIList(),
      list: (on786140['list'] as IList<dynamic>)
          .map(
            (on919698) => (on919698 as IMap<String, dynamic>).then(
              (on702667) => (
                $_id: FieldAgentsId(on702667['_id'] as String),
                fieldAgentId: FieldAgentsId(on702667['fieldAgentId'] as String),
                firstName: (on702667['firstName'] as String),
                fullName: (on702667['fullName'] as String),
                image: on702667.containsKey('image')
                    ? Defined<
                        ({
                          Optional<String> blurHash,
                          Optional<String> mime,
                          Optional<String> name,
                          Optional<double> size,
                          Optional<StorageId?> storageId,
                          Optional<String> url,
                        })
                      >(
                        (on702667['image'] as IMap<String, dynamic>).then(
                          (on338953) => (
                            blurHash: on338953.containsKey('blurHash')
                                ? Defined<String>(
                                    (on338953['blurHash'] as String),
                                  )
                                : Undefined<String>(),
                            mime: on338953.containsKey('mime')
                                ? Defined<String>((on338953['mime'] as String))
                                : Undefined<String>(),
                            name: on338953.containsKey('name')
                                ? Defined<String>((on338953['name'] as String))
                                : Undefined<String>(),
                            size: on338953.containsKey('size')
                                ? Defined<double>((on338953['size'] as double))
                                : Undefined<double>(),
                            storageId: on338953.containsKey('storageId')
                                ? Defined<StorageId?>(
                                    on338953['storageId'] == null
                                        ? null
                                        : StorageId(
                                            on338953['storageId'] as String,
                                          ),
                                  )
                                : Undefined<StorageId?>(),
                            url: on338953.containsKey('url')
                                ? Defined<String>((on338953['url'] as String))
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
                          Optional<StorageId?> storageId,
                          Optional<String> url,
                        })
                      >(),
                lastName: (on702667['lastName'] as String),
                position: (on702667['position'] as double),
                totalSignUps: (on702667['totalSignUps'] as double),
                totalSignUpsApproved:
                    (on702667['totalSignUpsApproved'] as double),
                totalSignUpsInvalid:
                    (on702667['totalSignUpsInvalid'] as double),
                totalSignUpsPending:
                    (on702667['totalSignUpsPending'] as double),
                totalSignUpsRejected:
                    (on702667['totalSignUpsRejected'] as double),
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
          Optional<StorageId?> storageId,
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
