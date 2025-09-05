// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
part 'query16.mapper.dart';

@MappableClass(
  hook: RemoveUndefinedFields(['i']),
  includeCustomMappers: convexMappers,
)
class Query16Args with Query16ArgsMappable {
  final Optional<BigInt> i;

  const Query16Args({required this.i});
}

@MappableClass(
  hook: RemoveUndefinedFields(['i']),
  includeCustomMappers: convexMappers,
)
class Query16Response with Query16ResponseMappable {
  final Optional<BigInt> i;

  const Query16Response({required this.i});
}
