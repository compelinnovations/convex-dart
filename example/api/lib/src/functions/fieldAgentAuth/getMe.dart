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
      (on355440) => (
        $_creationTime: (on355440['_creationTime'] as double),
        $_id: on355440.containsKey('_id')
            ? Defined<String>((on355440['_id'] as String))
            : Undefined<String>(),
        appCountryId: on355440.containsKey('appCountryId')
            ? Defined<String?>((on355440['appCountryId'] as String?))
            : Undefined<String?>(),
        appCountryIso: on355440.containsKey('appCountryIso')
            ? Defined<String?>((on355440['appCountryIso'] as String?))
            : Undefined<String?>(),
        appCountryName: on355440.containsKey('appCountryName')
            ? Defined<String?>((on355440['appCountryName'] as String?))
            : Undefined<String?>(),
        banExpires: on355440.containsKey('banExpires')
            ? Defined<double?>((on355440['banExpires'] as double?))
            : Undefined<double?>(),
        banReason: on355440.containsKey('banReason')
            ? Defined<String?>((on355440['banReason'] as String?))
            : Undefined<String?>(),
        banned: on355440.containsKey('banned')
            ? Defined<bool?>((on355440['banned'] as bool?))
            : Undefined<bool?>(),
        createMeta: on355440.containsKey('createMeta')
            ? Defined<String?>((on355440['createMeta'] as String?))
            : Undefined<String?>(),
        createdAt: (on355440['createdAt'] as double),
        currentLocation: on355440.containsKey('currentLocation')
            ? Defined<String?>((on355440['currentLocation'] as String?))
            : Undefined<String?>(),
        dbId: on355440.containsKey('dbId')
            ? Defined<double?>((on355440['dbId'] as double?))
            : Undefined<double?>(),
        deletedAt: on355440.containsKey('deletedAt')
            ? Defined<double?>((on355440['deletedAt'] as double?))
            : Undefined<double?>(),
        deletedMeta: on355440.containsKey('deletedMeta')
            ? Defined<String?>((on355440['deletedMeta'] as String?))
            : Undefined<String?>(),
        displayUsername: on355440.containsKey('displayUsername')
            ? Defined<String?>((on355440['displayUsername'] as String?))
            : Undefined<String?>(),
        email: (on355440['email'] as String),
        emailVerified: (on355440['emailVerified'] as bool),
        fbmToken: on355440.containsKey('fbmToken')
            ? Defined<String?>((on355440['fbmToken'] as String?))
            : Undefined<String?>(),
        fieldAgentId: on355440.containsKey('fieldAgentId')
            ? Defined<String?>((on355440['fieldAgentId'] as String?))
            : Undefined<String?>(),
        firstName: on355440.containsKey('firstName')
            ? Defined<String?>((on355440['firstName'] as String?))
            : Undefined<String?>(),
        fullName: on355440.containsKey('fullName')
            ? Defined<String?>((on355440['fullName'] as String?))
            : Undefined<String?>(),
        image: on355440.containsKey('image')
            ? Defined<String?>((on355440['image'] as String?))
            : Undefined<String?>(),
        lastName: on355440.containsKey('lastName')
            ? Defined<String?>((on355440['lastName'] as String?))
            : Undefined<String?>(),
        memberId: on355440.containsKey('memberId')
            ? Defined<String?>((on355440['memberId'] as String?))
            : Undefined<String?>(),
        name: (on355440['name'] as String),
        organizationId: on355440.containsKey('organizationId')
            ? Defined<String?>((on355440['organizationId'] as String?))
            : Undefined<String?>(),
        phoneNumber: on355440.containsKey('phoneNumber')
            ? Defined<String?>((on355440['phoneNumber'] as String?))
            : Undefined<String?>(),
        phoneNumberVerified: on355440.containsKey('phoneNumberVerified')
            ? Defined<bool?>((on355440['phoneNumberVerified'] as bool?))
            : Undefined<bool?>(),
        profileImageBlurHash: on355440.containsKey('profileImageBlurHash')
            ? Defined<String?>((on355440['profileImageBlurHash'] as String?))
            : Undefined<String?>(),
        profileImageSize: on355440.containsKey('profileImageSize')
            ? Defined<double?>((on355440['profileImageSize'] as double?))
            : Undefined<double?>(),
        role: on355440.containsKey('role')
            ? Defined<String?>((on355440['role'] as String?))
            : Undefined<String?>(),
        shippingClientId: on355440.containsKey('shippingClientId')
            ? Defined<String?>((on355440['shippingClientId'] as String?))
            : Undefined<String?>(),
        status: on355440.containsKey('status')
            ? Defined<String?>((on355440['status'] as String?))
            : Undefined<String?>(),
        subRole: on355440.containsKey('subRole')
            ? Defined<String?>((on355440['subRole'] as String?))
            : Undefined<String?>(),
        teamId: on355440.containsKey('teamId')
            ? Defined<String?>((on355440['teamId'] as String?))
            : Undefined<String?>(),
        teamMemberId: on355440.containsKey('teamMemberId')
            ? Defined<String?>((on355440['teamMemberId'] as String?))
            : Undefined<String?>(),
        teamType: on355440.containsKey('teamType')
            ? Defined<String?>((on355440['teamType'] as String?))
            : Undefined<String?>(),
        twoFactorEnabled: on355440.containsKey('twoFactorEnabled')
            ? Defined<bool?>((on355440['twoFactorEnabled'] as bool?))
            : Undefined<bool?>(),
        updateMeta: on355440.containsKey('updateMeta')
            ? Defined<String?>((on355440['updateMeta'] as String?))
            : Undefined<String?>(),
        updatedAt: (on355440['updatedAt'] as double),
        userId: on355440.containsKey('userId')
            ? Defined<String?>((on355440['userId'] as String?))
            : Undefined<String?>(),
        username: on355440.containsKey('username')
            ? Defined<String?>((on355440['username'] as String?))
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
