import 'dart:typed_data';

import 'package:convex_dart/src/convex_dart_for_generated_code.dart';
import 'package:dart_mappable_extras/dart_mappable_extras.dart'
    hide BytesMapper;

class BytesMapper extends SimpleMapper<Uint8List> {
  const BytesMapper();

  @override
  Uint8List decode(Object value) {
    return Uint8List.fromList((value as List).cast<int>());
  }

  @override
  Object encode(Uint8List value) {
    return value;
  }
}

const convexMappers = <MapperBase>[
  Union2Mapper(),
  Union3Mapper(),
  Union4Mapper(),
  Union5Mapper(),
  Union6Mapper(),
  Union7Mapper(),
  Union8Mapper(),
  Union9Mapper(),
  OptionalMapper(),
  BytesMapper(),
];
