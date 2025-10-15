// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final getMe = QueryOperation<void, GetMeResponse>(
  'app/fieldAgentAuth:getMe',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(void args) {
  return hashmapToBtreemap(hashmap: {});
}

GetMeResponse deserialize(DartValue map) {
  return (
    body: (decodeValue(map) as IMap<String, dynamic>?)?.then(
      (on801046) => (
        $_creationTime: (on801046['_creationTime'] as double),
        $_id: on801046.containsKey('_id')
            ? Defined<String>((on801046['_id'] as String))
            : Undefined<String>(),
        appCountryId: on801046.containsKey('appCountryId')
            ? Defined<String?>((on801046['appCountryId'] as String?))
            : Undefined<String?>(),
        appCountryIso: on801046.containsKey('appCountryIso')
            ? Defined<String?>((on801046['appCountryIso'] as String?))
            : Undefined<String?>(),
        appCountryName: on801046.containsKey('appCountryName')
            ? Defined<String?>((on801046['appCountryName'] as String?))
            : Undefined<String?>(),
        banExpires: on801046.containsKey('banExpires')
            ? Defined<double?>((on801046['banExpires'] as double?))
            : Undefined<double?>(),
        banReason: on801046.containsKey('banReason')
            ? Defined<String?>((on801046['banReason'] as String?))
            : Undefined<String?>(),
        banned: on801046.containsKey('banned')
            ? Defined<bool?>((on801046['banned'] as bool?))
            : Undefined<bool?>(),
        createMeta: on801046.containsKey('createMeta')
            ? Defined<String?>((on801046['createMeta'] as String?))
            : Undefined<String?>(),
        createdAt: (on801046['createdAt'] as double),
        currentLocation: on801046.containsKey('currentLocation')
            ? Defined<String?>((on801046['currentLocation'] as String?))
            : Undefined<String?>(),
        dbId: on801046.containsKey('dbId')
            ? Defined<double?>((on801046['dbId'] as double?))
            : Undefined<double?>(),
        deletedAt: on801046.containsKey('deletedAt')
            ? Defined<double?>((on801046['deletedAt'] as double?))
            : Undefined<double?>(),
        deletedMeta: on801046.containsKey('deletedMeta')
            ? Defined<String?>((on801046['deletedMeta'] as String?))
            : Undefined<String?>(),
        displayUsername: on801046.containsKey('displayUsername')
            ? Defined<String?>((on801046['displayUsername'] as String?))
            : Undefined<String?>(),
        email: (on801046['email'] as String),
        emailVerified: (on801046['emailVerified'] as bool),
        fbmToken: on801046.containsKey('fbmToken')
            ? Defined<String?>((on801046['fbmToken'] as String?))
            : Undefined<String?>(),
        fieldAgentId: on801046.containsKey('fieldAgentId')
            ? Defined<String?>((on801046['fieldAgentId'] as String?))
            : Undefined<String?>(),
        firstName: on801046.containsKey('firstName')
            ? Defined<String?>((on801046['firstName'] as String?))
            : Undefined<String?>(),
        fullName: on801046.containsKey('fullName')
            ? Defined<String?>((on801046['fullName'] as String?))
            : Undefined<String?>(),
        image: on801046.containsKey('image')
            ? Defined<String?>((on801046['image'] as String?))
            : Undefined<String?>(),
        lastName: on801046.containsKey('lastName')
            ? Defined<String?>((on801046['lastName'] as String?))
            : Undefined<String?>(),
        memberId: on801046.containsKey('memberId')
            ? Defined<String?>((on801046['memberId'] as String?))
            : Undefined<String?>(),
        name: (on801046['name'] as String),
        organizationId: on801046.containsKey('organizationId')
            ? Defined<String?>((on801046['organizationId'] as String?))
            : Undefined<String?>(),
        phoneNumber: on801046.containsKey('phoneNumber')
            ? Defined<String?>((on801046['phoneNumber'] as String?))
            : Undefined<String?>(),
        phoneNumberVerified: on801046.containsKey('phoneNumberVerified')
            ? Defined<bool?>((on801046['phoneNumberVerified'] as bool?))
            : Undefined<bool?>(),
        profileImageBlurHash: on801046.containsKey('profileImageBlurHash')
            ? Defined<String?>((on801046['profileImageBlurHash'] as String?))
            : Undefined<String?>(),
        profileImageSize: on801046.containsKey('profileImageSize')
            ? Defined<double?>((on801046['profileImageSize'] as double?))
            : Undefined<double?>(),
        role: on801046.containsKey('role')
            ? Defined<String?>((on801046['role'] as String?))
            : Undefined<String?>(),
        shippingClientId: on801046.containsKey('shippingClientId')
            ? Defined<String?>((on801046['shippingClientId'] as String?))
            : Undefined<String?>(),
        status: on801046.containsKey('status')
            ? Defined<String?>((on801046['status'] as String?))
            : Undefined<String?>(),
        subRole: on801046.containsKey('subRole')
            ? Defined<String?>((on801046['subRole'] as String?))
            : Undefined<String?>(),
        teamId: on801046.containsKey('teamId')
            ? Defined<String?>((on801046['teamId'] as String?))
            : Undefined<String?>(),
        teamMemberId: on801046.containsKey('teamMemberId')
            ? Defined<String?>((on801046['teamMemberId'] as String?))
            : Undefined<String?>(),
        teamType: on801046.containsKey('teamType')
            ? Defined<String?>((on801046['teamType'] as String?))
            : Undefined<String?>(),
        twoFactorEnabled: on801046.containsKey('twoFactorEnabled')
            ? Defined<bool?>((on801046['twoFactorEnabled'] as bool?))
            : Undefined<bool?>(),
        updateMeta: on801046.containsKey('updateMeta')
            ? Defined<String?>((on801046['updateMeta'] as String?))
            : Undefined<String?>(),
        updatedAt: (on801046['updatedAt'] as double),
        userId: on801046.containsKey('userId')
            ? Defined<String?>((on801046['userId'] as String?))
            : Undefined<String?>(),
        username: on801046.containsKey('username')
            ? Defined<String?>((on801046['username'] as String?))
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
