// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
part 'query123.mapper.dart';

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query123Args with Query123ArgsMappable {
  final Union3<Typedef, Typedef0, Typedef1> i;

  const Query123Args({required this.i});
}

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query123Response with Query123ResponseMappable {
  final Union3<Typedef, Typedef0, Typedef1> i;

  const Query123Response({required this.i});
}

@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef FormattingTypedef = ({
  bool bold,
  Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,
  bool italic,
});
@MappableRecord(
  hook: RemoveUndefinedFields(['formatting']),
  includeCustomMappers: convexMappers,
)
typedef Typedef = ({
  String content,
  Optional<FormattingTypedef> formatting,
  $TextLiteral type,
});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef DimensionsTypedef = ({double height, double width});
@MappableRecord(
  hook: RemoveUndefinedFields(['alt']),
  includeCustomMappers: convexMappers,
)
typedef Typedef0 = ({
  Optional<String> alt,
  DimensionsTypedef dimensions,
  $ImageLiteral type,
  String url,
});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef Typedef1 = ({List<String> items, bool ordered, $ListLiteral type});
