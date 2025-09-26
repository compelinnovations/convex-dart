// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "device_info.dart";

class CreateCashCountFieldSignUp {
  final DeviceInfo deviceInfo;
  final String phoneNumber;

  const CreateCashCountFieldSignUp({
    required this.deviceInfo,
    required this.phoneNumber,
  });

  factory CreateCashCountFieldSignUp.empty() {
    return CreateCashCountFieldSignUp(
      deviceInfo: DeviceInfo.empty(),
      phoneNumber: '',
    );
  }

  factory CreateCashCountFieldSignUp.fromJson(Map<String, dynamic> json) {
    return CreateCashCountFieldSignUp(
      deviceInfo: DeviceInfo.fromJson(
        json['deviceInfo'] as Map<String, dynamic>,
      ),
      phoneNumber: json['phoneNumber'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'deviceInfo': deviceInfo, 'phoneNumber': phoneNumber};
  }

  CreateCashCountFieldSignUp copyWith({
    DeviceInfo? deviceInfo,
    String? phoneNumber,
  }) {
    return CreateCashCountFieldSignUp(
      deviceInfo: deviceInfo ?? this.deviceInfo,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CreateCashCountFieldSignUp &&
        other.deviceInfo == deviceInfo &&
        other.phoneNumber == phoneNumber;
  }

  @override
  int get hashCode {
    return deviceInfo.hashCode ^ phoneNumber.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
