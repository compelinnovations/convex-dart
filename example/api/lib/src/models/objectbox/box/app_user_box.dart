import 'package:objectbox/objectbox.dart';
import 'dart:convert';

@Entity()
class AppUserBox {
  @Id()
  int id = 0;

  String idRef;
  String? appCountryId;
  String? appCountryIso;
  String? appCountryName;
  String? auditAddedById;
  String? auditAddedByName;
  String? auditDeletedById;
  String? auditDeletedByName;
  String? auditUpdatedById;
  String? auditUpdatedByName;
  String? contactEmail;
  String? contactPhone;
  @Property(type: PropertyType.dateNano)
  int? createdAt;
  String? currentLocation;
  double? dbId;
  @Property(type: PropertyType.dateNano)
  int? deletedAt;
  String? deviceIds;
  String email;
  bool emailVerified;
  String? fbmToken;
  String firstName;
  String fullName;
  String? hash;
  String lastName;
  String? organizationBranchAccessIds;
  String? organizationBranchId;
  String? organizationId;
  String? organizationType;
  String? phone;
  String? profileImage;
  String? profileImageBlurHash;
  double? profileImageSize;
  String role;
  String? salt;
  String? statId;
  String status;
  String subRole;
  String? teamBranchAccessIds;
  String? teamBranchId;
  String? teamId;
  String? teamType;
  @Property(type: PropertyType.dateNano)
  int? updatedAt;
  String? username;

  AppUserBox({
    this.id = 0,
    required this.idRef,
    this.appCountryId,
    this.appCountryIso,
    this.appCountryName,
    this.auditAddedById,
    this.auditAddedByName,
    this.auditDeletedById,
    this.auditDeletedByName,
    this.auditUpdatedById,
    this.auditUpdatedByName,
    this.contactEmail,
    this.contactPhone,
    this.createdAt,
    this.currentLocation,
    this.dbId,
    this.deletedAt,
    this.deviceIds,
    required this.email,
    required this.emailVerified,
    this.fbmToken,
    required this.firstName,
    required this.fullName,
    this.hash,
    required this.lastName,
    this.organizationBranchAccessIds,
    this.organizationBranchId,
    this.organizationId,
    this.organizationType,
    this.phone,
    this.profileImage,
    this.profileImageBlurHash,
    this.profileImageSize,
    required this.role,
    this.salt,
    this.statId,
    required this.status,
    required this.subRole,
    this.teamBranchAccessIds,
    this.teamBranchId,
    this.teamId,
    this.teamType,
    this.updatedAt,
    this.username,
  });

  factory AppUserBox.fromMap(Map<String, dynamic> map) {
    return AppUserBox(
      id: 0,
      idRef: map['_id']?.toString() ?? '',
      appCountryId: map['appCountryId'],
      appCountryIso: map['appCountryIso'],
      appCountryName: map['appCountryName'],
      auditAddedById: map['auditAddedById'],
      auditAddedByName: map['auditAddedByName'],
      auditDeletedById: map['auditDeletedById'],
      auditDeletedByName: map['auditDeletedByName'],
      auditUpdatedById: map['auditUpdatedById'],
      auditUpdatedByName: map['auditUpdatedByName'],
      contactEmail: map['contactEmail'],
      contactPhone: map['contactPhone'],
      createdAt: (map['createdAt'] as double?)?.round(),
      currentLocation: jsonEncode(map['currentLocation']),
      dbId: map['dbId'],
      deletedAt: (map['deletedAt'] as double?)?.round(),
      deviceIds: jsonEncode(map['deviceIds']),
      email: map['email']?.toString() ?? '',
      emailVerified: map['emailVerified'],
      fbmToken: map['fbmToken'],
      firstName: map['firstName']?.toString() ?? '',
      fullName: map['fullName']?.toString() ?? '',
      hash: map['hash'],
      lastName: map['lastName']?.toString() ?? '',
      organizationBranchAccessIds: jsonEncode(
        map['organizationBranchAccessIds'],
      ),
      organizationBranchId: map['organizationBranchId'],
      organizationId: map['organizationId'],
      organizationType: map['organizationType'],
      phone: map['phone'],
      profileImage: map['profileImage'],
      profileImageBlurHash: map['profileImageBlurHash'],
      profileImageSize: map['profileImageSize'],
      role: map['role']?.toString() ?? '',
      salt: map['salt'],
      statId: map['statId'],
      status: map['status']?.toString() ?? '',
      subRole: map['subRole']?.toString() ?? '',
      teamBranchAccessIds: jsonEncode(map['teamBranchAccessIds']),
      teamBranchId: map['teamBranchId'],
      teamId: map['teamId'],
      teamType: map['teamType'],
      updatedAt: (map['updatedAt'] as double?)?.round(),
      username: map['username'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '_id': idRef,
      'appCountryId': appCountryId,
      'appCountryIso': appCountryIso,
      'appCountryName': appCountryName,
      'auditAddedById': auditAddedById,
      'auditAddedByName': auditAddedByName,
      'auditDeletedById': auditDeletedById,
      'auditDeletedByName': auditDeletedByName,
      'auditUpdatedById': auditUpdatedById,
      'auditUpdatedByName': auditUpdatedByName,
      'contactEmail': contactEmail,
      'contactPhone': contactPhone,
      'createdAt': createdAt?.toDouble(),
      'currentLocation': currentLocation != null
          ? jsonDecode(currentLocation!)
          : null,
      'dbId': dbId,
      'deletedAt': deletedAt?.toDouble(),
      'deviceIds': deviceIds != null ? jsonDecode(deviceIds!) : null,
      'email': email,
      'emailVerified': emailVerified,
      'fbmToken': fbmToken,
      'firstName': firstName,
      'fullName': fullName,
      'hash': hash,
      'lastName': lastName,
      'organizationBranchAccessIds': organizationBranchAccessIds != null
          ? jsonDecode(organizationBranchAccessIds!)
          : null,
      'organizationBranchId': organizationBranchId,
      'organizationId': organizationId,
      'organizationType': organizationType,
      'phone': phone,
      'profileImage': profileImage,
      'profileImageBlurHash': profileImageBlurHash,
      'profileImageSize': profileImageSize,
      'role': role,
      'salt': salt,
      'statId': statId,
      'status': status,
      'subRole': subRole,
      'teamBranchAccessIds': teamBranchAccessIds != null
          ? jsonDecode(teamBranchAccessIds!)
          : null,
      'teamBranchId': teamBranchId,
      'teamId': teamId,
      'teamType': teamType,
      'updatedAt': updatedAt?.toDouble(),
      'username': username,
    };
  }
}
