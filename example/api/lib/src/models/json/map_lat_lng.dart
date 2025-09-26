// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class MapLatLng {
  final String $_id;
  final double latitude;
  final double longitude;

  const MapLatLng({
    required this.$_id,
    required this.latitude,
    required this.longitude,
  });

  factory MapLatLng.empty() {
    return MapLatLng($_id: '', latitude: 0.0, longitude: 0.0);
  }

  factory MapLatLng.fromJson(Map<String, dynamic> json) {
    return MapLatLng(
      $_id: json['_id'] as String,
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': encodeValue($_id),
      'latitude': encodeValue(latitude),
      'longitude': encodeValue(longitude),
    };
  }

  MapLatLng copyWith({String? $_id, double? latitude, double? longitude}) {
    return MapLatLng(
      $_id: $_id ?? this.$_id,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MapLatLng &&
        other.$_id == $_id &&
        other.latitude == latitude &&
        other.longitude == longitude;
  }

  @override
  int get hashCode {
    return $_id.hashCode ^ latitude.hashCode ^ longitude.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
