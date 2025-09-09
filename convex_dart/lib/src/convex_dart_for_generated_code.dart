export 'schema.dart';
export 'literal.dart';
export 'encode.dart';
export 'package:fast_immutable_collections/fast_immutable_collections.dart';

export 'rust/lib.dart' show BTreeMapStringValue;
export 'convex_client.dart' show ConvexClient;
export 'opperations.dart'
    show QueryOperation, MutationOperation, ActionOperation;
export 'optional.dart';
export './rust/dart_value.dart' show DartValue;
export './rust/dart_value/conversion.dart'
    show
        hashmapToBtreemap,
        btreemapToHashmap,
        hashmapToBtreemapDartValue,
        btreemapDartValueToBtreemap;
export 'rust/lib.dart' show BTreeMapStringDartValue;
export 'rust/dart_value.dart' show DartValue_Object;
export 'bytes.dart' show Uint8ListWithEquality;

extension Then<T> on T {
  R then<R>(R Function(T) then) {
    return then(this);
  }
}
