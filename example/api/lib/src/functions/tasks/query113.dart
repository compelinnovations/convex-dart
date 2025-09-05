// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
part 'query113.mapper.dart';

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query113Args with Query113ArgsMappable {
  final ITypedef i;

  const Query113Args({required this.i});
}

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query113Response with Query113ResponseMappable {
  final ITypedef i;

  const Query113Response({required this.i});
}

@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef SettingsTypedef = ({bool notifications, String theme});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef UserTypedef = ({String email, String name});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef ITypedef = ({SettingsTypedef settings, UserTypedef user});
