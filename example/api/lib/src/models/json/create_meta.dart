// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class CreateMeta {
  final String action;
  final Optional<IMap<String, dynamic>> details;
  final Optional<String> name;
  final Optional<String> role;
  final Optional<String> userId;

  const CreateMeta({
    required this.action,
    this.details = const Undefined(),
    this.name = const Undefined(),
    this.role = const Undefined(),
    this.userId = const Undefined(),
  });

  factory CreateMeta.empty() {
    return CreateMeta(
      action: '',
      details: const Undefined(),
      name: const Undefined(),
      role: const Undefined(),
      userId: const Undefined(),
    );
  }

  factory CreateMeta.fromJson(Map<String, dynamic> json) {
    return CreateMeta(
      action: json['action'] as String,
      details: json.containsKey('details')
          ? Defined((json['details'] as Map<String, dynamic>).toIMap())
          : const Undefined(),
      name: json.containsKey('name')
          ? Defined(json['name'] as String)
          : const Undefined(),
      role: json.containsKey('role')
          ? Defined(json['role'] as String)
          : const Undefined(),
      userId: json.containsKey('userId')
          ? Defined(json['userId'] as String)
          : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'action': encodeValue(action),
      if (details.isDefined)
        'details': encodeValue({
          for (final on807074 in details.asDefined().value.entries)
            on807074.key: encodeValue(encodeValue(on807074.value)),
        }),
      if (name.isDefined) 'name': encodeValue(name.asDefined().value),
      if (role.isDefined) 'role': encodeValue(role.asDefined().value),
      if (userId.isDefined) 'userId': encodeValue(userId.asDefined().value),
    };
  }

  CreateMeta copyWith({
    String? action,
    Optional<IMap<String, dynamic>>? details,
    Optional<String>? name,
    Optional<String>? role,
    Optional<String>? userId,
  }) {
    return CreateMeta(
      action: action ?? this.action,
      details: details ?? this.details,
      name: name ?? this.name,
      role: role ?? this.role,
      userId: userId ?? this.userId,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CreateMeta &&
        other.action == action &&
        other.details == details &&
        other.name == name &&
        other.role == role &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    return action.hashCode ^
        details.hashCode ^
        name.hashCode ^
        role.hashCode ^
        userId.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
