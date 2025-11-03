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
      (on373869) => (
        $_creationTime: (on373869['_creationTime'] as double),
        $_id: on373869.containsKey('_id')
            ? Defined<String>((on373869['_id'] as String))
            : Undefined<String>(),
        appCountryId: on373869.containsKey('appCountryId')
            ? Defined<String?>((on373869['appCountryId'] as String?))
            : Undefined<String?>(),
        appCountryIso: on373869.containsKey('appCountryIso')
            ? Defined<String?>((on373869['appCountryIso'] as String?))
            : Undefined<String?>(),
        appCountryName: on373869.containsKey('appCountryName')
            ? Defined<String?>((on373869['appCountryName'] as String?))
            : Undefined<String?>(),
        banExpires: on373869.containsKey('banExpires')
            ? Defined<double?>((on373869['banExpires'] as double?))
            : Undefined<double?>(),
        banReason: on373869.containsKey('banReason')
            ? Defined<String?>((on373869['banReason'] as String?))
            : Undefined<String?>(),
        banned: on373869.containsKey('banned')
            ? Defined<bool?>((on373869['banned'] as bool?))
            : Undefined<bool?>(),
        createdAt: (on373869['createdAt'] as double),
        dbId: on373869.containsKey('dbId')
            ? Defined<double?>((on373869['dbId'] as double?))
            : Undefined<double?>(),
        displayUsername: on373869.containsKey('displayUsername')
            ? Defined<String?>((on373869['displayUsername'] as String?))
            : Undefined<String?>(),
        email: (on373869['email'] as String),
        emailVerified: (on373869['emailVerified'] as bool),
        fbmToken: on373869.containsKey('fbmToken')
            ? Defined<String?>((on373869['fbmToken'] as String?))
            : Undefined<String?>(),
        fieldAgentId: on373869.containsKey('fieldAgentId')
            ? Defined<String?>((on373869['fieldAgentId'] as String?))
            : Undefined<String?>(),
        firstName: on373869.containsKey('firstName')
            ? Defined<String?>((on373869['firstName'] as String?))
            : Undefined<String?>(),
        fullName: on373869.containsKey('fullName')
            ? Defined<String?>((on373869['fullName'] as String?))
            : Undefined<String?>(),
        image: on373869.containsKey('image')
            ? Defined<String?>((on373869['image'] as String?))
            : Undefined<String?>(),
        lastName: on373869.containsKey('lastName')
            ? Defined<String?>((on373869['lastName'] as String?))
            : Undefined<String?>(),
        memberId: on373869.containsKey('memberId')
            ? Defined<String?>((on373869['memberId'] as String?))
            : Undefined<String?>(),
        name: (on373869['name'] as String),
        organizationId: on373869.containsKey('organizationId')
            ? Defined<String?>((on373869['organizationId'] as String?))
            : Undefined<String?>(),
        phoneNumber: on373869.containsKey('phoneNumber')
            ? Defined<String?>((on373869['phoneNumber'] as String?))
            : Undefined<String?>(),
        phoneNumberVerified: on373869.containsKey('phoneNumberVerified')
            ? Defined<bool?>((on373869['phoneNumberVerified'] as bool?))
            : Undefined<bool?>(),
        profileImageBlurHash: on373869.containsKey('profileImageBlurHash')
            ? Defined<String?>((on373869['profileImageBlurHash'] as String?))
            : Undefined<String?>(),
        profileImageSize: on373869.containsKey('profileImageSize')
            ? Defined<double?>((on373869['profileImageSize'] as double?))
            : Undefined<double?>(),
        role: on373869.containsKey('role')
            ? Defined<String?>((on373869['role'] as String?))
            : Undefined<String?>(),
        shippingClientId: on373869.containsKey('shippingClientId')
            ? Defined<String?>((on373869['shippingClientId'] as String?))
            : Undefined<String?>(),
        status: on373869.containsKey('status')
            ? Defined<String?>((on373869['status'] as String?))
            : Undefined<String?>(),
        subRole: on373869.containsKey('subRole')
            ? Defined<String?>((on373869['subRole'] as String?))
            : Undefined<String?>(),
        teamId: on373869.containsKey('teamId')
            ? Defined<String?>((on373869['teamId'] as String?))
            : Undefined<String?>(),
        teamMemberId: on373869.containsKey('teamMemberId')
            ? Defined<String?>((on373869['teamMemberId'] as String?))
            : Undefined<String?>(),
        teamType: on373869.containsKey('teamType')
            ? Defined<String?>((on373869['teamType'] as String?))
            : Undefined<String?>(),
        twoFactorEnabled: on373869.containsKey('twoFactorEnabled')
            ? Defined<bool?>((on373869['twoFactorEnabled'] as bool?))
            : Undefined<bool?>(),
        updatedAt: (on373869['updatedAt'] as double),
        userId: on373869.containsKey('userId')
            ? Defined<String?>((on373869['userId'] as String?))
            : Undefined<String?>(),
        username: on373869.containsKey('username')
            ? Defined<String?>((on373869['username'] as String?))
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
