import 'dart:typed_data';

import 'package:convex_dart/src/rust/dart_value.dart';
import 'package:convex_dart/src/rust/dart_value/conversion.dart';
import 'package:convex_dart/src/convex_dart_for_generated_code.dart';

BTreeMapStringValue encodeMap(Map<String, dynamic> value) {
  return hashmapToBtreemap(
    hashmap: value.map((k, v) => MapEntry(k, encodeValue(v))),
  );
}

DartValue encodeValue(dynamic value) {
  return switch (value) {
    null => DartValue.null_(),
    int i => DartValue.int64(i),
    double d => DartValue.float64(d),
    bool b => DartValue.boolean(b),
    String s => DartValue.string(s),
    Uint8List bytes => DartValue.bytes(bytes),
    List<dynamic> list => DartValue.array(list.map(encodeValue).toList()),
    Map<String, dynamic> map => DartValue.object(
      hashmapToBtreemapDartValue(
        hashmap: map.map((k, v) => MapEntry(k, encodeValue(v))),
      ),
    ),
    TableId id => DartValue.string(id.value),
    Literal literal => switch (literal.value) {
      String s => DartValue.string(s),
      int i => DartValue.int64(i),
      double d => DartValue.float64(d),
      bool b => DartValue.boolean(b),
      _ => throw UnimplementedError("Unsupported literal type: $literal"),
    },

    _ => throw UnimplementedError("Unsupported value type: $value"),
  };
}

dynamic decodeValue(DartValue value) {
  return switch (value) {
    DartValue_Null() => null,
    DartValue_Int64 i => i.field0,
    DartValue_Float64 d => d.field0,
    DartValue_Boolean b => b.field0,
    DartValue_String s => s.field0,
    DartValue_Bytes b => b.field0,
    DartValue_Array a => a.field0.map(decodeValue).toList(),
    DartValue_Object o => btreemapToHashmapDartValue(
      btreemap: o.field0,
    ).map((k, v) => MapEntry(k, decodeValue(v))),
  };
}
