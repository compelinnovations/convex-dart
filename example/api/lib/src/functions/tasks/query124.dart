// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
part 'query124.mapper.dart';

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query124Args with Query124ArgsMappable {
  final ITypedef i;

  const Query124Args({required this.i});
}

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query124Response with Query124ResponseMappable {
  final ITypedef i;

  const Query124Response({required this.i});
}

@MappableRecord(
  hook: RemoveUndefinedFields(['auth']),
  includeCustomMappers: convexMappers,
)
typedef Typedef = ({
  Optional<bool> auth,
  Union4<$GETLiteral, $POSTLiteral, $PUTLiteral, $DELETELiteral> method,
  Map<String, Union3<String, double, bool>> params,
  String path,
  dynamic response,
});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef RateLimitTypedef = ({
  double requests,
  Union3<$MinuteLiteral, $HourLiteral, $DayLiteral> window,
});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef ApiTypedef = ({
  Map<String, Typedef> endpoints,
  RateLimitTypedef rateLimit,
});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef Typedef1 = ({List<String> fields, String name, bool unique});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef Typedef0 = ({
  List<Typedef1> indexes,
  Map<
    String,
    Union4<$StringLiteral, $NumberLiteral, $BooleanLiteral, $DateLiteral>
  >
  schema,
});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef DatabaseTypedef = ({Map<String, Typedef0> tables});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef ITypedef = ({ApiTypedef api, DatabaseTypedef database});
