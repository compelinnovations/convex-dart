// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "../../functions/fieldAgentCashCount/createFieldSignUp.dart"
    show MutationResultDoc;

class MutationResult {
  final Optional<CashCountFieldSignUpsId> $_id;
  final String message;

  const MutationResult({this.$_id = const Undefined(), required this.message});

  factory MutationResult.empty() {
    return MutationResult(message: '');
  }

  factory MutationResult.fromJson(Map<String, dynamic> json) {
    return MutationResult(
      $_id: json['_id'] != null
          ? Defined(CashCountFieldSignUpsId(json['_id'] as String))
          : const Undefined(),
      message: json['message'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if ($_id.isDefined) '_id': $_id.asDefined().value.value,
      'message': message,
    };
  }

  /// Create from Convex typedef record
  factory MutationResult.fromDoc(MutationResultDoc doc) {
    return MutationResult(
      $_id: doc.$_id.isDefined
          ? Defined(doc.$_id.asDefined().value)
          : const Undefined(),
      message: doc.message,
    );
  }

  /// Convert to Convex typedef record
  dynamic toDoc() {
    return ($_id: $_id, message: message);
  }

  MutationResult copyWith({
    Optional<CashCountFieldSignUpsId>? $_id,
    String? message,
  }) {
    return MutationResult(
      $_id: $_id ?? this.$_id,
      message: message ?? this.message,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MutationResult &&
        other.$_id == $_id &&
        other.message == message;
  }

  @override
  int get hashCode {
    return $_id.hashCode ^ message.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
