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
      (on37548) => (
        $_creationTime: (on37548['_creationTime'] as double),
        $_id: on37548.containsKey('_id')
            ? Defined<String>((on37548['_id'] as String))
            : Undefined<String>(),
        appCountryId: on37548.containsKey('appCountryId')
            ? Defined<String?>((on37548['appCountryId'] as String?))
            : Undefined<String?>(),
        appCountryIso: on37548.containsKey('appCountryIso')
            ? Defined<String?>((on37548['appCountryIso'] as String?))
            : Undefined<String?>(),
        appCountryName: on37548.containsKey('appCountryName')
            ? Defined<String?>((on37548['appCountryName'] as String?))
            : Undefined<String?>(),
        banExpires: on37548.containsKey('banExpires')
            ? Defined<double?>((on37548['banExpires'] as double?))
            : Undefined<double?>(),
        banReason: on37548.containsKey('banReason')
            ? Defined<String?>((on37548['banReason'] as String?))
            : Undefined<String?>(),
        banned: on37548.containsKey('banned')
            ? Defined<bool?>((on37548['banned'] as bool?))
            : Undefined<bool?>(),
        createMeta: on37548.containsKey('createMeta')
            ? Defined<String?>((on37548['createMeta'] as String?))
            : Undefined<String?>(),
        createdAt: (on37548['createdAt'] as double),
        currentLocation: on37548.containsKey('currentLocation')
            ? Defined<String?>((on37548['currentLocation'] as String?))
            : Undefined<String?>(),
        dbId: on37548.containsKey('dbId')
            ? Defined<double?>((on37548['dbId'] as double?))
            : Undefined<double?>(),
        deletedAt: on37548.containsKey('deletedAt')
            ? Defined<double?>((on37548['deletedAt'] as double?))
            : Undefined<double?>(),
        deletedMeta: on37548.containsKey('deletedMeta')
            ? Defined<String?>((on37548['deletedMeta'] as String?))
            : Undefined<String?>(),
        displayUsername: on37548.containsKey('displayUsername')
            ? Defined<String?>((on37548['displayUsername'] as String?))
            : Undefined<String?>(),
        email: (on37548['email'] as String),
        emailVerified: (on37548['emailVerified'] as bool),
        fbmToken: on37548.containsKey('fbmToken')
            ? Defined<String?>((on37548['fbmToken'] as String?))
            : Undefined<String?>(),
        fieldAgentId: on37548.containsKey('fieldAgentId')
            ? Defined<String?>((on37548['fieldAgentId'] as String?))
            : Undefined<String?>(),
        firstName: on37548.containsKey('firstName')
            ? Defined<String?>((on37548['firstName'] as String?))
            : Undefined<String?>(),
        fullName: on37548.containsKey('fullName')
            ? Defined<String?>((on37548['fullName'] as String?))
            : Undefined<String?>(),
        image: on37548.containsKey('image')
            ? Defined<String?>((on37548['image'] as String?))
            : Undefined<String?>(),
        lastName: on37548.containsKey('lastName')
            ? Defined<String?>((on37548['lastName'] as String?))
            : Undefined<String?>(),
        memberId: on37548.containsKey('memberId')
            ? Defined<String?>((on37548['memberId'] as String?))
            : Undefined<String?>(),
        name: (on37548['name'] as String),
        organizationId: on37548.containsKey('organizationId')
            ? Defined<String?>((on37548['organizationId'] as String?))
            : Undefined<String?>(),
        phoneNumber: on37548.containsKey('phoneNumber')
            ? Defined<String?>((on37548['phoneNumber'] as String?))
            : Undefined<String?>(),
        phoneNumberVerified: on37548.containsKey('phoneNumberVerified')
            ? Defined<bool?>((on37548['phoneNumberVerified'] as bool?))
            : Undefined<bool?>(),
        profileImageBlurHash: on37548.containsKey('profileImageBlurHash')
            ? Defined<String?>((on37548['profileImageBlurHash'] as String?))
            : Undefined<String?>(),
        profileImageSize: on37548.containsKey('profileImageSize')
            ? Defined<double?>((on37548['profileImageSize'] as double?))
            : Undefined<double?>(),
        role: on37548.containsKey('role')
            ? Defined<String?>((on37548['role'] as String?))
            : Undefined<String?>(),
        shippingClientId: on37548.containsKey('shippingClientId')
            ? Defined<String?>((on37548['shippingClientId'] as String?))
            : Undefined<String?>(),
        status: on37548.containsKey('status')
            ? Defined<String?>((on37548['status'] as String?))
            : Undefined<String?>(),
        subRole: on37548.containsKey('subRole')
            ? Defined<String?>((on37548['subRole'] as String?))
            : Undefined<String?>(),
        teamId: on37548.containsKey('teamId')
            ? Defined<String?>((on37548['teamId'] as String?))
            : Undefined<String?>(),
        teamMemberId: on37548.containsKey('teamMemberId')
            ? Defined<String?>((on37548['teamMemberId'] as String?))
            : Undefined<String?>(),
        teamType: on37548.containsKey('teamType')
            ? Defined<String?>((on37548['teamType'] as String?))
            : Undefined<String?>(),
        twoFactorEnabled: on37548.containsKey('twoFactorEnabled')
            ? Defined<bool?>((on37548['twoFactorEnabled'] as bool?))
            : Undefined<bool?>(),
        updateMeta: on37548.containsKey('updateMeta')
            ? Defined<String?>((on37548['updateMeta'] as String?))
            : Undefined<String?>(),
        updatedAt: (on37548['updatedAt'] as double),
        userId: on37548.containsKey('userId')
            ? Defined<String?>((on37548['userId'] as String?))
            : Undefined<String?>(),
        username: on37548.containsKey('username')
            ? Defined<String?>((on37548['username'] as String?))
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
