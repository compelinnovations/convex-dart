// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
part 'query125.mapper.dart';

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query125Args with Query125ArgsMappable {
  final ITypedef i;

  const Query125Args({required this.i});
}

@MappableClass(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
class Query125Response with Query125ResponseMappable {
  final ITypedef i;

  const Query125Response({required this.i});
}

@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef RetryTypedef = ({double count, double delay});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef ErrorTypedef = ({String handler, RetryTypedef retry});
@MappableRecord(
  hook: RemoveUndefinedFields(['error', 'next']),
  includeCustomMappers: convexMappers,
)
typedef Typedef = ({
  Map<String, dynamic> config,
  Optional<ErrorTypedef> error,
  String id,
  String name,
  Optional<String> next,
  Union3<$ActionLiteral, $ConditionLiteral, $LoopLiteral> type,
});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef Typedef0 = ({String cron, $ScheduleLiteral type});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef Typedef1 = ({$WebhookLiteral type, String url});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef Typedef2 = ({String eventType, $EventLiteral type});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef WorkflowTypedef = ({
  List<Typedef> steps,
  List<Union3<Typedef0, Typedef1, Typedef2>> triggers,
  Map<String, Union4<String, double, bool, List<dynamic>>> variables,
});
@MappableRecord(
  hook: RemoveUndefinedFields([]),
  includeCustomMappers: convexMappers,
)
typedef ITypedef = ({WorkflowTypedef workflow});
