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
      (on869485) => (
        $_creationTime: (on869485['_creationTime'] as double),
        $_id: on869485.containsKey('_id')
            ? Defined<String>((on869485['_id'] as String))
            : Undefined<String>(),
        appCountryId: on869485.containsKey('appCountryId')
            ? Defined<String?>((on869485['appCountryId'] as String?))
            : Undefined<String?>(),
        appCountryIso: on869485.containsKey('appCountryIso')
            ? Defined<String?>((on869485['appCountryIso'] as String?))
            : Undefined<String?>(),
        appCountryName: on869485.containsKey('appCountryName')
            ? Defined<String?>((on869485['appCountryName'] as String?))
            : Undefined<String?>(),
        banExpires: on869485.containsKey('banExpires')
            ? Defined<double?>((on869485['banExpires'] as double?))
            : Undefined<double?>(),
        banReason: on869485.containsKey('banReason')
            ? Defined<String?>((on869485['banReason'] as String?))
            : Undefined<String?>(),
        banned: on869485.containsKey('banned')
            ? Defined<bool?>((on869485['banned'] as bool?))
            : Undefined<bool?>(),
        createdAt: (on869485['createdAt'] as double),
        dbId: on869485.containsKey('dbId')
            ? Defined<double?>((on869485['dbId'] as double?))
            : Undefined<double?>(),
        displayUsername: on869485.containsKey('displayUsername')
            ? Defined<String?>((on869485['displayUsername'] as String?))
            : Undefined<String?>(),
        email: (on869485['email'] as String),
        emailVerified: (on869485['emailVerified'] as bool),
        fbmToken: on869485.containsKey('fbmToken')
            ? Defined<String?>((on869485['fbmToken'] as String?))
            : Undefined<String?>(),
        fieldAgentId: on869485.containsKey('fieldAgentId')
            ? Defined<String?>((on869485['fieldAgentId'] as String?))
            : Undefined<String?>(),
        firstName: on869485.containsKey('firstName')
            ? Defined<String?>((on869485['firstName'] as String?))
            : Undefined<String?>(),
        fullName: on869485.containsKey('fullName')
            ? Defined<String?>((on869485['fullName'] as String?))
            : Undefined<String?>(),
        image: on869485.containsKey('image')
            ? Defined<String?>((on869485['image'] as String?))
            : Undefined<String?>(),
        lastName: on869485.containsKey('lastName')
            ? Defined<String?>((on869485['lastName'] as String?))
            : Undefined<String?>(),
        memberId: on869485.containsKey('memberId')
            ? Defined<String?>((on869485['memberId'] as String?))
            : Undefined<String?>(),
        name: (on869485['name'] as String),
        organizationId: on869485.containsKey('organizationId')
            ? Defined<String?>((on869485['organizationId'] as String?))
            : Undefined<String?>(),
        phoneNumber: on869485.containsKey('phoneNumber')
            ? Defined<String?>((on869485['phoneNumber'] as String?))
            : Undefined<String?>(),
        phoneNumberVerified: on869485.containsKey('phoneNumberVerified')
            ? Defined<bool?>((on869485['phoneNumberVerified'] as bool?))
            : Undefined<bool?>(),
        profileImageBlurHash: on869485.containsKey('profileImageBlurHash')
            ? Defined<String?>((on869485['profileImageBlurHash'] as String?))
            : Undefined<String?>(),
        profileImageSize: on869485.containsKey('profileImageSize')
            ? Defined<double?>((on869485['profileImageSize'] as double?))
            : Undefined<double?>(),
        role: on869485.containsKey('role')
            ? Defined<String?>((on869485['role'] as String?))
            : Undefined<String?>(),
        shippingClientId: on869485.containsKey('shippingClientId')
            ? Defined<String?>((on869485['shippingClientId'] as String?))
            : Undefined<String?>(),
        status: on869485.containsKey('status')
            ? Defined<String?>((on869485['status'] as String?))
            : Undefined<String?>(),
        subRole: on869485.containsKey('subRole')
            ? Defined<String?>((on869485['subRole'] as String?))
            : Undefined<String?>(),
        teamId: on869485.containsKey('teamId')
            ? Defined<String?>((on869485['teamId'] as String?))
            : Undefined<String?>(),
        teamMemberId: on869485.containsKey('teamMemberId')
            ? Defined<String?>((on869485['teamMemberId'] as String?))
            : Undefined<String?>(),
        teamType: on869485.containsKey('teamType')
            ? Defined<String?>((on869485['teamType'] as String?))
            : Undefined<String?>(),
        twoFactorEnabled: on869485.containsKey('twoFactorEnabled')
            ? Defined<bool?>((on869485['twoFactorEnabled'] as bool?))
            : Undefined<bool?>(),
        updatedAt: (on869485['updatedAt'] as double),
        userId: on869485.containsKey('userId')
            ? Defined<String?>((on869485['userId'] as String?))
            : Undefined<String?>(),
        username: on869485.containsKey('username')
            ? Defined<String?>((on869485['username'] as String?))
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
