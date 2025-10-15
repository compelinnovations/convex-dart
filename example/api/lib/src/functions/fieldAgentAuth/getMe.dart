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
      (on792686) => (
        $_creationTime: (on792686['_creationTime'] as double),
        $_id: on792686.containsKey('_id')
            ? Defined<String>((on792686['_id'] as String))
            : Undefined<String>(),
        appCountryId: on792686.containsKey('appCountryId')
            ? Defined<String?>((on792686['appCountryId'] as String?))
            : Undefined<String?>(),
        appCountryIso: on792686.containsKey('appCountryIso')
            ? Defined<String?>((on792686['appCountryIso'] as String?))
            : Undefined<String?>(),
        appCountryName: on792686.containsKey('appCountryName')
            ? Defined<String?>((on792686['appCountryName'] as String?))
            : Undefined<String?>(),
        banExpires: on792686.containsKey('banExpires')
            ? Defined<double?>((on792686['banExpires'] as double?))
            : Undefined<double?>(),
        banReason: on792686.containsKey('banReason')
            ? Defined<String?>((on792686['banReason'] as String?))
            : Undefined<String?>(),
        banned: on792686.containsKey('banned')
            ? Defined<bool?>((on792686['banned'] as bool?))
            : Undefined<bool?>(),
        createMeta: on792686.containsKey('createMeta')
            ? Defined<String?>((on792686['createMeta'] as String?))
            : Undefined<String?>(),
        createdAt: (on792686['createdAt'] as double),
        currentLocation: on792686.containsKey('currentLocation')
            ? Defined<String?>((on792686['currentLocation'] as String?))
            : Undefined<String?>(),
        dbId: on792686.containsKey('dbId')
            ? Defined<double?>((on792686['dbId'] as double?))
            : Undefined<double?>(),
        deletedAt: on792686.containsKey('deletedAt')
            ? Defined<double?>((on792686['deletedAt'] as double?))
            : Undefined<double?>(),
        deletedMeta: on792686.containsKey('deletedMeta')
            ? Defined<String?>((on792686['deletedMeta'] as String?))
            : Undefined<String?>(),
        displayUsername: on792686.containsKey('displayUsername')
            ? Defined<String?>((on792686['displayUsername'] as String?))
            : Undefined<String?>(),
        email: (on792686['email'] as String),
        emailVerified: (on792686['emailVerified'] as bool),
        fbmToken: on792686.containsKey('fbmToken')
            ? Defined<String?>((on792686['fbmToken'] as String?))
            : Undefined<String?>(),
        fieldAgentId: on792686.containsKey('fieldAgentId')
            ? Defined<String?>((on792686['fieldAgentId'] as String?))
            : Undefined<String?>(),
        firstName: on792686.containsKey('firstName')
            ? Defined<String?>((on792686['firstName'] as String?))
            : Undefined<String?>(),
        fullName: on792686.containsKey('fullName')
            ? Defined<String?>((on792686['fullName'] as String?))
            : Undefined<String?>(),
        image: on792686.containsKey('image')
            ? Defined<String?>((on792686['image'] as String?))
            : Undefined<String?>(),
        lastName: on792686.containsKey('lastName')
            ? Defined<String?>((on792686['lastName'] as String?))
            : Undefined<String?>(),
        memberId: on792686.containsKey('memberId')
            ? Defined<String?>((on792686['memberId'] as String?))
            : Undefined<String?>(),
        name: (on792686['name'] as String),
        organizationId: on792686.containsKey('organizationId')
            ? Defined<String?>((on792686['organizationId'] as String?))
            : Undefined<String?>(),
        phoneNumber: on792686.containsKey('phoneNumber')
            ? Defined<String?>((on792686['phoneNumber'] as String?))
            : Undefined<String?>(),
        phoneNumberVerified: on792686.containsKey('phoneNumberVerified')
            ? Defined<bool?>((on792686['phoneNumberVerified'] as bool?))
            : Undefined<bool?>(),
        profileImageBlurHash: on792686.containsKey('profileImageBlurHash')
            ? Defined<String?>((on792686['profileImageBlurHash'] as String?))
            : Undefined<String?>(),
        profileImageSize: on792686.containsKey('profileImageSize')
            ? Defined<double?>((on792686['profileImageSize'] as double?))
            : Undefined<double?>(),
        role: on792686.containsKey('role')
            ? Defined<String?>((on792686['role'] as String?))
            : Undefined<String?>(),
        shippingClientId: on792686.containsKey('shippingClientId')
            ? Defined<String?>((on792686['shippingClientId'] as String?))
            : Undefined<String?>(),
        status: on792686.containsKey('status')
            ? Defined<String?>((on792686['status'] as String?))
            : Undefined<String?>(),
        subRole: on792686.containsKey('subRole')
            ? Defined<String?>((on792686['subRole'] as String?))
            : Undefined<String?>(),
        teamId: on792686.containsKey('teamId')
            ? Defined<String?>((on792686['teamId'] as String?))
            : Undefined<String?>(),
        teamMemberId: on792686.containsKey('teamMemberId')
            ? Defined<String?>((on792686['teamMemberId'] as String?))
            : Undefined<String?>(),
        teamType: on792686.containsKey('teamType')
            ? Defined<String?>((on792686['teamType'] as String?))
            : Undefined<String?>(),
        twoFactorEnabled: on792686.containsKey('twoFactorEnabled')
            ? Defined<bool?>((on792686['twoFactorEnabled'] as bool?))
            : Undefined<bool?>(),
        updateMeta: on792686.containsKey('updateMeta')
            ? Defined<String?>((on792686['updateMeta'] as String?))
            : Undefined<String?>(),
        updatedAt: (on792686['updatedAt'] as double),
        userId: on792686.containsKey('userId')
            ? Defined<String?>((on792686['userId'] as String?))
            : Undefined<String?>(),
        username: on792686.containsKey('username')
            ? Defined<String?>((on792686['username'] as String?))
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
