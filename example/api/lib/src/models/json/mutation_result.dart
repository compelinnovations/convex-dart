// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class MutationResult {
  final String message;

  const MutationResult({required this.message});

  factory MutationResult.empty() {
    return MutationResult(message: '');
  }

  factory MutationResult.fromJson(Map<String, dynamic> json) {
    return MutationResult(message: json['message'] as String);
  }

  Map<String, dynamic> toJson() {
    return {'message': message};
  }

  MutationResult copyWith({String? message}) {
    return MutationResult(message: message ?? this.message);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MutationResult && other.message == message;
  }

  @override
  int get hashCode {
    return message.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
