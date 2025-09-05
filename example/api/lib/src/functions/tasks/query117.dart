// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
part 'query117.mapper.dart';

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query117Args with Query117ArgsMappable {
  final ITypedef i;

  const Query117Args({required this.i});
}

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query117Response with Query117ResponseMappable {
  final ITypedef i;

  const Query117Response({required this.i});
}

@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef Typedef = ({String author, String text, double timestamp});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef ReviewerTypedef = ({Id<TasksSchema> id, String name});
@MappableRecord(
  hook: RemoveUndefinedFields(['reviewer']),
  includeCustomMappers: convexMappers,
)
typedef ITypedef = ({
  List<Typedef> comments,
  Optional<ReviewerTypedef> reviewer,
  Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral> status,
});
