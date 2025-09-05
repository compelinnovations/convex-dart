// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
part 'query121.mapper.dart';

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query121Args with Query121ArgsMappable {
  final List<Typedef> i;

  const Query121Args({required this.i});
}

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query121Response with Query121ResponseMappable {
  final List<Typedef> i;

  const Query121Response({required this.i});
}

@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef Typedef1 = ({List<String> media, String text});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef Typedef0 = ({
  Union2<String, Typedef1> content,
  String id,
  double likes,
  List<String> tags,
});
@MappableRecord(
  hook: RemoveUndefinedFields(['avatar']),
  includeCustomMappers: convexMappers,
)
typedef ProfileTypedef = ({Optional<String> avatar, String name});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef UserTypedef = ({
  Map<String, Union3<String, double, bool>> preferences,
  ProfileTypedef profile,
});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef Typedef = ({List<Typedef0> posts, UserTypedef user});
