import 'package:convex_dart/src/rust/dart_value.dart';
import 'package:convex_dart/src/rust/dart_value/conversion.dart';
import 'package:convex_dart/src/convex_dart_for_generated_code.dart';

BTreeMapStringValue encodeMap(Map<String, dynamic> value) {
  return hashmapToBtreemap(
    hashmap: value.map((k, v) => MapEntry(k, encodeValue(v))),
  );
}

DartValue encodeValue(dynamic value) {
  if (value is DartValue) {
    return value;
  }
  return switch (value) {
    null => DartValue.null_(),
    int i => DartValue.int64(i),
    double d => DartValue.float64(d),
    bool b => DartValue.boolean(b),
    String s => DartValue.string(s),
    Uint8ListWithEquality bytes => DartValue.bytes(bytes.value),
    List<dynamic> list => DartValue.array(list.map(encodeValue).toList()),
    IList<dynamic> list => DartValue.array(list.map(encodeValue).toList()),
    Map<String, dynamic> map => DartValue.object(
      hashmapToBtreemapDartValue(
        hashmap: map.map((k, v) => MapEntry(k, encodeValue(v))),
      ),
    ),
    IMap<String, dynamic> map => DartValue.object(
      hashmapToBtreemapDartValue(
        hashmap: map.map((k, v) => MapEntry(k, encodeValue(v))).unlockLazy,
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

    _ => throw UnimplementedError(
      "Unsupported value type: $value, type: ${value.runtimeType}",
    ),
  };
}

dynamic decodeValue(DartValue value) {
  return switch (value) {
    DartValue_Null() => null,
    DartValue_Int64 i => i.field0,
    DartValue_Float64 d => d.field0,
    DartValue_Boolean b => b.field0,
    DartValue_String s => s.field0,
    DartValue_Bytes b => Uint8ListWithEquality(b.field0),
    DartValue_Array a => a.field0.map(decodeValue).toIList(),
    DartValue_Object o => btreemapToHashmapDartValue(
      btreemap: o.field0,
    ).map((k, v) => MapEntry(k, decodeValue(v))).lock,
  };
}
