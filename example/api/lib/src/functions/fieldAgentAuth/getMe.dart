// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final getMe = QueryOperation<void, AuthUserDoc>(
  'app/fieldAgentAuth:getMe',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(void args) {
  return hashmapToBtreemap(hashmap: {});
}

AuthUserDoc deserialize(DartValue map) {
  return (
    body: (decodeValue(map) as IMap<String, dynamic>?)?.then(
      (on632859) => (
        $_creationTime: (on632859['_creationTime'] as double),
        $_id: on632859.containsKey('_id')
            ? Defined<String>((on632859['_id'] as String))
            : Undefined<String>(),
        appCountryId: on632859.containsKey('appCountryId')
            ? Defined<String?>((on632859['appCountryId'] as String?))
            : Undefined<String?>(),
        appCountryIso: on632859.containsKey('appCountryIso')
            ? Defined<String?>((on632859['appCountryIso'] as String?))
            : Undefined<String?>(),
        appCountryName: on632859.containsKey('appCountryName')
            ? Defined<String?>((on632859['appCountryName'] as String?))
            : Undefined<String?>(),
        banExpires: on632859.containsKey('banExpires')
            ? Defined<double?>((on632859['banExpires'] as double?))
            : Undefined<double?>(),
        banReason: on632859.containsKey('banReason')
            ? Defined<String?>((on632859['banReason'] as String?))
            : Undefined<String?>(),
        banned: on632859.containsKey('banned')
            ? Defined<bool?>((on632859['banned'] as bool?))
            : Undefined<bool?>(),
        createMeta: on632859.containsKey('createMeta')
            ? Defined<String?>((on632859['createMeta'] as String?))
            : Undefined<String?>(),
        createdAt: (on632859['createdAt'] as double),
        currentLocation: on632859.containsKey('currentLocation')
            ? Defined<String?>((on632859['currentLocation'] as String?))
            : Undefined<String?>(),
        dbId: on632859.containsKey('dbId')
            ? Defined<double?>((on632859['dbId'] as double?))
            : Undefined<double?>(),
        deletedAt: on632859.containsKey('deletedAt')
            ? Defined<double?>((on632859['deletedAt'] as double?))
            : Undefined<double?>(),
        deletedMeta: on632859.containsKey('deletedMeta')
            ? Defined<String?>((on632859['deletedMeta'] as String?))
            : Undefined<String?>(),
        displayUsername: on632859.containsKey('displayUsername')
            ? Defined<String?>((on632859['displayUsername'] as String?))
            : Undefined<String?>(),
        email: (on632859['email'] as String),
        emailVerified: (on632859['emailVerified'] as bool),
        fbmToken: on632859.containsKey('fbmToken')
            ? Defined<String?>((on632859['fbmToken'] as String?))
            : Undefined<String?>(),
        fieldAgentId: on632859.containsKey('fieldAgentId')
            ? Defined<String?>((on632859['fieldAgentId'] as String?))
            : Undefined<String?>(),
        firstName: on632859.containsKey('firstName')
            ? Defined<String?>((on632859['firstName'] as String?))
            : Undefined<String?>(),
        fullName: on632859.containsKey('fullName')
            ? Defined<String?>((on632859['fullName'] as String?))
            : Undefined<String?>(),
        image: on632859.containsKey('image')
            ? Defined<String?>((on632859['image'] as String?))
            : Undefined<String?>(),
        lastName: on632859.containsKey('lastName')
            ? Defined<String?>((on632859['lastName'] as String?))
            : Undefined<String?>(),
        memberId: on632859.containsKey('memberId')
            ? Defined<String?>((on632859['memberId'] as String?))
            : Undefined<String?>(),
        name: (on632859['name'] as String),
        organizationId: on632859.containsKey('organizationId')
            ? Defined<String?>((on632859['organizationId'] as String?))
            : Undefined<String?>(),
        phoneNumber: on632859.containsKey('phoneNumber')
            ? Defined<String?>((on632859['phoneNumber'] as String?))
            : Undefined<String?>(),
        phoneNumberVerified: on632859.containsKey('phoneNumberVerified')
            ? Defined<bool?>((on632859['phoneNumberVerified'] as bool?))
            : Undefined<bool?>(),
        profileImageBlurHash: on632859.containsKey('profileImageBlurHash')
            ? Defined<String?>((on632859['profileImageBlurHash'] as String?))
            : Undefined<String?>(),
        profileImageSize: on632859.containsKey('profileImageSize')
            ? Defined<double?>((on632859['profileImageSize'] as double?))
            : Undefined<double?>(),
        role: on632859.containsKey('role')
            ? Defined<String?>((on632859['role'] as String?))
            : Undefined<String?>(),
        shippingClientId: on632859.containsKey('shippingClientId')
            ? Defined<String?>((on632859['shippingClientId'] as String?))
            : Undefined<String?>(),
        status: on632859.containsKey('status')
            ? Defined<String?>((on632859['status'] as String?))
            : Undefined<String?>(),
        subRole: on632859.containsKey('subRole')
            ? Defined<String?>((on632859['subRole'] as String?))
            : Undefined<String?>(),
        teamId: on632859.containsKey('teamId')
            ? Defined<String?>((on632859['teamId'] as String?))
            : Undefined<String?>(),
        teamMemberId: on632859.containsKey('teamMemberId')
            ? Defined<String?>((on632859['teamMemberId'] as String?))
            : Undefined<String?>(),
        teamType: on632859.containsKey('teamType')
            ? Defined<String?>((on632859['teamType'] as String?))
            : Undefined<String?>(),
        twoFactorEnabled: on632859.containsKey('twoFactorEnabled')
            ? Defined<bool?>((on632859['twoFactorEnabled'] as bool?))
            : Undefined<bool?>(),
        updateMeta: on632859.containsKey('updateMeta')
            ? Defined<String?>((on632859['updateMeta'] as String?))
            : Undefined<String?>(),
        updatedAt: (on632859['updatedAt'] as double),
        userId: on632859.containsKey('userId')
            ? Defined<String?>((on632859['userId'] as String?))
            : Undefined<String?>(),
        username: on632859.containsKey('username')
            ? Defined<String?>((on632859['username'] as String?))
            : Undefined<String?>(),
      ),
    ),
  );
}

typedef AuthUserDoc = ({
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
