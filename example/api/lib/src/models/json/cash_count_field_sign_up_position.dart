// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "media_data.dart";

class CashCountFieldSignUpPosition {
  final FieldAgentsId $_id;
  final FieldAgentsId fieldAgentId;
  final String firstName;
  final String fullName;
  final Optional<MediaData> image;
  final String lastName;
  final double position;
  final double totalSignUps;
  final double totalSignUpsApproved;
  final double totalSignUpsInvalid;
  final double totalSignUpsPending;
  final double totalSignUpsRejected;

  const CashCountFieldSignUpPosition({
    required this.$_id,
    required this.fieldAgentId,
    required this.firstName,
    required this.fullName,
    this.image = const Undefined(),
    required this.lastName,
    required this.position,
    required this.totalSignUps,
    required this.totalSignUpsApproved,
    required this.totalSignUpsInvalid,
    required this.totalSignUpsPending,
    required this.totalSignUpsRejected,
  });

  factory CashCountFieldSignUpPosition.empty() {
    return CashCountFieldSignUpPosition(
      $_id: FieldAgentsId(''),
      fieldAgentId: FieldAgentsId(''),
      firstName: '',
      fullName: '',
      lastName: '',
      position: 0.0,
      totalSignUps: 0.0,
      totalSignUpsApproved: 0.0,
      totalSignUpsInvalid: 0.0,
      totalSignUpsPending: 0.0,
      totalSignUpsRejected: 0.0,
    );
  }

  factory CashCountFieldSignUpPosition.fromJson(Map<String, dynamic> json) {
    return CashCountFieldSignUpPosition(
      $_id: FieldAgentsId(json['_id'] as String),
      fieldAgentId: FieldAgentsId(json['fieldAgentId'] as String),
      firstName: json['firstName'] as String,
      fullName: json['fullName'] as String,
      image: json['image'] != null
          ? Defined(MediaData.fromJson(json['image'] as Map<String, dynamic>))
          : const Undefined(),
      lastName: json['lastName'] as String,
      position: json['position'] as double,
      totalSignUps: json['totalSignUps'] as double,
      totalSignUpsApproved: json['totalSignUpsApproved'] as double,
      totalSignUpsInvalid: json['totalSignUpsInvalid'] as double,
      totalSignUpsPending: json['totalSignUpsPending'] as double,
      totalSignUpsRejected: json['totalSignUpsRejected'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': $_id.value,
      'fieldAgentId': fieldAgentId.value,
      'firstName': firstName,
      'fullName': fullName,
      if (image.isDefined) 'image': image.asDefined().value.toJson(),
      'lastName': lastName,
      'position': position,
      'totalSignUps': totalSignUps,
      'totalSignUpsApproved': totalSignUpsApproved,
      'totalSignUpsInvalid': totalSignUpsInvalid,
      'totalSignUpsPending': totalSignUpsPending,
      'totalSignUpsRejected': totalSignUpsRejected,
    };
  }

  /// Create from inline record (used in typedef conversions)
  factory CashCountFieldSignUpPosition.fromRecord(
    ({
      FieldAgentsId $_id,
      FieldAgentsId fieldAgentId,
      String firstName,
      String fullName,
      Optional<
        ({
          Optional<String> blurHash,
          Optional<String> mime,
          Optional<String> name,
          Optional<double> size,
          StorageId? storageId,
          Optional<String> url,
        })
      >
      image,
      String lastName,
      double position,
      double totalSignUps,
      double totalSignUpsApproved,
      double totalSignUpsInvalid,
      double totalSignUpsPending,
      double totalSignUpsRejected,
    })
    record,
  ) {
    return CashCountFieldSignUpPosition(
      $_id: record.$_id,
      fieldAgentId: record.fieldAgentId,
      firstName: record.firstName,
      fullName: record.fullName,
      image: record.image.isDefined
          ? Defined(MediaData.fromRecord(record.image.asDefined().value))
          : const Undefined(),
      lastName: record.lastName,
      position: record.position,
      totalSignUps: record.totalSignUps,
      totalSignUpsApproved: record.totalSignUpsApproved,
      totalSignUpsInvalid: record.totalSignUpsInvalid,
      totalSignUpsPending: record.totalSignUpsPending,
      totalSignUpsRejected: record.totalSignUpsRejected,
    );
  }

  CashCountFieldSignUpPosition copyWith({
    FieldAgentsId? $_id,
    FieldAgentsId? fieldAgentId,
    String? firstName,
    String? fullName,
    Optional<MediaData>? image,
    String? lastName,
    double? position,
    double? totalSignUps,
    double? totalSignUpsApproved,
    double? totalSignUpsInvalid,
    double? totalSignUpsPending,
    double? totalSignUpsRejected,
  }) {
    return CashCountFieldSignUpPosition(
      $_id: $_id ?? this.$_id,
      fieldAgentId: fieldAgentId ?? this.fieldAgentId,
      firstName: firstName ?? this.firstName,
      fullName: fullName ?? this.fullName,
      image: image ?? this.image,
      lastName: lastName ?? this.lastName,
      position: position ?? this.position,
      totalSignUps: totalSignUps ?? this.totalSignUps,
      totalSignUpsApproved: totalSignUpsApproved ?? this.totalSignUpsApproved,
      totalSignUpsInvalid: totalSignUpsInvalid ?? this.totalSignUpsInvalid,
      totalSignUpsPending: totalSignUpsPending ?? this.totalSignUpsPending,
      totalSignUpsRejected: totalSignUpsRejected ?? this.totalSignUpsRejected,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CashCountFieldSignUpPosition &&
        other.$_id == $_id &&
        other.fieldAgentId == fieldAgentId &&
        other.firstName == firstName &&
        other.fullName == fullName &&
        other.image == image &&
        other.lastName == lastName &&
        other.position == position &&
        other.totalSignUps == totalSignUps &&
        other.totalSignUpsApproved == totalSignUpsApproved &&
        other.totalSignUpsInvalid == totalSignUpsInvalid &&
        other.totalSignUpsPending == totalSignUpsPending &&
        other.totalSignUpsRejected == totalSignUpsRejected;
  }

  @override
  int get hashCode {
    return $_id.hashCode ^
        fieldAgentId.hashCode ^
        firstName.hashCode ^
        fullName.hashCode ^
        image.hashCode ^
        lastName.hashCode ^
        position.hashCode ^
        totalSignUps.hashCode ^
        totalSignUpsApproved.hashCode ^
        totalSignUpsInvalid.hashCode ^
        totalSignUpsPending.hashCode ^
        totalSignUpsRejected.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
