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
  final StorageId? storageId;

  const MediaData({
    this.blurHash = const Undefined(),
    this.mime = const Undefined(),
    this.name = const Undefined(),
    this.size = const Undefined(),
    required this.storageId,
  });

  factory MediaData.empty() {
    return MediaData(
      blurHash: const Undefined(),
      mime: const Undefined(),
      name: const Undefined(),
      size: const Undefined(),
      storageId: null,
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
      storageId: json['storageId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (blurHash.isDefined)
        'blurHash': encodeValue(blurHash.asDefined().value),
      if (mime.isDefined) 'mime': encodeValue(mime.asDefined().value),
      if (name.isDefined) 'name': encodeValue(name.asDefined().value),
      if (size.isDefined) 'size': encodeValue(size.asDefined().value),
      'storageId': encodeValue(storageId),
    };
  }

  /// Create from inline record (used in typedef conversions)
  factory MediaData.fromRecord(
    ({
      Optional<String> blurHash,
      Optional<String> mime,
      Optional<String> name,
      Optional<double> size,
      StorageId? storageId,
    })
    record,
  ) {
    return MediaData(
      blurHash: record.blurHash,
      mime: record.mime,
      name: record.name,
      size: record.size,
      storageId: record.storageId,
    );
  }

  MediaData copyWith({
    Optional<String>? blurHash,
    Optional<String>? mime,
    Optional<String>? name,
    Optional<double>? size,
    StorageId? storageId,
  }) {
    return MediaData(
      blurHash: blurHash ?? this.blurHash,
      mime: mime ?? this.mime,
      name: name ?? this.name,
      size: size ?? this.size,
      storageId: storageId ?? this.storageId,
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
        other.storageId == storageId;
  }

  @override
  int get hashCode {
    return blurHash.hashCode ^
        mime.hashCode ^
        name.hashCode ^
        size.hashCode ^
        storageId.hashCode;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
