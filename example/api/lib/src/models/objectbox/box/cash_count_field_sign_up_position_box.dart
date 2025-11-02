import 'package:objectbox/objectbox.dart';
import 'dart:convert';
import 'package:convex_dart/convex_dart.dart';
import '../../../schema.dart';
import '../../json/index.dart';

@Entity()
class CashCountFieldSignUpPositionBox {
  @Id()
  int id = 0;

  String dbId;
  String fieldAgentId;
  String firstName;
  String fullName;
  String? image;
  String lastName;
  double position;
  double totalSignUps;
  double totalSignUpsApproved;
  double totalSignUpsInvalid;
  double totalSignUpsPending;
  double totalSignUpsRejected;

  CashCountFieldSignUpPositionBox({
    this.id = 0,
    required this.dbId,
    required this.fieldAgentId,
    required this.firstName,
    required this.fullName,
    this.image,
    required this.lastName,
    required this.position,
    required this.totalSignUps,
    required this.totalSignUpsApproved,
    required this.totalSignUpsInvalid,
    required this.totalSignUpsPending,
    required this.totalSignUpsRejected,
  });

  factory CashCountFieldSignUpPositionBox.fromAPI(
    CashCountFieldSignUpPosition model,
  ) {
    return CashCountFieldSignUpPositionBox(
      id: 0,
      dbId: model.$_id.value,
      fieldAgentId: model.fieldAgentId.value,
      firstName: model.firstName,
      fullName: model.fullName,
      image: model.image.isDefined
          ? jsonEncode(model.image.asDefined().value.toJson())
          : null,
      lastName: model.lastName,
      position: model.position,
      totalSignUps: model.totalSignUps,
      totalSignUpsApproved: model.totalSignUpsApproved,
      totalSignUpsInvalid: model.totalSignUpsInvalid,
      totalSignUpsPending: model.totalSignUpsPending,
      totalSignUpsRejected: model.totalSignUpsRejected,
    );
  }

  CashCountFieldSignUpPosition toAPI() {
    return CashCountFieldSignUpPosition(
      $_id: FieldAgentsId(dbId),
      fieldAgentId: FieldAgentsId(fieldAgentId),
      firstName: firstName,
      fullName: fullName,
      image: image != null
          ? Defined(
              MediaData.fromJson(jsonDecode(image!) as Map<String, dynamic>),
            )
          : const Undefined(),
      lastName: lastName,
      position: position,
      totalSignUps: totalSignUps,
      totalSignUpsApproved: totalSignUpsApproved,
      totalSignUpsInvalid: totalSignUpsInvalid,
      totalSignUpsPending: totalSignUpsPending,
      totalSignUpsRejected: totalSignUpsRejected,
    );
  }
}
