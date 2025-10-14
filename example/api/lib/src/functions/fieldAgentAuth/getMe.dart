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
      (on137718) => (
        $_creationTime: (on137718['_creationTime'] as double),
        $_id: on137718.containsKey('_id')
            ? Defined((on137718['_id'] as String))
            : Undefined<String>(),
        appCountryId: on137718.containsKey('appCountryId')
            ? Defined((on137718['appCountryId'] as String?))
            : Undefined<String?>(),
        appCountryIso: on137718.containsKey('appCountryIso')
            ? Defined((on137718['appCountryIso'] as String?))
            : Undefined<String?>(),
        appCountryName: on137718.containsKey('appCountryName')
            ? Defined((on137718['appCountryName'] as String?))
            : Undefined<String?>(),
        banExpires: on137718.containsKey('banExpires')
            ? Defined((on137718['banExpires'] as double?))
            : Undefined<double?>(),
        banReason: on137718.containsKey('banReason')
            ? Defined((on137718['banReason'] as String?))
            : Undefined<String?>(),
        banned: on137718.containsKey('banned')
            ? Defined((on137718['banned'] as bool?))
            : Undefined<bool?>(),
        createMeta: on137718.containsKey('createMeta')
            ? Defined((on137718['createMeta'] as String?))
            : Undefined<String?>(),
        createdAt: (on137718['createdAt'] as double),
        dbId: on137718.containsKey('dbId')
            ? Defined((on137718['dbId'] as double?))
            : Undefined<double?>(),
        deletedAt: on137718.containsKey('deletedAt')
            ? Defined((on137718['deletedAt'] as double?))
            : Undefined<double?>(),
        deletedMeta: on137718.containsKey('deletedMeta')
            ? Defined((on137718['deletedMeta'] as String?))
            : Undefined<String?>(),
        displayUsername: on137718.containsKey('displayUsername')
            ? Defined((on137718['displayUsername'] as String?))
            : Undefined<String?>(),
        email: (on137718['email'] as String),
        emailVerified: (on137718['emailVerified'] as bool),
        fbmToken: on137718.containsKey('fbmToken')
            ? Defined((on137718['fbmToken'] as String?))
            : Undefined<String?>(),
        fieldAgentId: on137718.containsKey('fieldAgentId')
            ? Defined((on137718['fieldAgentId'] as String?))
            : Undefined<String?>(),
        firstName: on137718.containsKey('firstName')
            ? Defined((on137718['firstName'] as String?))
            : Undefined<String?>(),
        fullName: on137718.containsKey('fullName')
            ? Defined((on137718['fullName'] as String?))
            : Undefined<String?>(),
        image: on137718.containsKey('image')
            ? Defined((on137718['image'] as String?))
            : Undefined<String?>(),
        lastName: on137718.containsKey('lastName')
            ? Defined((on137718['lastName'] as String?))
            : Undefined<String?>(),
        memberId: on137718.containsKey('memberId')
            ? Defined((on137718['memberId'] as String?))
            : Undefined<String?>(),
        name: (on137718['name'] as String),
        organizationId: on137718.containsKey('organizationId')
            ? Defined((on137718['organizationId'] as String?))
            : Undefined<String?>(),
        phoneNumber: on137718.containsKey('phoneNumber')
            ? Defined((on137718['phoneNumber'] as String?))
            : Undefined<String?>(),
        phoneNumberVerified: on137718.containsKey('phoneNumberVerified')
            ? Defined((on137718['phoneNumberVerified'] as bool?))
            : Undefined<bool?>(),
        profileImageBlurHash: on137718.containsKey('profileImageBlurHash')
            ? Defined((on137718['profileImageBlurHash'] as String?))
            : Undefined<String?>(),
        profileImageSize: on137718.containsKey('profileImageSize')
            ? Defined((on137718['profileImageSize'] as double?))
            : Undefined<double?>(),
        role: on137718.containsKey('role')
            ? Defined((on137718['role'] as String?))
            : Undefined<String?>(),
        shippingClientId: on137718.containsKey('shippingClientId')
            ? Defined((on137718['shippingClientId'] as String?))
            : Undefined<String?>(),
        status: on137718.containsKey('status')
            ? Defined((on137718['status'] as String?))
            : Undefined<String?>(),
        subRole: on137718.containsKey('subRole')
            ? Defined((on137718['subRole'] as String?))
            : Undefined<String?>(),
        teamId: on137718.containsKey('teamId')
            ? Defined((on137718['teamId'] as String?))
            : Undefined<String?>(),
        teamMemberId: on137718.containsKey('teamMemberId')
            ? Defined((on137718['teamMemberId'] as String?))
            : Undefined<String?>(),
        teamType: on137718.containsKey('teamType')
            ? Defined((on137718['teamType'] as String?))
            : Undefined<String?>(),
        twoFactorEnabled: on137718.containsKey('twoFactorEnabled')
            ? Defined((on137718['twoFactorEnabled'] as bool?))
            : Undefined<bool?>(),
        updateMeta: on137718.containsKey('updateMeta')
            ? Defined((on137718['updateMeta'] as String?))
            : Undefined<String?>(),
        updatedAt: (on137718['updatedAt'] as double),
        userId: on137718.containsKey('userId')
            ? Defined((on137718['userId'] as String?))
            : Undefined<String?>(),
        username: on137718.containsKey('username')
            ? Defined((on137718['username'] as String?))
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
