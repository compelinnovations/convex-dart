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
      (on130340) => (
        $_creationTime: (on130340['_creationTime'] as double),
        $_id: on130340.containsKey('_id')
            ? Defined<String>((on130340['_id'] as String))
            : Undefined<String>(),
        appCountryId: on130340.containsKey('appCountryId')
            ? Defined<String?>((on130340['appCountryId'] as String?))
            : Undefined<String?>(),
        appCountryIso: on130340.containsKey('appCountryIso')
            ? Defined<String?>((on130340['appCountryIso'] as String?))
            : Undefined<String?>(),
        appCountryName: on130340.containsKey('appCountryName')
            ? Defined<String?>((on130340['appCountryName'] as String?))
            : Undefined<String?>(),
        banExpires: on130340.containsKey('banExpires')
            ? Defined<double?>((on130340['banExpires'] as double?))
            : Undefined<double?>(),
        banReason: on130340.containsKey('banReason')
            ? Defined<String?>((on130340['banReason'] as String?))
            : Undefined<String?>(),
        banned: on130340.containsKey('banned')
            ? Defined<bool?>((on130340['banned'] as bool?))
            : Undefined<bool?>(),
        createdAt: (on130340['createdAt'] as double),
        dbId: on130340.containsKey('dbId')
            ? Defined<double?>((on130340['dbId'] as double?))
            : Undefined<double?>(),
        displayUsername: on130340.containsKey('displayUsername')
            ? Defined<String?>((on130340['displayUsername'] as String?))
            : Undefined<String?>(),
        email: (on130340['email'] as String),
        emailVerified: (on130340['emailVerified'] as bool),
        fbmToken: on130340.containsKey('fbmToken')
            ? Defined<String?>((on130340['fbmToken'] as String?))
            : Undefined<String?>(),
        fieldAgentId: on130340.containsKey('fieldAgentId')
            ? Defined<String?>((on130340['fieldAgentId'] as String?))
            : Undefined<String?>(),
        firstName: on130340.containsKey('firstName')
            ? Defined<String?>((on130340['firstName'] as String?))
            : Undefined<String?>(),
        fullName: on130340.containsKey('fullName')
            ? Defined<String?>((on130340['fullName'] as String?))
            : Undefined<String?>(),
        image: on130340.containsKey('image')
            ? Defined<String?>((on130340['image'] as String?))
            : Undefined<String?>(),
        lastName: on130340.containsKey('lastName')
            ? Defined<String?>((on130340['lastName'] as String?))
            : Undefined<String?>(),
        memberId: on130340.containsKey('memberId')
            ? Defined<String?>((on130340['memberId'] as String?))
            : Undefined<String?>(),
        name: (on130340['name'] as String),
        organizationId: on130340.containsKey('organizationId')
            ? Defined<String?>((on130340['organizationId'] as String?))
            : Undefined<String?>(),
        phoneNumber: on130340.containsKey('phoneNumber')
            ? Defined<String?>((on130340['phoneNumber'] as String?))
            : Undefined<String?>(),
        phoneNumberVerified: on130340.containsKey('phoneNumberVerified')
            ? Defined<bool?>((on130340['phoneNumberVerified'] as bool?))
            : Undefined<bool?>(),
        profileImageBlurHash: on130340.containsKey('profileImageBlurHash')
            ? Defined<String?>((on130340['profileImageBlurHash'] as String?))
            : Undefined<String?>(),
        profileImageSize: on130340.containsKey('profileImageSize')
            ? Defined<double?>((on130340['profileImageSize'] as double?))
            : Undefined<double?>(),
        role: on130340.containsKey('role')
            ? Defined<String?>((on130340['role'] as String?))
            : Undefined<String?>(),
        shippingClientId: on130340.containsKey('shippingClientId')
            ? Defined<String?>((on130340['shippingClientId'] as String?))
            : Undefined<String?>(),
        status: on130340.containsKey('status')
            ? Defined<String?>((on130340['status'] as String?))
            : Undefined<String?>(),
        subRole: on130340.containsKey('subRole')
            ? Defined<String?>((on130340['subRole'] as String?))
            : Undefined<String?>(),
        teamId: on130340.containsKey('teamId')
            ? Defined<String?>((on130340['teamId'] as String?))
            : Undefined<String?>(),
        teamMemberId: on130340.containsKey('teamMemberId')
            ? Defined<String?>((on130340['teamMemberId'] as String?))
            : Undefined<String?>(),
        teamType: on130340.containsKey('teamType')
            ? Defined<String?>((on130340['teamType'] as String?))
            : Undefined<String?>(),
        twoFactorEnabled: on130340.containsKey('twoFactorEnabled')
            ? Defined<bool?>((on130340['twoFactorEnabled'] as bool?))
            : Undefined<bool?>(),
        updatedAt: (on130340['updatedAt'] as double),
        userId: on130340.containsKey('userId')
            ? Defined<String?>((on130340['userId'] as String?))
            : Undefined<String?>(),
        username: on130340.containsKey('username')
            ? Defined<String?>((on130340['username'] as String?))
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
    double createdAt,
    Optional<double?> dbId,
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
    double updatedAt,
    Optional<String?> userId,
    Optional<String?> username,
  })?
  body,
});
