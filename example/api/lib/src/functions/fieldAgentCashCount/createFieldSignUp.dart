// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "../../models/json/create_cash_count_field_sign_up.dart";

final createFieldSignUp =
    MutationOperation<CreateCashCountFieldSignUp, CreateFieldSignUpResponse>(
      'fieldAgentCashCount:createFieldSignUp',
      serialize,
      deserialize,
    );
BTreeMapStringValue serialize(CreateCashCountFieldSignUp args) {
  return hashmapToBtreemap(
    hashmap: {
      'deviceInfo': encodeValue({
        'deviceId': encodeValue(args.deviceInfo.deviceId),
        'deviceModel': encodeValue(args.deviceInfo.deviceModel),
        'deviceName': encodeValue(args.deviceInfo.deviceName),
        'deviceOs': encodeValue(args.deviceInfo.deviceOs),
      }),
      'phoneNumber': encodeValue(args.phoneNumber),
    },
  );
}

CreateFieldSignUpResponse deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on594891) => (message: (on594891['message'] as String)),
  );
}

typedef CreateFieldSignUpResponse = ({String message});
