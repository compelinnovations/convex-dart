// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final getMe = QueryOperation<void, GetMeResponse>(
  'fieldAgentAuth:getMe',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(void args) {
  return hashmapToBtreemap(hashmap: {});
}

GetMeResponse deserialize(DartValue map) {
  return (
    body: (decodeValue(map) as IMap<String, dynamic>?)?.then(
      (on681588) => (
        $_creationTime: (on681588['_creationTime'] as double),
        $_id: on681588.containsKey('_id')
            ? Defined((on681588['_id'] as String))
            : Undefined<String>(),
        appCountryId: on681588.containsKey('appCountryId')
            ? Defined((on681588['appCountryId'] as String?))
            : Undefined<String?>(),
        appCountryIso: on681588.containsKey('appCountryIso')
            ? Defined((on681588['appCountryIso'] as String?))
            : Undefined<String?>(),
        appCountryName: on681588.containsKey('appCountryName')
            ? Defined((on681588['appCountryName'] as String?))
            : Undefined<String?>(),
        banExpires: on681588.containsKey('banExpires')
            ? Defined((on681588['banExpires'] as double?))
            : Undefined<double?>(),
        banReason: on681588.containsKey('banReason')
            ? Defined((on681588['banReason'] as String?))
            : Undefined<String?>(),
        banned: on681588.containsKey('banned')
            ? Defined((on681588['banned'] as bool?))
            : Undefined<bool?>(),
        createMeta: on681588.containsKey('createMeta')
            ? Defined((on681588['createMeta'] as String?))
            : Undefined<String?>(),
        createdAt: (on681588['createdAt'] as double),
        currentLocation: on681588.containsKey('currentLocation')
            ? Defined((on681588['currentLocation'] as String?))
            : Undefined<String?>(),
        dbId: on681588.containsKey('dbId')
            ? Defined((on681588['dbId'] as double?))
            : Undefined<double?>(),
        deletedAt: on681588.containsKey('deletedAt')
            ? Defined((on681588['deletedAt'] as double?))
            : Undefined<double?>(),
        deletedMeta: on681588.containsKey('deletedMeta')
            ? Defined((on681588['deletedMeta'] as String?))
            : Undefined<String?>(),
        displayUsername: on681588.containsKey('displayUsername')
            ? Defined((on681588['displayUsername'] as String?))
            : Undefined<String?>(),
        email: (on681588['email'] as String),
        emailVerified: (on681588['emailVerified'] as bool),
        fbmToken: on681588.containsKey('fbmToken')
            ? Defined((on681588['fbmToken'] as String?))
            : Undefined<String?>(),
        fieldAgentId: on681588.containsKey('fieldAgentId')
            ? Defined((on681588['fieldAgentId'] as String?))
            : Undefined<String?>(),
        firstName: on681588.containsKey('firstName')
            ? Defined((on681588['firstName'] as String?))
            : Undefined<String?>(),
        fullName: on681588.containsKey('fullName')
            ? Defined((on681588['fullName'] as String?))
            : Undefined<String?>(),
        image: on681588.containsKey('image')
            ? Defined((on681588['image'] as String?))
            : Undefined<String?>(),
        lastName: on681588.containsKey('lastName')
            ? Defined((on681588['lastName'] as String?))
            : Undefined<String?>(),
        memberId: on681588.containsKey('memberId')
            ? Defined((on681588['memberId'] as String?))
            : Undefined<String?>(),
        name: (on681588['name'] as String),
        organizationId: on681588.containsKey('organizationId')
            ? Defined((on681588['organizationId'] as String?))
            : Undefined<String?>(),
        phoneNumber: on681588.containsKey('phoneNumber')
            ? Defined((on681588['phoneNumber'] as String?))
            : Undefined<String?>(),
        phoneNumberVerified: on681588.containsKey('phoneNumberVerified')
            ? Defined((on681588['phoneNumberVerified'] as bool?))
            : Undefined<bool?>(),
        profileImageBlurHash: on681588.containsKey('profileImageBlurHash')
            ? Defined((on681588['profileImageBlurHash'] as String?))
            : Undefined<String?>(),
        profileImageSize: on681588.containsKey('profileImageSize')
            ? Defined((on681588['profileImageSize'] as double?))
            : Undefined<double?>(),
        role: on681588.containsKey('role')
            ? Defined((on681588['role'] as String?))
            : Undefined<String?>(),
        shippingClientId: on681588.containsKey('shippingClientId')
            ? Defined((on681588['shippingClientId'] as String?))
            : Undefined<String?>(),
        status: on681588.containsKey('status')
            ? Defined((on681588['status'] as String?))
            : Undefined<String?>(),
        subRole: on681588.containsKey('subRole')
            ? Defined((on681588['subRole'] as String?))
            : Undefined<String?>(),
        teamId: on681588.containsKey('teamId')
            ? Defined((on681588['teamId'] as String?))
            : Undefined<String?>(),
        teamMemberId: on681588.containsKey('teamMemberId')
            ? Defined((on681588['teamMemberId'] as String?))
            : Undefined<String?>(),
        teamType: on681588.containsKey('teamType')
            ? Defined((on681588['teamType'] as String?))
            : Undefined<String?>(),
        twoFactorEnabled: on681588.containsKey('twoFactorEnabled')
            ? Defined((on681588['twoFactorEnabled'] as bool?))
            : Undefined<bool?>(),
        updateMeta: on681588.containsKey('updateMeta')
            ? Defined((on681588['updateMeta'] as String?))
            : Undefined<String?>(),
        updatedAt: (on681588['updatedAt'] as double),
        userId: on681588.containsKey('userId')
            ? Defined((on681588['userId'] as String?))
            : Undefined<String?>(),
        username: on681588.containsKey('username')
            ? Defined((on681588['username'] as String?))
            : Undefined<String?>(),
      ),
    ),
  );
}

typedef GetMeResponse = ({
  ({
    double $_creationTime,
    Optional<String> $_id,
    Optional<String?> appCountryId,
    Optional<String?> appCountryIso,
    Optional<String?> appCountryName,
    Optional<double?> banExpires,
    Optional<String?> banReason,
    Optional<bool?> banned,
    Optional<String?> createMeta,
    double createdAt,
    Optional<String?> currentLocation,
    Optional<double?> dbId,
    Optional<double?> deletedAt,
    Optional<String?> deletedMeta,
    Optional<String?> displayUsername,
    String email,
    bool emailVerified,
    Optional<String?> fbmToken,
    Optional<String?> fieldAgentId,
    Optional<String?> firstName,
    Optional<String?> fullName,
    Optional<String?> image,
    Optional<String?> lastName,
    Optional<String?> memberId,
    String name,
    Optional<String?> organizationId,
    Optional<String?> phoneNumber,
    Optional<bool?> phoneNumberVerified,
    Optional<String?> profileImageBlurHash,
    Optional<double?> profileImageSize,
    Optional<String?> role,
    Optional<String?> shippingClientId,
    Optional<String?> status,
    Optional<String?> subRole,
    Optional<String?> teamId,
    Optional<String?> teamMemberId,
    Optional<String?> teamType,
    Optional<bool?> twoFactorEnabled,
    Optional<String?> updateMeta,
    double updatedAt,
    Optional<String?> userId,
    Optional<String?> username,
  })?
  body,
});
