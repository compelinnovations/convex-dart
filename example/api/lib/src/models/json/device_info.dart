// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class DeviceInfo {
  final String deviceId;
  final String deviceModel;
  final String deviceName;
  final String deviceOs;

  const DeviceInfo({
    required this.deviceId,
    required this.deviceModel,
    required this.deviceName,
    required this.deviceOs,
  });

  factory DeviceInfo.empty() {
    return DeviceInfo(
      deviceId: '',
      deviceModel: '',
      deviceName: '',
      deviceOs: '',
    );
  }

  factory DeviceInfo.fromJson(Map<String, dynamic> json) {
    return DeviceInfo(
      deviceId: json['deviceId'] as String,
      deviceModel: json['deviceModel'] as String,
      deviceName: json['deviceName'] as String,
      deviceOs: json['deviceOs'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'deviceId': deviceId,
      'deviceModel': deviceModel,
      'deviceName': deviceName,
      'deviceOs': deviceOs,
    };
  }

  /// Create from inline record (used in typedef conversions)
  factory DeviceInfo.fromRecord(
    ({String deviceId, String deviceModel, String deviceName, String deviceOs})
    record,
  ) {
    return DeviceInfo(
      deviceId: record.deviceId,
      deviceModel: record.deviceModel,
      deviceName: record.deviceName,
      deviceOs: record.deviceOs,
    );
  }

  /// Convert to inline record (inverse of fromRecord)
  ({String deviceId, String deviceModel, String deviceName, String deviceOs})
  toRecord() {
    return (
      deviceId: deviceId,
      deviceModel: deviceModel,
      deviceName: deviceName,
      deviceOs: deviceOs,
    );
  }

  DeviceInfo copyWith({
    String? deviceId,
    String? deviceModel,
    String? deviceName,
    String? deviceOs,
  }) {
    return DeviceInfo(
      deviceId: deviceId ?? this.deviceId,
      deviceModel: deviceModel ?? this.deviceModel,
      deviceName: deviceName ?? this.deviceName,
      deviceOs: deviceOs ?? this.deviceOs,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DeviceInfo &&
        other.deviceId == deviceId &&
        other.deviceModel == deviceModel &&
        other.deviceName == deviceName &&
        other.deviceOs == deviceOs;
  }

  @override
  int get hashCode {
    return deviceId.hashCode ^
        deviceModel.hashCode ^
        deviceName.hashCode ^
        deviceOs.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
