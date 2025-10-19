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
  final String ownerUserId;
  final String referralCode;

  const CreateCashCountFieldSignUp({
    required this.deviceInfo,
    required this.ownerUserId,
    required this.referralCode,
  });

  factory CreateCashCountFieldSignUp.empty() {
    return CreateCashCountFieldSignUp(
      deviceInfo: DeviceInfo.empty(),
      ownerUserId: '',
      referralCode: '',
    );
  }

  factory CreateCashCountFieldSignUp.fromJson(Map<String, dynamic> json) {
    return CreateCashCountFieldSignUp(
      deviceInfo: DeviceInfo.fromJson(
        json['deviceInfo'] as Map<String, dynamic>,
      ),
      ownerUserId: json['ownerUserId'] as String,
      referralCode: json['referralCode'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'deviceInfo': deviceInfo,
      'ownerUserId': ownerUserId,
      'referralCode': referralCode,
    };
  }

  /// Create from inline record (used in typedef conversions)
  factory CreateCashCountFieldSignUp.fromRecord(
    ({
      ({
        String deviceId,
        String deviceModel,
        String deviceName,
        String deviceOs,
      })
      deviceInfo,
      String ownerUserId,
      String referralCode,
    })
    record,
  ) {
    return CreateCashCountFieldSignUp(
      deviceInfo: DeviceInfo.fromRecord(record.deviceInfo),
      ownerUserId: record.ownerUserId,
      referralCode: record.referralCode,
    );
  }

  CreateCashCountFieldSignUp copyWith({
    DeviceInfo? deviceInfo,
    String? ownerUserId,
    String? referralCode,
  }) {
    return CreateCashCountFieldSignUp(
      deviceInfo: deviceInfo ?? this.deviceInfo,
      ownerUserId: ownerUserId ?? this.ownerUserId,
      referralCode: referralCode ?? this.referralCode,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CreateCashCountFieldSignUp &&
        other.deviceInfo == deviceInfo &&
        other.ownerUserId == ownerUserId &&
        other.referralCode == referralCode;
  }

  @override
  int get hashCode {
    return deviceInfo.hashCode ^ ownerUserId.hashCode ^ referralCode.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
