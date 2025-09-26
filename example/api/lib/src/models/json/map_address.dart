// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class MapAddress {
  final String $_id;
  final Optional<String> longName;
  final Optional<String> shortName;

  const MapAddress({
    required this.$_id,
    this.longName = const Undefined(),
    this.shortName = const Undefined(),
  });

  factory MapAddress.empty() {
    return MapAddress(
      $_id: '',
      longName: const Undefined(),
      shortName: const Undefined(),
    );
  }

  factory MapAddress.fromJson(Map<String, dynamic> json) {
    return MapAddress(
      $_id: json['_id'] as String,
      longName: json.containsKey('longName')
          ? Defined(json['longName'] as String)
          : const Undefined(),
      shortName: json.containsKey('shortName')
          ? Defined(json['shortName'] as String)
          : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': encodeValue($_id),
      if (longName.isDefined)
        'longName': encodeValue(longName.asDefined().value),
      if (shortName.isDefined)
        'shortName': encodeValue(shortName.asDefined().value),
    };
  }

  MapAddress copyWith({
    String? $_id,
    Optional<String>? longName,
    Optional<String>? shortName,
  }) {
    return MapAddress(
      $_id: $_id ?? this.$_id,
      longName: longName ?? this.longName,
      shortName: shortName ?? this.shortName,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MapAddress &&
        other.$_id == $_id &&
        other.longName == longName &&
        other.shortName == shortName;
  }

  @override
  int get hashCode {
    return $_id.hashCode ^ longName.hashCode ^ shortName.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
