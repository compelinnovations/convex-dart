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
      (on188338) => (
        $_creationTime: on188338.containsKey('_creationTime')
            ? Defined<double>((on188338['_creationTime'] as double))
            : Undefined<double>(),
        $_id: on188338.containsKey('_id')
            ? Defined<String>((on188338['_id'] as String))
            : Undefined<String>(),
        acceptedAt: on188338.containsKey('acceptedAt')
            ? Defined<double?>((on188338['acceptedAt'] as double?))
            : Undefined<double?>(),
        appCountryIso: on188338.containsKey('appCountryIso')
            ? Defined<String?>((on188338['appCountryIso'] as String?))
            : Undefined<String?>(),
        appCountryName: on188338.containsKey('appCountryName')
            ? Defined<String?>((on188338['appCountryName'] as String?))
            : Undefined<String?>(),
        createdAt: on188338.containsKey('createdAt')
            ? Defined<double?>((on188338['createdAt'] as double?))
            : Undefined<double?>(),
        deletedAt: on188338.containsKey('deletedAt')
            ? Defined<double?>((on188338['deletedAt'] as double?))
            : Undefined<double?>(),
        email: (on188338['email'] as String),
        expiresAt: (on188338['expiresAt'] as double),
        fieldAgentId: on188338.containsKey('fieldAgentId')
            ? Defined<String?>((on188338['fieldAgentId'] as String?))
            : Undefined<String?>(),
        firstName: on188338.containsKey('firstName')
            ? Defined<String?>((on188338['firstName'] as String?))
            : Undefined<String?>(),
        fullName: on188338.containsKey('fullName')
            ? Defined<String?>((on188338['fullName'] as String?))
            : Undefined<String?>(),
        inviteMessage: on188338.containsKey('inviteMessage')
            ? Defined<String?>((on188338['inviteMessage'] as String?))
            : Undefined<String?>(),
        inviterEmail: on188338.containsKey('inviterEmail')
            ? Defined<String?>((on188338['inviterEmail'] as String?))
            : Undefined<String?>(),
        inviterId: (on188338['inviterId'] as String),
        inviterMemberId: on188338.containsKey('inviterMemberId')
            ? Defined<String?>((on188338['inviterMemberId'] as String?))
            : Undefined<String?>(),
        inviterName: on188338.containsKey('inviterName')
            ? Defined<String?>((on188338['inviterName'] as String?))
            : Undefined<String?>(),
        inviterPhoneNumber: on188338.containsKey('inviterPhoneNumber')
            ? Defined<String?>((on188338['inviterPhoneNumber'] as String?))
            : Undefined<String?>(),
        lastName: on188338.containsKey('lastName')
            ? Defined<String?>((on188338['lastName'] as String?))
            : Undefined<String?>(),
        organizationId: (on188338['organizationId'] as String),
        organizationName: on188338.containsKey('organizationName')
            ? Defined<String?>((on188338['organizationName'] as String?))
            : Undefined<String?>(),
        organizationType: on188338.containsKey('organizationType')
            ? Defined<String?>((on188338['organizationType'] as String?))
            : Undefined<String?>(),
        phoneNumber: on188338.containsKey('phoneNumber')
            ? Defined<String?>((on188338['phoneNumber'] as String?))
            : Undefined<String?>(),
        role: on188338.containsKey('role')
            ? Defined<String?>((on188338['role'] as String?))
            : Undefined<String?>(),
        shippingClientId: on188338.containsKey('shippingClientId')
            ? Defined<String?>((on188338['shippingClientId'] as String?))
            : Undefined<String?>(),
        status: (on188338['status'] as String),
        subRole: on188338.containsKey('subRole')
            ? Defined<String?>((on188338['subRole'] as String?))
            : Undefined<String?>(),
        teamId: on188338.containsKey('teamId')
            ? Defined<String?>((on188338['teamId'] as String?))
            : Undefined<String?>(),
        teamName: on188338.containsKey('teamName')
            ? Defined<String?>((on188338['teamName'] as String?))
            : Undefined<String?>(),
        teamType: on188338.containsKey('teamType')
            ? Defined<String?>((on188338['teamType'] as String?))
            : Undefined<String?>(),
        updatedAt: on188338.containsKey('updatedAt')
            ? Defined<double?>((on188338['updatedAt'] as double?))
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
