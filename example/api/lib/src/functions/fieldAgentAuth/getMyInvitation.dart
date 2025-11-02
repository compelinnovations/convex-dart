// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final getMyInvitation = QueryOperation<void, InvitationDoc>(
  'app/fieldAgentAuth:getMyInvitation',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(void args) {
  return hashmapToBtreemap(hashmap: {});
}

InvitationDoc deserialize(DartValue map) {
  return (
    body: (decodeValue(map) as IMap<String, dynamic>?)?.then(
      (on536046) => (
        $_creationTime: on536046.containsKey('_creationTime')
            ? Defined<double>((on536046['_creationTime'] as double))
            : Undefined<double>(),
        $_id: on536046.containsKey('_id')
            ? Defined<String>((on536046['_id'] as String))
            : Undefined<String>(),
        acceptedAt: on536046.containsKey('acceptedAt')
            ? Defined<double?>((on536046['acceptedAt'] as double?))
            : Undefined<double?>(),
        appCountryIso: on536046.containsKey('appCountryIso')
            ? Defined<String?>((on536046['appCountryIso'] as String?))
            : Undefined<String?>(),
        appCountryName: on536046.containsKey('appCountryName')
            ? Defined<String?>((on536046['appCountryName'] as String?))
            : Undefined<String?>(),
        createdAt: on536046.containsKey('createdAt')
            ? Defined<double?>((on536046['createdAt'] as double?))
            : Undefined<double?>(),
        deletedAt: on536046.containsKey('deletedAt')
            ? Defined<double?>((on536046['deletedAt'] as double?))
            : Undefined<double?>(),
        email: (on536046['email'] as String),
        expiresAt: (on536046['expiresAt'] as double),
        fieldAgentId: on536046.containsKey('fieldAgentId')
            ? Defined<String?>((on536046['fieldAgentId'] as String?))
            : Undefined<String?>(),
        firstName: on536046.containsKey('firstName')
            ? Defined<String?>((on536046['firstName'] as String?))
            : Undefined<String?>(),
        fullName: on536046.containsKey('fullName')
            ? Defined<String?>((on536046['fullName'] as String?))
            : Undefined<String?>(),
        inviteMessage: on536046.containsKey('inviteMessage')
            ? Defined<String?>((on536046['inviteMessage'] as String?))
            : Undefined<String?>(),
        inviterEmail: on536046.containsKey('inviterEmail')
            ? Defined<String?>((on536046['inviterEmail'] as String?))
            : Undefined<String?>(),
        inviterId: (on536046['inviterId'] as String),
        inviterMemberId: on536046.containsKey('inviterMemberId')
            ? Defined<String?>((on536046['inviterMemberId'] as String?))
            : Undefined<String?>(),
        inviterName: on536046.containsKey('inviterName')
            ? Defined<String?>((on536046['inviterName'] as String?))
            : Undefined<String?>(),
        inviterPhoneNumber: on536046.containsKey('inviterPhoneNumber')
            ? Defined<String?>((on536046['inviterPhoneNumber'] as String?))
            : Undefined<String?>(),
        lastName: on536046.containsKey('lastName')
            ? Defined<String?>((on536046['lastName'] as String?))
            : Undefined<String?>(),
        organizationId: (on536046['organizationId'] as String),
        organizationName: on536046.containsKey('organizationName')
            ? Defined<String?>((on536046['organizationName'] as String?))
            : Undefined<String?>(),
        organizationType: on536046.containsKey('organizationType')
            ? Defined<String?>((on536046['organizationType'] as String?))
            : Undefined<String?>(),
        phoneNumber: on536046.containsKey('phoneNumber')
            ? Defined<String?>((on536046['phoneNumber'] as String?))
            : Undefined<String?>(),
        role: on536046.containsKey('role')
            ? Defined<String?>((on536046['role'] as String?))
            : Undefined<String?>(),
        shippingClientId: on536046.containsKey('shippingClientId')
            ? Defined<String?>((on536046['shippingClientId'] as String?))
            : Undefined<String?>(),
        status: (on536046['status'] as String),
        subRole: on536046.containsKey('subRole')
            ? Defined<String?>((on536046['subRole'] as String?))
            : Undefined<String?>(),
        teamId: on536046.containsKey('teamId')
            ? Defined<String?>((on536046['teamId'] as String?))
            : Undefined<String?>(),
        teamName: on536046.containsKey('teamName')
            ? Defined<String?>((on536046['teamName'] as String?))
            : Undefined<String?>(),
        teamType: on536046.containsKey('teamType')
            ? Defined<String?>((on536046['teamType'] as String?))
            : Undefined<String?>(),
        updatedAt: on536046.containsKey('updatedAt')
            ? Defined<double?>((on536046['updatedAt'] as double?))
            : Undefined<double?>(),
      ),
    ),
  );
}

typedef InvitationDoc = ({
  ({
    Optional<double> $_creationTime,
    Optional<String> $_id,
    Optional<double?> acceptedAt,
    Optional<String?> appCountryIso,
    Optional<String?> appCountryName,
    Optional<double?> createdAt,
    Optional<double?> deletedAt,
    String email,
    double expiresAt,
    Optional<String?> fieldAgentId,
    Optional<String?> firstName,
    Optional<String?> fullName,
    Optional<String?> inviteMessage,
    Optional<String?> inviterEmail,
    String inviterId,
    Optional<String?> inviterMemberId,
    Optional<String?> inviterName,
    Optional<String?> inviterPhoneNumber,
    Optional<String?> lastName,
    String organizationId,
    Optional<String?> organizationName,
    Optional<String?> organizationType,
    Optional<String?> phoneNumber,
    Optional<String?> role,
    Optional<String?> shippingClientId,
    String status,
    Optional<String?> subRole,
    Optional<String?> teamId,
    Optional<String?> teamName,
    Optional<String?> teamType,
    Optional<double?> updatedAt,
  })?
  body,
});
