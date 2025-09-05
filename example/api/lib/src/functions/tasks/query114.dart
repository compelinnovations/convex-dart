// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
part 'query114.mapper.dart';

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query114Args with Query114ArgsMappable {
  final ITypedef i;

  const Query114Args({required this.i});
}

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query114Response with Query114ResponseMappable {
  final ITypedef i;

  const Query114Response({required this.i});
}

@MappableRecord(
  hook: RemoveUndefinedFields(['email', 'name']),
  includeCustomMappers: convexMappers,
)
typedef ITypedef = ({
  Optional<String> email,
  Optional<String> name,
  String? phone,
});
