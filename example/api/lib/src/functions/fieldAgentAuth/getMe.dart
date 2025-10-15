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
      (on496985) => (
        $_creationTime: (on496985['_creationTime'] as double),
        $_id: on496985.containsKey('_id')
            ? Defined((on496985['_id'] as String))
            : Undefined<String>(),
        appCountryId: on496985.containsKey('appCountryId')
            ? Defined((on496985['appCountryId'] as String?))
            : Undefined<String?>(),
        appCountryIso: on496985.containsKey('appCountryIso')
            ? Defined((on496985['appCountryIso'] as String?))
            : Undefined<String?>(),
        appCountryName: on496985.containsKey('appCountryName')
            ? Defined((on496985['appCountryName'] as String?))
            : Undefined<String?>(),
        banExpires: on496985.containsKey('banExpires')
            ? Defined((on496985['banExpires'] as double?))
            : Undefined<double?>(),
        banReason: on496985.containsKey('banReason')
            ? Defined((on496985['banReason'] as String?))
            : Undefined<String?>(),
        banned: on496985.containsKey('banned')
            ? Defined((on496985['banned'] as bool?))
            : Undefined<bool?>(),
        createMeta: on496985.containsKey('createMeta')
            ? Defined((on496985['createMeta'] as String?))
            : Undefined<String?>(),
        createdAt: (on496985['createdAt'] as double),
        currentLocation: on496985.containsKey('currentLocation')
            ? Defined((on496985['currentLocation'] as String?))
            : Undefined<String?>(),
        dbId: on496985.containsKey('dbId')
            ? Defined((on496985['dbId'] as double?))
            : Undefined<double?>(),
        deletedAt: on496985.containsKey('deletedAt')
            ? Defined((on496985['deletedAt'] as double?))
            : Undefined<double?>(),
        deletedMeta: on496985.containsKey('deletedMeta')
            ? Defined((on496985['deletedMeta'] as String?))
            : Undefined<String?>(),
        displayUsername: on496985.containsKey('displayUsername')
            ? Defined((on496985['displayUsername'] as String?))
            : Undefined<String?>(),
        email: (on496985['email'] as String),
        emailVerified: (on496985['emailVerified'] as bool),
        fbmToken: on496985.containsKey('fbmToken')
            ? Defined((on496985['fbmToken'] as String?))
            : Undefined<String?>(),
        fieldAgentId: on496985.containsKey('fieldAgentId')
            ? Defined((on496985['fieldAgentId'] as String?))
            : Undefined<String?>(),
        firstName: on496985.containsKey('firstName')
            ? Defined((on496985['firstName'] as String?))
            : Undefined<String?>(),
        fullName: on496985.containsKey('fullName')
            ? Defined((on496985['fullName'] as String?))
            : Undefined<String?>(),
        image: on496985.containsKey('image')
            ? Defined((on496985['image'] as String?))
            : Undefined<String?>(),
        lastName: on496985.containsKey('lastName')
            ? Defined((on496985['lastName'] as String?))
            : Undefined<String?>(),
        memberId: on496985.containsKey('memberId')
            ? Defined((on496985['memberId'] as String?))
            : Undefined<String?>(),
        name: (on496985['name'] as String),
        organizationId: on496985.containsKey('organizationId')
            ? Defined((on496985['organizationId'] as String?))
            : Undefined<String?>(),
        phoneNumber: on496985.containsKey('phoneNumber')
            ? Defined((on496985['phoneNumber'] as String?))
            : Undefined<String?>(),
        phoneNumberVerified: on496985.containsKey('phoneNumberVerified')
            ? Defined((on496985['phoneNumberVerified'] as bool?))
            : Undefined<bool?>(),
        profileImageBlurHash: on496985.containsKey('profileImageBlurHash')
            ? Defined((on496985['profileImageBlurHash'] as String?))
            : Undefined<String?>(),
        profileImageSize: on496985.containsKey('profileImageSize')
            ? Defined((on496985['profileImageSize'] as double?))
            : Undefined<double?>(),
        role: on496985.containsKey('role')
            ? Defined((on496985['role'] as String?))
            : Undefined<String?>(),
        shippingClientId: on496985.containsKey('shippingClientId')
            ? Defined((on496985['shippingClientId'] as String?))
            : Undefined<String?>(),
        status: on496985.containsKey('status')
            ? Defined((on496985['status'] as String?))
            : Undefined<String?>(),
        subRole: on496985.containsKey('subRole')
            ? Defined((on496985['subRole'] as String?))
            : Undefined<String?>(),
        teamId: on496985.containsKey('teamId')
            ? Defined((on496985['teamId'] as String?))
            : Undefined<String?>(),
        teamMemberId: on496985.containsKey('teamMemberId')
            ? Defined((on496985['teamMemberId'] as String?))
            : Undefined<String?>(),
        teamType: on496985.containsKey('teamType')
            ? Defined((on496985['teamType'] as String?))
            : Undefined<String?>(),
        twoFactorEnabled: on496985.containsKey('twoFactorEnabled')
            ? Defined((on496985['twoFactorEnabled'] as bool?))
            : Undefined<bool?>(),
        updateMeta: on496985.containsKey('updateMeta')
            ? Defined((on496985['updateMeta'] as String?))
            : Undefined<String?>(),
        updatedAt: (on496985['updatedAt'] as double),
        userId: on496985.containsKey('userId')
            ? Defined((on496985['userId'] as String?))
            : Undefined<String?>(),
        username: on496985.containsKey('username')
            ? Defined((on496985['username'] as String?))
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
