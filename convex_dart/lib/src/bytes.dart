import 'dart:typed_data';

import 'package:collection/collection.dart';

const ListEquality $bytesEquality = ListEquality();

class Uint8ListWithEquality {
  final Uint8List value;
  const Uint8ListWithEquality(this.value);
  Uint8ListWithEquality.fromList(List<int> list)
    : value = Uint8List.fromList(list);

  @override
  String toString() {
    return value.toString();
  }

  @override
  bool operator ==(Object other) {
    if (other is Uint8ListWithEquality) {
      return $bytesEquality.equals(value, other.value);
    }
    return false;
  }

  @override
  int get hashCode => $bytesEquality.hash(value);
}
