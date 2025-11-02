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
            (on689067) => encodeValue(on689067),
            (on293139) => encodeValue(on293139),
          ),
        ),
    },
  );
}

CashCountFieldSignUpLeaderboardsDoc deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on886670) => (
      deletedIds: (on886670['deletedIds'] as IList<dynamic>)
          .map((on21967) => FieldAgentsId(on21967 as String))
          .toIList(),
      list: (on886670['list'] as IList<dynamic>)
          .map(
            (on264657) => (on264657 as IMap<String, dynamic>).then(
              (on530296) => (
                $_id: FieldAgentsId(on530296['_id'] as String),
                fieldAgentId: FieldAgentsId(on530296['fieldAgentId'] as String),
                firstName: (on530296['firstName'] as String),
                fullName: (on530296['fullName'] as String),
                image: on530296.containsKey('image')
                    ? Defined<
                        ({
                          Optional<String> blurHash,
                          Optional<String> mime,
                          Optional<String> name,
                          Optional<double> size,
                          StorageId? storageId,
                          Optional<String> url,
                        })
                      >(
                        (on530296['image'] as IMap<String, dynamic>).then(
                          (on294138) => (
                            blurHash: on294138.containsKey('blurHash')
                                ? Defined<String>(
                                    (on294138['blurHash'] as String),
                                  )
                                : Undefined<String>(),
                            mime: on294138.containsKey('mime')
                                ? Defined<String>((on294138['mime'] as String))
                                : Undefined<String>(),
                            name: on294138.containsKey('name')
                                ? Defined<String>((on294138['name'] as String))
                                : Undefined<String>(),
                            size: on294138.containsKey('size')
                                ? Defined<double>((on294138['size'] as double))
                                : Undefined<double>(),
                            storageId: on294138['storageId'] == null
                                ? null
                                : StorageId(on294138['storageId'] as String),
                            url: on294138.containsKey('url')
                                ? Defined<String>((on294138['url'] as String))
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
                          StorageId? storageId,
                          Optional<String> url,
                        })
                      >(),
                lastName: (on530296['lastName'] as String),
                position: (on530296['position'] as double),
                totalSignUps: (on530296['totalSignUps'] as double),
                totalSignUpsApproved:
                    (on530296['totalSignUpsApproved'] as double),
                totalSignUpsInvalid:
                    (on530296['totalSignUpsInvalid'] as double),
                totalSignUpsPending:
                    (on530296['totalSignUpsPending'] as double),
                totalSignUpsRejected:
                    (on530296['totalSignUpsRejected'] as double),
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
          StorageId? storageId,
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
