import 'package:objectbox/objectbox.dart';

@Entity()
class FieldAgentStatBox {
  @Id()
  int id = 0;

  String dbId;
  @Property(type: PropertyType.dateNano)
  int createdAt;
  @Property(type: PropertyType.dateNano)
  int? deletedAt;
  double? totalCashCountSignUps;
  double? totalCommissionsEarned;
  double? totalCommissionsInvalid;
  double? totalCommissionsPaid;
  double? totalCompletedCashCountSignUps;
  double? totalExpiredCashCountSignUps;
  double? totalPendingCashCountSignUps;
  @Property(type: PropertyType.dateNano)
  int? updatedAt;
  String userId;

  FieldAgentStatBox({
    this.id = 0,
    required this.dbId,
    required this.createdAt,
    this.deletedAt,
    this.totalCashCountSignUps,
    this.totalCommissionsEarned,
    this.totalCommissionsInvalid,
    this.totalCommissionsPaid,
    this.totalCompletedCashCountSignUps,
    this.totalExpiredCashCountSignUps,
    this.totalPendingCashCountSignUps,
    this.updatedAt,
    required this.userId,
  });

  factory FieldAgentStatBox.fromMap(Map<String, dynamic> map) {
    return FieldAgentStatBox(
      id: 0,
      dbId: map['_id']?.toString() ?? '',
      createdAt: (map['createdAt'] as double).round(),
      deletedAt: (map['deletedAt'] as double?)?.round(),
      totalCashCountSignUps: map['totalCashCountSignUps'],
      totalCommissionsEarned: map['totalCommissionsEarned'],
      totalCommissionsInvalid: map['totalCommissionsInvalid'],
      totalCommissionsPaid: map['totalCommissionsPaid'],
      totalCompletedCashCountSignUps: map['totalCompletedCashCountSignUps'],
      totalExpiredCashCountSignUps: map['totalExpiredCashCountSignUps'],
      totalPendingCashCountSignUps: map['totalPendingCashCountSignUps'],
      updatedAt: (map['updatedAt'] as double?)?.round(),
      userId: map['userId']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '_id': dbId,
      'createdAt': createdAt.toDouble(),
      'deletedAt': deletedAt?.toDouble(),
      'totalCashCountSignUps': totalCashCountSignUps,
      'totalCommissionsEarned': totalCommissionsEarned,
      'totalCommissionsInvalid': totalCommissionsInvalid,
      'totalCommissionsPaid': totalCommissionsPaid,
      'totalCompletedCashCountSignUps': totalCompletedCashCountSignUps,
      'totalExpiredCashCountSignUps': totalExpiredCashCountSignUps,
      'totalPendingCashCountSignUps': totalPendingCashCountSignUps,
      'updatedAt': updatedAt?.toDouble(),
      'userId': userId,
    };
  }
}
