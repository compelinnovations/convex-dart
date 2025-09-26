import 'package:objectbox/objectbox.dart';
import 'dart:convert';

@Entity()
class CashCountFieldSignUpBox {
  @Id()
  int id = 0;

  String dbId;
  @Property(type: PropertyType.dateNano)
  int? completedAt;
  String? completedMeta;
  @Property(type: PropertyType.dateNano)
  int createdAt;
  String creatorId;
  @Property(type: PropertyType.dateNano)
  int? deletedAt;
  String? deletedMeta;
  String deviceInfo;
  @Property(type: PropertyType.dateNano)
  int? expiredAt;
  String? mongoId;
  String phoneNumber;
  @Property(type: PropertyType.dateNano)
  int? rejectionAt;
  String? rejectionMeta;
  String? rejectionReason;
  @Property(type: PropertyType.dateNano)
  int? statUpdatedAt;
  String status;
  String? updateMeta;
  @Property(type: PropertyType.dateNano)
  int? updatedAt;

  CashCountFieldSignUpBox({
    this.id = 0,
    required this.dbId,
    this.completedAt,
    this.completedMeta,
    required this.createdAt,
    required this.creatorId,
    this.deletedAt,
    this.deletedMeta,
    required this.deviceInfo,
    this.expiredAt,
    this.mongoId,
    required this.phoneNumber,
    this.rejectionAt,
    this.rejectionMeta,
    this.rejectionReason,
    this.statUpdatedAt,
    required this.status,
    this.updateMeta,
    this.updatedAt,
  });

  factory CashCountFieldSignUpBox.fromMap(Map<String, dynamic> map) {
    return CashCountFieldSignUpBox(
      id: 0,
      dbId: map['_id']?.toString() ?? '',
      completedAt: (map['completedAt'] as double?)?.round(),
      completedMeta: jsonEncode(map['completedMeta']),
      createdAt: (map['createdAt'] as double).round(),
      creatorId: map['creatorId']?.toString() ?? '',
      deletedAt: (map['deletedAt'] as double?)?.round(),
      deletedMeta: jsonEncode(map['deletedMeta']),
      deviceInfo: jsonEncode(map['deviceInfo']),
      expiredAt: (map['expiredAt'] as double?)?.round(),
      mongoId: map['mongoId'],
      phoneNumber: map['phoneNumber']?.toString() ?? '',
      rejectionAt: (map['rejectionAt'] as double?)?.round(),
      rejectionMeta: jsonEncode(map['rejectionMeta']),
      rejectionReason: map['rejectionReason'],
      statUpdatedAt: (map['statUpdatedAt'] as double?)?.round(),
      status: jsonEncode(map['status']),
      updateMeta: jsonEncode(map['updateMeta']),
      updatedAt: (map['updatedAt'] as double?)?.round(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '_id': dbId,
      'completedAt': completedAt?.toDouble(),
      'completedMeta': completedMeta != null
          ? jsonDecode(completedMeta!)
          : null,
      'createdAt': createdAt.toDouble(),
      'creatorId': creatorId,
      'deletedAt': deletedAt?.toDouble(),
      'deletedMeta': deletedMeta != null ? jsonDecode(deletedMeta!) : null,
      'deviceInfo': jsonDecode(deviceInfo),
      'expiredAt': expiredAt?.toDouble(),
      'mongoId': mongoId,
      'phoneNumber': phoneNumber,
      'rejectionAt': rejectionAt?.toDouble(),
      'rejectionMeta': rejectionMeta != null
          ? jsonDecode(rejectionMeta!)
          : null,
      'rejectionReason': rejectionReason,
      'statUpdatedAt': statUpdatedAt?.toDouble(),
      'status': jsonDecode(status),
      'updateMeta': updateMeta != null ? jsonDecode(updateMeta!) : null,
      'updatedAt': updatedAt?.toDouble(),
    };
  }
}
