// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

class MediaData {
  final Optional<String> blurHash;
  final Optional<String> mime;
  final Optional<String> name;
  final Optional<double> size;
  final Optional<StorageId> storageId;
  final Optional<String> url;

  const MediaData({
    this.blurHash = const Undefined(),
    this.mime = const Undefined(),
    this.name = const Undefined(),
    this.size = const Undefined(),
    this.storageId = const Undefined(),
    this.url = const Undefined(),
  });

  factory MediaData.empty() {
    return MediaData(
      blurHash: const Undefined(),
      mime: const Undefined(),
      name: const Undefined(),
      size: const Undefined(),
      storageId: const Undefined(),
      url: const Undefined(),
    );
  }

  factory MediaData.fromJson(Map<String, dynamic> json) {
    return MediaData(
      blurHash: json.containsKey('blurHash')
          ? Defined(json['blurHash'] as String)
          : const Undefined(),
      mime: json.containsKey('mime')
          ? Defined(json['mime'] as String)
          : const Undefined(),
      name: json.containsKey('name')
          ? Defined(json['name'] as String)
          : const Undefined(),
      size: json.containsKey('size')
          ? Defined(json['size'] as double)
          : const Undefined(),
      storageId: json.containsKey('storageId')
          ? Defined(StorageId(json['storageId'] as String))
          : const Undefined(),
      url: json.containsKey('url')
          ? Defined(json['url'] as String)
          : const Undefined(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (blurHash.isDefined) 'blurHash': blurHash.asDefined().value,
      if (mime.isDefined) 'mime': mime.asDefined().value,
      if (name.isDefined) 'name': name.asDefined().value,
      if (size.isDefined) 'size': size.asDefined().value,
      if (storageId.isDefined) 'storageId': storageId.asDefined().value.value,
      if (url.isDefined) 'url': url.asDefined().value,
    };
  }

  /// Create from inline record (used in typedef conversions)
  factory MediaData.fromRecord(
    ({
      Optional<String> blurHash,
      Optional<String> mime,
      Optional<String> name,
      Optional<double> size,
      Optional<StorageId> storageId,
      Optional<String> url,
    })
    record,
  ) {
    return MediaData(
      blurHash: record.blurHash,
      mime: record.mime,
      name: record.name,
      size: record.size,
      storageId: record.storageId,
      url: record.url,
    );
  }

  /// Convert to inline record (inverse of fromRecord)
  ({
    Optional<String> blurHash,
    Optional<String> mime,
    Optional<String> name,
    Optional<double> size,
    Optional<StorageId> storageId,
    Optional<String> url,
  })
  toRecord() {
    return (
      blurHash: blurHash,
      mime: mime,
      name: name,
      size: size,
      storageId: storageId,
      url: url,
    );
  }

  MediaData copyWith({
    Optional<String>? blurHash,
    Optional<String>? mime,
    Optional<String>? name,
    Optional<double>? size,
    Optional<StorageId>? storageId,
    Optional<String>? url,
  }) {
    return MediaData(
      blurHash: blurHash ?? this.blurHash,
      mime: mime ?? this.mime,
      name: name ?? this.name,
      size: size ?? this.size,
      storageId: storageId ?? this.storageId,
      url: url ?? this.url,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MediaData &&
        other.blurHash == blurHash &&
        other.mime == mime &&
        other.name == name &&
        other.size == size &&
        other.storageId == storageId &&
        other.url == url;
  }

  @override
  int get hashCode {
    return blurHash.hashCode ^
        mime.hashCode ^
        name.hashCode ^
        size.hashCode ^
        storageId.hashCode ^
        url.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
