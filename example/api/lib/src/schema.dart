// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "dart:typed_data";
import "package:convex_dart/src/convex_dart_for_generated_code.dart";

class FieldAgentsId implements TableId {
  @override
  final String value;
  static const String tableName = "fieldAgents";
  const FieldAgentsId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is FieldAgentsId) {
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

class CountryCitiesId implements TableId {
  @override
  final String value;
  static const String tableName = "countryCities";
  const CountryCitiesId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is CountryCitiesId) {
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

class CountryStatesId implements TableId {
  @override
  final String value;
  static const String tableName = "countryStates";
  const CountryStatesId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is CountryStatesId) {
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

class ShippingClientsId implements TableId {
  @override
  final String value;
  static const String tableName = "shippingClients";
  const ShippingClientsId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is ShippingClientsId) {
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

class StorageId implements TableId {
  @override
  final String value;
  static const String tableName = "_storage";
  const StorageId(this.value);
  @override
  bool operator ==(Object other) {
    if (other is StorageId) {
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
