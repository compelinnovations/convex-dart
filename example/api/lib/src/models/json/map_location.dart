// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";
import "map_address.dart";
import "map_lat_lng.dart";

class MapLocation {
  final String $_id;
  final Optional<MapAddress> administrativeAreaLevel1;
  final Optional<MapLatLng> administrativeAreaLevel2;
  final Optional<MapAddress> country;
  final Optional<String> formattedAddress;
  final MapLatLng latLng;
  final Optional<MapAddress> locality;
  final Optional<String> name;
  final Optional<String> placeId;
  final Optional<MapAddress> plusCode;
  final Optional<MapAddress> postalCode;
  final Optional<MapAddress> subLocalityLevel1;
  final Optional<MapAddress> subLocalityLevel2;

  const MapLocation({
    required this.$_id,
    this.administrativeAreaLevel1 = const Undefined(),
    this.administrativeAreaLevel2 = const Undefined(),
    this.country = const Undefined(),
    this.formattedAddress = const Undefined(),
    required this.latLng,
    this.locality = const Undefined(),
    this.name = const Undefined(),
    this.placeId = const Undefined(),
    this.plusCode = const Undefined(),
    this.postalCode = const Undefined(),
    this.subLocalityLevel1 = const Undefined(),
    this.subLocalityLevel2 = const Undefined(),
  });

  factory MapLocation.empty() {
    return MapLocation(
      $_id: '',
      administrativeAreaLevel1: const Undefined(),
      administrativeAreaLevel2: const Undefined(),
      country: const Undefined(),
      formattedAddress: const Undefined(),
      latLng: MapLatLng.empty(),
      locality: const Undefined(),
      name: const Undefined(),
      placeId: const Undefined(),
      plusCode: const Undefined(),
      postalCode: const Undefined(),
      subLocalityLevel1: const Undefined(),
      subLocalityLevel2: const Undefined(),
    );
  }

  factory MapLocation.fromJson(Map<String, dynamic> json) {
    return MapLocation(
      $_id: json['_id'] as String,
      administrativeAreaLevel1: json.containsKey('administrativeAreaLevel1')
          ? Defined(
              MapAddress.fromJson(
                json['administrativeAreaLevel1'] as Map<String, dynamic>,
              ),
            )
          : const Undefined(),
      administrativeAreaLevel2: json.containsKey('administrativeAreaLevel2')
          ? Defined(
              MapLatLng.fromJson(
                json['administrativeAreaLevel2'] as Map<String, dynamic>,
              ),
            )
          : const Undefined(),
      country: json.containsKey('country')
          ? Defined(
              MapAddress.fromJson(json['country'] as Map<String, dynamic>),
            )
          : const Undefined(),
      formattedAddress: json.containsKey('formattedAddress')
          ? Defined(json['formattedAddress'] as String)
          : const Undefined(),
      latLng: MapLatLng.fromJson(json['latLng'] as Map<String, dynamic>),
      locality: json.containsKey('locality')
          ? Defined(
              MapAddress.fromJson(json['locality'] as Map<String, dynamic>),
            )
          : const Undefined(),
      name: json.containsKey('name')
          ? Defined(json['name'] as String)
          : const Undefined(),
      placeId: json.containsKey('placeId')
          ? Defined(json['placeId'] as String)
          : const Undefined(),
      plusCode: json.containsKey('plusCode')
          ? Defined(
              MapAddress.fromJson(json['plusCode'] as Map<String, dynamic>),
            )
          : const Undefined(),
      postalCode: json.containsKey('postalCode')
          ? Defined(
              MapAddress.fromJson(json['postalCode'] as Map<String, dynamic>),
            )
          : const Undefined(),
      subLocalityLevel1: json.containsKey('subLocalityLevel1')
          ? Defined(
              MapAddress.fromJson(
                json['subLocalityLevel1'] as Map<String, dynamic>,
              ),
            )
          : const Undefined(),
      subLocalityLevel2: json.containsKey('subLocalityLevel2')
          ? Defined(
              MapAddress.fromJson(
                json['subLocalityLevel2'] as Map<String, dynamic>,
              ),
            )
          : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': encodeValue($_id),
      if (administrativeAreaLevel1.isDefined)
        'administrativeAreaLevel1': encodeValue({
          '_id': encodeValue(administrativeAreaLevel1.asDefined().value.$_id),
          if (administrativeAreaLevel1.asDefined().value.longName.isDefined)
            'longName': encodeValue(
              administrativeAreaLevel1
                  .asDefined()
                  .value
                  .longName
                  .asDefined()
                  .value,
            ),
          if (administrativeAreaLevel1.asDefined().value.shortName.isDefined)
            'shortName': encodeValue(
              administrativeAreaLevel1
                  .asDefined()
                  .value
                  .shortName
                  .asDefined()
                  .value,
            ),
        }),
      if (administrativeAreaLevel2.isDefined)
        'administrativeAreaLevel2': encodeValue({
          '_id': encodeValue(administrativeAreaLevel2.asDefined().value.$_id),
          'latitude': encodeValue(
            administrativeAreaLevel2.asDefined().value.latitude,
          ),
          'longitude': encodeValue(
            administrativeAreaLevel2.asDefined().value.longitude,
          ),
        }),
      if (country.isDefined)
        'country': encodeValue({
          '_id': encodeValue(country.asDefined().value.$_id),
          if (country.asDefined().value.longName.isDefined)
            'longName': encodeValue(
              country.asDefined().value.longName.asDefined().value,
            ),
          if (country.asDefined().value.shortName.isDefined)
            'shortName': encodeValue(
              country.asDefined().value.shortName.asDefined().value,
            ),
        }),
      if (formattedAddress.isDefined)
        'formattedAddress': encodeValue(formattedAddress.asDefined().value),
      'latLng': encodeValue({
        '_id': encodeValue(latLng.$_id),
        'latitude': encodeValue(latLng.latitude),
        'longitude': encodeValue(latLng.longitude),
      }),
      if (locality.isDefined)
        'locality': encodeValue({
          '_id': encodeValue(locality.asDefined().value.$_id),
          if (locality.asDefined().value.longName.isDefined)
            'longName': encodeValue(
              locality.asDefined().value.longName.asDefined().value,
            ),
          if (locality.asDefined().value.shortName.isDefined)
            'shortName': encodeValue(
              locality.asDefined().value.shortName.asDefined().value,
            ),
        }),
      if (name.isDefined) 'name': encodeValue(name.asDefined().value),
      if (placeId.isDefined) 'placeId': encodeValue(placeId.asDefined().value),
      if (plusCode.isDefined)
        'plusCode': encodeValue({
          '_id': encodeValue(plusCode.asDefined().value.$_id),
          if (plusCode.asDefined().value.longName.isDefined)
            'longName': encodeValue(
              plusCode.asDefined().value.longName.asDefined().value,
            ),
          if (plusCode.asDefined().value.shortName.isDefined)
            'shortName': encodeValue(
              plusCode.asDefined().value.shortName.asDefined().value,
            ),
        }),
      if (postalCode.isDefined)
        'postalCode': encodeValue({
          '_id': encodeValue(postalCode.asDefined().value.$_id),
          if (postalCode.asDefined().value.longName.isDefined)
            'longName': encodeValue(
              postalCode.asDefined().value.longName.asDefined().value,
            ),
          if (postalCode.asDefined().value.shortName.isDefined)
            'shortName': encodeValue(
              postalCode.asDefined().value.shortName.asDefined().value,
            ),
        }),
      if (subLocalityLevel1.isDefined)
        'subLocalityLevel1': encodeValue({
          '_id': encodeValue(subLocalityLevel1.asDefined().value.$_id),
          if (subLocalityLevel1.asDefined().value.longName.isDefined)
            'longName': encodeValue(
              subLocalityLevel1.asDefined().value.longName.asDefined().value,
            ),
          if (subLocalityLevel1.asDefined().value.shortName.isDefined)
            'shortName': encodeValue(
              subLocalityLevel1.asDefined().value.shortName.asDefined().value,
            ),
        }),
      if (subLocalityLevel2.isDefined)
        'subLocalityLevel2': encodeValue({
          '_id': encodeValue(subLocalityLevel2.asDefined().value.$_id),
          if (subLocalityLevel2.asDefined().value.longName.isDefined)
            'longName': encodeValue(
              subLocalityLevel2.asDefined().value.longName.asDefined().value,
            ),
          if (subLocalityLevel2.asDefined().value.shortName.isDefined)
            'shortName': encodeValue(
              subLocalityLevel2.asDefined().value.shortName.asDefined().value,
            ),
        }),
    };
  }

  MapLocation copyWith({
    String? $_id,
    Optional<MapAddress>? administrativeAreaLevel1,
    Optional<MapLatLng>? administrativeAreaLevel2,
    Optional<MapAddress>? country,
    Optional<String>? formattedAddress,
    MapLatLng? latLng,
    Optional<MapAddress>? locality,
    Optional<String>? name,
    Optional<String>? placeId,
    Optional<MapAddress>? plusCode,
    Optional<MapAddress>? postalCode,
    Optional<MapAddress>? subLocalityLevel1,
    Optional<MapAddress>? subLocalityLevel2,
  }) {
    return MapLocation(
      $_id: $_id ?? this.$_id,
      administrativeAreaLevel1:
          administrativeAreaLevel1 ?? this.administrativeAreaLevel1,
      administrativeAreaLevel2:
          administrativeAreaLevel2 ?? this.administrativeAreaLevel2,
      country: country ?? this.country,
      formattedAddress: formattedAddress ?? this.formattedAddress,
      latLng: latLng ?? this.latLng,
      locality: locality ?? this.locality,
      name: name ?? this.name,
      placeId: placeId ?? this.placeId,
      plusCode: plusCode ?? this.plusCode,
      postalCode: postalCode ?? this.postalCode,
      subLocalityLevel1: subLocalityLevel1 ?? this.subLocalityLevel1,
      subLocalityLevel2: subLocalityLevel2 ?? this.subLocalityLevel2,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MapLocation &&
        other.$_id == $_id &&
        other.administrativeAreaLevel1 == administrativeAreaLevel1 &&
        other.administrativeAreaLevel2 == administrativeAreaLevel2 &&
        other.country == country &&
        other.formattedAddress == formattedAddress &&
        other.latLng == latLng &&
        other.locality == locality &&
        other.name == name &&
        other.placeId == placeId &&
        other.plusCode == plusCode &&
        other.postalCode == postalCode &&
        other.subLocalityLevel1 == subLocalityLevel1 &&
        other.subLocalityLevel2 == subLocalityLevel2;
  }

  @override
  int get hashCode {
    return $_id.hashCode ^
        administrativeAreaLevel1.hashCode ^
        administrativeAreaLevel2.hashCode ^
        country.hashCode ^
        formattedAddress.hashCode ^
        latLng.hashCode ^
        locality.hashCode ^
        name.hashCode ^
        placeId.hashCode ^
        plusCode.hashCode ^
        postalCode.hashCode ^
        subLocalityLevel1.hashCode ^
        subLocalityLevel2.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
