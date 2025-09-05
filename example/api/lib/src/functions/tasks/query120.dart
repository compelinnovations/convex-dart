// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
part 'query120.mapper.dart';

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query120Args with Query120ArgsMappable {
  final ITypedef i;

  const Query120Args({required this.i});
}

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query120Response with Query120ResponseMappable {
  final ITypedef i;

  const Query120Response({required this.i});
}

@MappableRecord(
  hook: RemoveUndefinedFields(['quantity']),
  includeCustomMappers: convexMappers,
)
typedef Typedef = ({
  String id,
  Map<String, dynamic> metadata,
  String name,
  double? price,
  Optional<double> quantity,
});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef ITypedef = ({List<Typedef> items, double total});
