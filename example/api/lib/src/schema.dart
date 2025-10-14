// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "dart:typed_data";
import "package:convex_dart/src/convex_dart_for_generated_code.dart";

class CashCountFieldSignUpsId implements TableId {
  @override
  final String value;
  static const String tableName = "cashCountFieldSignUps";
  const CashCountFieldSignUpsId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is CashCountFieldSignUpsId) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return value;
  }
}

class FieldAgentsId implements TableId {
  @override
  final String value;
  static const String tableName = "fieldAgents";
  const FieldAgentsId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is FieldAgentsId) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return value;
  }
}
