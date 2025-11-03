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
      (on971007) => (
        $_creationTime: on971007.containsKey('_creationTime')
            ? Defined<double>((on971007['_creationTime'] as double))
            : Undefined<double>(),
        $_id: on971007.containsKey('_id')
            ? Defined<String>((on971007['_id'] as String))
            : Undefined<String>(),
        acceptedAt: on971007.containsKey('acceptedAt')
            ? Defined<double?>((on971007['acceptedAt'] as double?))
            : Undefined<double?>(),
        appCountryIso: on971007.containsKey('appCountryIso')
            ? Defined<String?>((on971007['appCountryIso'] as String?))
            : Undefined<String?>(),
        appCountryName: on971007.containsKey('appCountryName')
            ? Defined<String?>((on971007['appCountryName'] as String?))
            : Undefined<String?>(),
        createdAt: on971007.containsKey('createdAt')
            ? Defined<double?>((on971007['createdAt'] as double?))
            : Undefined<double?>(),
        deletedAt: on971007.containsKey('deletedAt')
            ? Defined<double?>((on971007['deletedAt'] as double?))
            : Undefined<double?>(),
        email: (on971007['email'] as String),
        expiresAt: (on971007['expiresAt'] as double),
        fieldAgentId: on971007.containsKey('fieldAgentId')
            ? Defined<String?>((on971007['fieldAgentId'] as String?))
            : Undefined<String?>(),
        firstName: on971007.containsKey('firstName')
            ? Defined<String?>((on971007['firstName'] as String?))
            : Undefined<String?>(),
        fullName: on971007.containsKey('fullName')
            ? Defined<String?>((on971007['fullName'] as String?))
            : Undefined<String?>(),
        inviteMessage: on971007.containsKey('inviteMessage')
            ? Defined<String?>((on971007['inviteMessage'] as String?))
            : Undefined<String?>(),
        inviterEmail: on971007.containsKey('inviterEmail')
            ? Defined<String?>((on971007['inviterEmail'] as String?))
            : Undefined<String?>(),
        inviterId: (on971007['inviterId'] as String),
        inviterMemberId: on971007.containsKey('inviterMemberId')
            ? Defined<String?>((on971007['inviterMemberId'] as String?))
            : Undefined<String?>(),
        inviterName: on971007.containsKey('inviterName')
            ? Defined<String?>((on971007['inviterName'] as String?))
            : Undefined<String?>(),
        inviterPhoneNumber: on971007.containsKey('inviterPhoneNumber')
            ? Defined<String?>((on971007['inviterPhoneNumber'] as String?))
            : Undefined<String?>(),
        lastName: on971007.containsKey('lastName')
            ? Defined<String?>((on971007['lastName'] as String?))
            : Undefined<String?>(),
        organizationId: (on971007['organizationId'] as String),
        organizationName: on971007.containsKey('organizationName')
            ? Defined<String?>((on971007['organizationName'] as String?))
            : Undefined<String?>(),
        organizationType: on971007.containsKey('organizationType')
            ? Defined<String?>((on971007['organizationType'] as String?))
            : Undefined<String?>(),
        phoneNumber: on971007.containsKey('phoneNumber')
            ? Defined<String?>((on971007['phoneNumber'] as String?))
            : Undefined<String?>(),
        role: on971007.containsKey('role')
            ? Defined<String?>((on971007['role'] as String?))
            : Undefined<String?>(),
        shippingClientId: on971007.containsKey('shippingClientId')
            ? Defined<String?>((on971007['shippingClientId'] as String?))
            : Undefined<String?>(),
        status: (on971007['status'] as String),
        subRole: on971007.containsKey('subRole')
            ? Defined<String?>((on971007['subRole'] as String?))
            : Undefined<String?>(),
        teamId: on971007.containsKey('teamId')
            ? Defined<String?>((on971007['teamId'] as String?))
            : Undefined<String?>(),
        teamName: on971007.containsKey('teamName')
            ? Defined<String?>((on971007['teamName'] as String?))
            : Undefined<String?>(),
        teamType: on971007.containsKey('teamType')
            ? Defined<String?>((on971007['teamType'] as String?))
            : Undefined<String?>(),
        updatedAt: on971007.containsKey('updatedAt')
            ? Defined<double?>((on971007['updatedAt'] as double?))
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
