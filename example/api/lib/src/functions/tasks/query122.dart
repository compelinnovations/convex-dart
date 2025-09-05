// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
part 'query122.mapper.dart';

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query122Args with Query122ArgsMappable {
  final Map<String, Typedef> i;

  const Query122Args({required this.i});
}

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query122Response with Query122ResponseMappable {
  final Map<String, Typedef> i;

  const Query122Response({required this.i});
}

@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef Typedef0 = ({
  Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral> primitive,
});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef Typedef1 = ({Map<String, String> fields});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef Typedef2 = ({String elementType});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef Typedef = ({
  bool required,
  Union3<Typedef0, Typedef1, Typedef2> schema,
  Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral> type,
});
