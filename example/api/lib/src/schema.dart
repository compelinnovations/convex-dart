// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "dart:typed_data";
import "package:convex_dart/src/convex_dart_for_generated_code.dart";

class UsersId implements TableId {
  @override
  final String value;
  static const String tableName = "users";
  const UsersId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is UsersId) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return value;
  }
}

class AppCountriesId implements TableId {
  @override
  final String value;
  static const String tableName = "appCountries";
  const AppCountriesId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is AppCountriesId) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return value;
  }
}

class UserDevicesId implements TableId {
  @override
  final String value;
  static const String tableName = "userDevices";
  const UserDevicesId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is UserDevicesId) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return value;
  }
}

class OrganizationBranchesId implements TableId {
  @override
  final String value;
  static const String tableName = "organizationBranches";
  const OrganizationBranchesId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is OrganizationBranchesId) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return value;
  }
}

class OrganizationId implements TableId {
  @override
  final String value;
  static const String tableName = "organization";
  const OrganizationId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is OrganizationId) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return value;
  }
}

class FieldAgentStatsId implements TableId {
  @override
  final String value;
  static const String tableName = "fieldAgentStats";
  const FieldAgentStatsId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is FieldAgentStatsId) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return value;
  }
}

class TeamBranchesId implements TableId {
  @override
  final String value;
  static const String tableName = "teamBranches";
  const TeamBranchesId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is TeamBranchesId) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return value;
  }
}

class TeamId implements TableId {
  @override
  final String value;
  static const String tableName = "team";
  const TeamId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is TeamId) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return value;
  }
}

class CashCountFieldSignUpsId implements TableId {
  @override
  final String value;
  static const String tableName = "cashCountFieldSignUps";
  const CashCountFieldSignUpsId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is CashCountFieldSignUpsId) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return value;
  }
}
