// Copied from the great extension_type_unions
// package to make the primary constructor public.

// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Thrown when an invalid union type value is detected.
///
/// An expression whose static type is a union type of the form
/// `UnionK<X1, ... XK>` and whose value does not have any of the types
/// `X1` .. `XK` is an _invalid_ union type value. This exception is used
/// to report that such a value has been encountered.
class InvalidUnionTypeException implements Exception {
  /// Description of the invalid union type.
  final String type;
  final Object? value;

  InvalidUnionTypeException(this.type, this.value);

  @override
  String toString() => '$type: value has type ${value.runtimeType}';
}

/// Emulate the union of the types [X1] .. [X2].
extension type Union2<X1, X2>(Object? value) {
  /// Create a [Union2] value from the 1th type argument.
  Union2.in1(X1 this.value);

  /// Create a [Union2] value from the 2th type argument.
  Union2.in2(X2 this.value);

  /// Return true iff this [Union2] has a type in [X1] .. [X2].
  bool get isValid => value is X1 || value is X2;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  R split<R>(R Function(X1) on1, R Function(X2) on2) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    throw InvalidUnionTypeException("Union2<$X1, $X2>", value);
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException("Union2<$X1, $X2>", value);
  }
}

/// Emulate the union of the types [X1] .. [X3].
extension type Union3<X1, X2, X3>(Object? value) {
  /// Create a [Union3] value from the 1th type argument.
  Union3.in1(X1 this.value);

  /// Create a [Union3] value from the 2th type argument.
  Union3.in2(X2 this.value);

  /// Create a [Union3] value from the 3th type argument.
  Union3.in3(X3 this.value);

  /// Return true iff this [Union3] has a type in [X1] .. [X3].
  bool get isValid => value is X1 || value is X2 || value is X3;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  R split<R>(R Function(X1) on1, R Function(X2) on2, R Function(X3) on3) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    throw InvalidUnionTypeException("Union3<$X1, $X2, $X3>", value);
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException("Union3<$X1, $X2, $X3>", value);
  }
}

/// Emulate the union of the types [X1] .. [X4].
extension type Union4<X1, X2, X3, X4>(Object? value) {
  /// Create a [Union4] value from the 1th type argument.
  Union4.in1(X1 this.value);

  /// Create a [Union4] value from the 2th type argument.
  Union4.in2(X2 this.value);

  /// Create a [Union4] value from the 3th type argument.
  Union4.in3(X3 this.value);

  /// Create a [Union4] value from the 4th type argument.
  Union4.in4(X4 this.value);

  /// Return true iff this [Union4] has a type in [X1] .. [X4].
  bool get isValid => value is X1 || value is X2 || value is X3 || value is X4;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    throw InvalidUnionTypeException("Union4<$X1, $X2, $X3, $X4>", value);
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException("Union4<$X1, $X2, $X3, $X4>", value);
  }
}

/// Emulate the union of the types [X1] .. [X5].
extension type Union5<X1, X2, X3, X4, X5>(Object? value) {
  /// Create a [Union5] value from the 1th type argument.
  Union5.in1(X1 this.value);

  /// Create a [Union5] value from the 2th type argument.
  Union5.in2(X2 this.value);

  /// Create a [Union5] value from the 3th type argument.
  Union5.in3(X3 this.value);

  /// Create a [Union5] value from the 4th type argument.
  Union5.in4(X4 this.value);

  /// Create a [Union5] value from the 5th type argument.
  Union5.in5(X5 this.value);

  /// Return true iff this [Union5] has a type in [X1] .. [X5].
  bool get isValid =>
      value is X1 || value is X2 || value is X3 || value is X4 || value is X5;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    throw InvalidUnionTypeException("Union5<$X1, $X2, $X3, $X4, $X5>", value);
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException("Union5<$X1, $X2, $X3, $X4, $X5>", value);
  }
}

/// Emulate the union of the types [X1] .. [X6].
extension type Union6<X1, X2, X3, X4, X5, X6>(Object? value) {
  /// Create a [Union6] value from the 1th type argument.
  Union6.in1(X1 this.value);

  /// Create a [Union6] value from the 2th type argument.
  Union6.in2(X2 this.value);

  /// Create a [Union6] value from the 3th type argument.
  Union6.in3(X3 this.value);

  /// Create a [Union6] value from the 4th type argument.
  Union6.in4(X4 this.value);

  /// Create a [Union6] value from the 5th type argument.
  Union6.in5(X5 this.value);

  /// Create a [Union6] value from the 6th type argument.
  Union6.in6(X6 this.value);

  /// Return true iff this [Union6] has a type in [X1] .. [X6].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    throw InvalidUnionTypeException(
      "Union6<$X1, $X2, $X3, $X4, $X5, $X6>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union6<$X1, $X2, $X3, $X4, $X5, $X6>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X7].
extension type Union7<X1, X2, X3, X4, X5, X6, X7>(Object? value) {
  /// Create a [Union7] value from the 1th type argument.
  Union7.in1(X1 this.value);

  /// Create a [Union7] value from the 2th type argument.
  Union7.in2(X2 this.value);

  /// Create a [Union7] value from the 3th type argument.
  Union7.in3(X3 this.value);

  /// Create a [Union7] value from the 4th type argument.
  Union7.in4(X4 this.value);

  /// Create a [Union7] value from the 5th type argument.
  Union7.in5(X5 this.value);

  /// Create a [Union7] value from the 6th type argument.
  Union7.in6(X6 this.value);

  /// Create a [Union7] value from the 7th type argument.
  Union7.in7(X7 this.value);

  /// Return true iff this [Union7] has a type in [X1] .. [X7].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    throw InvalidUnionTypeException(
      "Union7<$X1, $X2, $X3, $X4, $X5, $X6, $X7>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union7<$X1, $X2, $X3, $X4, $X5, $X6, $X7>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X8].
extension type Union8<X1, X2, X3, X4, X5, X6, X7, X8>(Object? value) {
  /// Create a [Union8] value from the 1th type argument.
  Union8.in1(X1 this.value);

  /// Create a [Union8] value from the 2th type argument.
  Union8.in2(X2 this.value);

  /// Create a [Union8] value from the 3th type argument.
  Union8.in3(X3 this.value);

  /// Create a [Union8] value from the 4th type argument.
  Union8.in4(X4 this.value);

  /// Create a [Union8] value from the 5th type argument.
  Union8.in5(X5 this.value);

  /// Create a [Union8] value from the 6th type argument.
  Union8.in6(X6 this.value);

  /// Create a [Union8] value from the 7th type argument.
  Union8.in7(X7 this.value);

  /// Create a [Union8] value from the 8th type argument.
  Union8.in8(X8 this.value);

  /// Return true iff this [Union8] has a type in [X1] .. [X8].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    throw InvalidUnionTypeException(
      "Union8<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union8<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X9].
extension type Union9<X1, X2, X3, X4, X5, X6, X7, X8, X9>(Object? value) {
  /// Create a [Union9] value from the 1th type argument.
  Union9.in1(X1 this.value);

  /// Create a [Union9] value from the 2th type argument.
  Union9.in2(X2 this.value);

  /// Create a [Union9] value from the 3th type argument.
  Union9.in3(X3 this.value);

  /// Create a [Union9] value from the 4th type argument.
  Union9.in4(X4 this.value);

  /// Create a [Union9] value from the 5th type argument.
  Union9.in5(X5 this.value);

  /// Create a [Union9] value from the 6th type argument.
  Union9.in6(X6 this.value);

  /// Create a [Union9] value from the 7th type argument.
  Union9.in7(X7 this.value);

  /// Create a [Union9] value from the 8th type argument.
  Union9.in8(X8 this.value);

  /// Create a [Union9] value from the 9th type argument.
  Union9.in9(X9 this.value);

  /// Return true iff this [Union9] has a type in [X1] .. [X9].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    throw InvalidUnionTypeException(
      "Union9<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union9<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X10].
extension type Union10<X1, X2, X3, X4, X5, X6, X7, X8, X9, X10>(Object? value) {
  /// Create a [Union10] value from the 1th type argument.
  Union10.in1(X1 this.value);

  /// Create a [Union10] value from the 2th type argument.
  Union10.in2(X2 this.value);

  /// Create a [Union10] value from the 3th type argument.
  Union10.in3(X3 this.value);

  /// Create a [Union10] value from the 4th type argument.
  Union10.in4(X4 this.value);

  /// Create a [Union10] value from the 5th type argument.
  Union10.in5(X5 this.value);

  /// Create a [Union10] value from the 6th type argument.
  Union10.in6(X6 this.value);

  /// Create a [Union10] value from the 7th type argument.
  Union10.in7(X7 this.value);

  /// Create a [Union10] value from the 8th type argument.
  Union10.in8(X8 this.value);

  /// Create a [Union10] value from the 9th type argument.
  Union10.in9(X9 this.value);

  /// Create a [Union10] value from the 10th type argument.
  Union10.in10(X10 this.value);

  /// Return true iff this [Union10] has a type in [X1] .. [X10].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    throw InvalidUnionTypeException(
      "Union10<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union10<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X11].
extension type Union11<X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11>(
  Object? value
) {
  /// Create a [Union11] value from the 1th type argument.
  Union11.in1(X1 this.value);

  /// Create a [Union11] value from the 2th type argument.
  Union11.in2(X2 this.value);

  /// Create a [Union11] value from the 3th type argument.
  Union11.in3(X3 this.value);

  /// Create a [Union11] value from the 4th type argument.
  Union11.in4(X4 this.value);

  /// Create a [Union11] value from the 5th type argument.
  Union11.in5(X5 this.value);

  /// Create a [Union11] value from the 6th type argument.
  Union11.in6(X6 this.value);

  /// Create a [Union11] value from the 7th type argument.
  Union11.in7(X7 this.value);

  /// Create a [Union11] value from the 8th type argument.
  Union11.in8(X8 this.value);

  /// Create a [Union11] value from the 9th type argument.
  Union11.in9(X9 this.value);

  /// Create a [Union11] value from the 10th type argument.
  Union11.in10(X10 this.value);

  /// Create a [Union11] value from the 11th type argument.
  Union11.in11(X11 this.value);

  /// Return true iff this [Union11] has a type in [X1] .. [X11].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10 ||
      value is X11;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X11], otherwise null.
  X11? get as11OrNull => value is X11 ? value as X11 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return the [value] if it has type [X11], otherwise throw.
  X11 get as11 => value as X11;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  /// Return type iff the [value] has type [X11].
  bool get is11 => value is X11;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
    R Function(X11) on11,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    if (v is X11) return on11(v);
    throw InvalidUnionTypeException(
      "Union11<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(X11)? on11,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (v is X11) return (on11 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union11<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X12].
extension type Union12<X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12>(
  Object? value
) {
  /// Create a [Union12] value from the 1th type argument.
  Union12.in1(X1 this.value);

  /// Create a [Union12] value from the 2th type argument.
  Union12.in2(X2 this.value);

  /// Create a [Union12] value from the 3th type argument.
  Union12.in3(X3 this.value);

  /// Create a [Union12] value from the 4th type argument.
  Union12.in4(X4 this.value);

  /// Create a [Union12] value from the 5th type argument.
  Union12.in5(X5 this.value);

  /// Create a [Union12] value from the 6th type argument.
  Union12.in6(X6 this.value);

  /// Create a [Union12] value from the 7th type argument.
  Union12.in7(X7 this.value);

  /// Create a [Union12] value from the 8th type argument.
  Union12.in8(X8 this.value);

  /// Create a [Union12] value from the 9th type argument.
  Union12.in9(X9 this.value);

  /// Create a [Union12] value from the 10th type argument.
  Union12.in10(X10 this.value);

  /// Create a [Union12] value from the 11th type argument.
  Union12.in11(X11 this.value);

  /// Create a [Union12] value from the 12th type argument.
  Union12.in12(X12 this.value);

  /// Return true iff this [Union12] has a type in [X1] .. [X12].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10 ||
      value is X11 ||
      value is X12;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X11], otherwise null.
  X11? get as11OrNull => value is X11 ? value as X11 : null;

  /// Return the [value] if it has type [X12], otherwise null.
  X12? get as12OrNull => value is X12 ? value as X12 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return the [value] if it has type [X11], otherwise throw.
  X11 get as11 => value as X11;

  /// Return the [value] if it has type [X12], otherwise throw.
  X12 get as12 => value as X12;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  /// Return type iff the [value] has type [X11].
  bool get is11 => value is X11;

  /// Return type iff the [value] has type [X12].
  bool get is12 => value is X12;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
    R Function(X11) on11,
    R Function(X12) on12,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    if (v is X11) return on11(v);
    if (v is X12) return on12(v);
    throw InvalidUnionTypeException(
      "Union12<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(X11)? on11,
    R Function(X12)? on12,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (v is X11) return (on11 ?? onOther)?.call(v);
    if (v is X12) return (on12 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union12<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X13].
extension type Union13<X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13>(
  Object? value
) {
  /// Create a [Union13] value from the 1th type argument.
  Union13.in1(X1 this.value);

  /// Create a [Union13] value from the 2th type argument.
  Union13.in2(X2 this.value);

  /// Create a [Union13] value from the 3th type argument.
  Union13.in3(X3 this.value);

  /// Create a [Union13] value from the 4th type argument.
  Union13.in4(X4 this.value);

  /// Create a [Union13] value from the 5th type argument.
  Union13.in5(X5 this.value);

  /// Create a [Union13] value from the 6th type argument.
  Union13.in6(X6 this.value);

  /// Create a [Union13] value from the 7th type argument.
  Union13.in7(X7 this.value);

  /// Create a [Union13] value from the 8th type argument.
  Union13.in8(X8 this.value);

  /// Create a [Union13] value from the 9th type argument.
  Union13.in9(X9 this.value);

  /// Create a [Union13] value from the 10th type argument.
  Union13.in10(X10 this.value);

  /// Create a [Union13] value from the 11th type argument.
  Union13.in11(X11 this.value);

  /// Create a [Union13] value from the 12th type argument.
  Union13.in12(X12 this.value);

  /// Create a [Union13] value from the 13th type argument.
  Union13.in13(X13 this.value);

  /// Return true iff this [Union13] has a type in [X1] .. [X13].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10 ||
      value is X11 ||
      value is X12 ||
      value is X13;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X11], otherwise null.
  X11? get as11OrNull => value is X11 ? value as X11 : null;

  /// Return the [value] if it has type [X12], otherwise null.
  X12? get as12OrNull => value is X12 ? value as X12 : null;

  /// Return the [value] if it has type [X13], otherwise null.
  X13? get as13OrNull => value is X13 ? value as X13 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return the [value] if it has type [X11], otherwise throw.
  X11 get as11 => value as X11;

  /// Return the [value] if it has type [X12], otherwise throw.
  X12 get as12 => value as X12;

  /// Return the [value] if it has type [X13], otherwise throw.
  X13 get as13 => value as X13;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  /// Return type iff the [value] has type [X11].
  bool get is11 => value is X11;

  /// Return type iff the [value] has type [X12].
  bool get is12 => value is X12;

  /// Return type iff the [value] has type [X13].
  bool get is13 => value is X13;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
    R Function(X11) on11,
    R Function(X12) on12,
    R Function(X13) on13,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    if (v is X11) return on11(v);
    if (v is X12) return on12(v);
    if (v is X13) return on13(v);
    throw InvalidUnionTypeException(
      "Union13<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(X11)? on11,
    R Function(X12)? on12,
    R Function(X13)? on13,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (v is X11) return (on11 ?? onOther)?.call(v);
    if (v is X12) return (on12 ?? onOther)?.call(v);
    if (v is X13) return (on13 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union13<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X14].
extension type Union14<
  X1,
  X2,
  X3,
  X4,
  X5,
  X6,
  X7,
  X8,
  X9,
  X10,
  X11,
  X12,
  X13,
  X14
>(Object? value) {
  /// Create a [Union14] value from the 1th type argument.
  Union14.in1(X1 this.value);

  /// Create a [Union14] value from the 2th type argument.
  Union14.in2(X2 this.value);

  /// Create a [Union14] value from the 3th type argument.
  Union14.in3(X3 this.value);

  /// Create a [Union14] value from the 4th type argument.
  Union14.in4(X4 this.value);

  /// Create a [Union14] value from the 5th type argument.
  Union14.in5(X5 this.value);

  /// Create a [Union14] value from the 6th type argument.
  Union14.in6(X6 this.value);

  /// Create a [Union14] value from the 7th type argument.
  Union14.in7(X7 this.value);

  /// Create a [Union14] value from the 8th type argument.
  Union14.in8(X8 this.value);

  /// Create a [Union14] value from the 9th type argument.
  Union14.in9(X9 this.value);

  /// Create a [Union14] value from the 10th type argument.
  Union14.in10(X10 this.value);

  /// Create a [Union14] value from the 11th type argument.
  Union14.in11(X11 this.value);

  /// Create a [Union14] value from the 12th type argument.
  Union14.in12(X12 this.value);

  /// Create a [Union14] value from the 13th type argument.
  Union14.in13(X13 this.value);

  /// Create a [Union14] value from the 14th type argument.
  Union14.in14(X14 this.value);

  /// Return true iff this [Union14] has a type in [X1] .. [X14].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10 ||
      value is X11 ||
      value is X12 ||
      value is X13 ||
      value is X14;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X11], otherwise null.
  X11? get as11OrNull => value is X11 ? value as X11 : null;

  /// Return the [value] if it has type [X12], otherwise null.
  X12? get as12OrNull => value is X12 ? value as X12 : null;

  /// Return the [value] if it has type [X13], otherwise null.
  X13? get as13OrNull => value is X13 ? value as X13 : null;

  /// Return the [value] if it has type [X14], otherwise null.
  X14? get as14OrNull => value is X14 ? value as X14 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return the [value] if it has type [X11], otherwise throw.
  X11 get as11 => value as X11;

  /// Return the [value] if it has type [X12], otherwise throw.
  X12 get as12 => value as X12;

  /// Return the [value] if it has type [X13], otherwise throw.
  X13 get as13 => value as X13;

  /// Return the [value] if it has type [X14], otherwise throw.
  X14 get as14 => value as X14;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  /// Return type iff the [value] has type [X11].
  bool get is11 => value is X11;

  /// Return type iff the [value] has type [X12].
  bool get is12 => value is X12;

  /// Return type iff the [value] has type [X13].
  bool get is13 => value is X13;

  /// Return type iff the [value] has type [X14].
  bool get is14 => value is X14;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
    R Function(X11) on11,
    R Function(X12) on12,
    R Function(X13) on13,
    R Function(X14) on14,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    if (v is X11) return on11(v);
    if (v is X12) return on12(v);
    if (v is X13) return on13(v);
    if (v is X14) return on14(v);
    throw InvalidUnionTypeException(
      "Union14<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(X11)? on11,
    R Function(X12)? on12,
    R Function(X13)? on13,
    R Function(X14)? on14,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (v is X11) return (on11 ?? onOther)?.call(v);
    if (v is X12) return (on12 ?? onOther)?.call(v);
    if (v is X13) return (on13 ?? onOther)?.call(v);
    if (v is X14) return (on14 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union14<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X15].
extension type Union15<
  X1,
  X2,
  X3,
  X4,
  X5,
  X6,
  X7,
  X8,
  X9,
  X10,
  X11,
  X12,
  X13,
  X14,
  X15
>(Object? value) {
  /// Create a [Union15] value from the 1th type argument.
  Union15.in1(X1 this.value);

  /// Create a [Union15] value from the 2th type argument.
  Union15.in2(X2 this.value);

  /// Create a [Union15] value from the 3th type argument.
  Union15.in3(X3 this.value);

  /// Create a [Union15] value from the 4th type argument.
  Union15.in4(X4 this.value);

  /// Create a [Union15] value from the 5th type argument.
  Union15.in5(X5 this.value);

  /// Create a [Union15] value from the 6th type argument.
  Union15.in6(X6 this.value);

  /// Create a [Union15] value from the 7th type argument.
  Union15.in7(X7 this.value);

  /// Create a [Union15] value from the 8th type argument.
  Union15.in8(X8 this.value);

  /// Create a [Union15] value from the 9th type argument.
  Union15.in9(X9 this.value);

  /// Create a [Union15] value from the 10th type argument.
  Union15.in10(X10 this.value);

  /// Create a [Union15] value from the 11th type argument.
  Union15.in11(X11 this.value);

  /// Create a [Union15] value from the 12th type argument.
  Union15.in12(X12 this.value);

  /// Create a [Union15] value from the 13th type argument.
  Union15.in13(X13 this.value);

  /// Create a [Union15] value from the 14th type argument.
  Union15.in14(X14 this.value);

  /// Create a [Union15] value from the 15th type argument.
  Union15.in15(X15 this.value);

  /// Return true iff this [Union15] has a type in [X1] .. [X15].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10 ||
      value is X11 ||
      value is X12 ||
      value is X13 ||
      value is X14 ||
      value is X15;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X11], otherwise null.
  X11? get as11OrNull => value is X11 ? value as X11 : null;

  /// Return the [value] if it has type [X12], otherwise null.
  X12? get as12OrNull => value is X12 ? value as X12 : null;

  /// Return the [value] if it has type [X13], otherwise null.
  X13? get as13OrNull => value is X13 ? value as X13 : null;

  /// Return the [value] if it has type [X14], otherwise null.
  X14? get as14OrNull => value is X14 ? value as X14 : null;

  /// Return the [value] if it has type [X15], otherwise null.
  X15? get as15OrNull => value is X15 ? value as X15 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return the [value] if it has type [X11], otherwise throw.
  X11 get as11 => value as X11;

  /// Return the [value] if it has type [X12], otherwise throw.
  X12 get as12 => value as X12;

  /// Return the [value] if it has type [X13], otherwise throw.
  X13 get as13 => value as X13;

  /// Return the [value] if it has type [X14], otherwise throw.
  X14 get as14 => value as X14;

  /// Return the [value] if it has type [X15], otherwise throw.
  X15 get as15 => value as X15;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  /// Return type iff the [value] has type [X11].
  bool get is11 => value is X11;

  /// Return type iff the [value] has type [X12].
  bool get is12 => value is X12;

  /// Return type iff the [value] has type [X13].
  bool get is13 => value is X13;

  /// Return type iff the [value] has type [X14].
  bool get is14 => value is X14;

  /// Return type iff the [value] has type [X15].
  bool get is15 => value is X15;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
    R Function(X11) on11,
    R Function(X12) on12,
    R Function(X13) on13,
    R Function(X14) on14,
    R Function(X15) on15,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    if (v is X11) return on11(v);
    if (v is X12) return on12(v);
    if (v is X13) return on13(v);
    if (v is X14) return on14(v);
    if (v is X15) return on15(v);
    throw InvalidUnionTypeException(
      "Union15<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(X11)? on11,
    R Function(X12)? on12,
    R Function(X13)? on13,
    R Function(X14)? on14,
    R Function(X15)? on15,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (v is X11) return (on11 ?? onOther)?.call(v);
    if (v is X12) return (on12 ?? onOther)?.call(v);
    if (v is X13) return (on13 ?? onOther)?.call(v);
    if (v is X14) return (on14 ?? onOther)?.call(v);
    if (v is X15) return (on15 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union15<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X16].
extension type Union16<
  X1,
  X2,
  X3,
  X4,
  X5,
  X6,
  X7,
  X8,
  X9,
  X10,
  X11,
  X12,
  X13,
  X14,
  X15,
  X16
>(Object? value) {
  /// Create a [Union16] value from the 1th type argument.
  Union16.in1(X1 this.value);

  /// Create a [Union16] value from the 2th type argument.
  Union16.in2(X2 this.value);

  /// Create a [Union16] value from the 3th type argument.
  Union16.in3(X3 this.value);

  /// Create a [Union16] value from the 4th type argument.
  Union16.in4(X4 this.value);

  /// Create a [Union16] value from the 5th type argument.
  Union16.in5(X5 this.value);

  /// Create a [Union16] value from the 6th type argument.
  Union16.in6(X6 this.value);

  /// Create a [Union16] value from the 7th type argument.
  Union16.in7(X7 this.value);

  /// Create a [Union16] value from the 8th type argument.
  Union16.in8(X8 this.value);

  /// Create a [Union16] value from the 9th type argument.
  Union16.in9(X9 this.value);

  /// Create a [Union16] value from the 10th type argument.
  Union16.in10(X10 this.value);

  /// Create a [Union16] value from the 11th type argument.
  Union16.in11(X11 this.value);

  /// Create a [Union16] value from the 12th type argument.
  Union16.in12(X12 this.value);

  /// Create a [Union16] value from the 13th type argument.
  Union16.in13(X13 this.value);

  /// Create a [Union16] value from the 14th type argument.
  Union16.in14(X14 this.value);

  /// Create a [Union16] value from the 15th type argument.
  Union16.in15(X15 this.value);

  /// Create a [Union16] value from the 16th type argument.
  Union16.in16(X16 this.value);

  /// Return true iff this [Union16] has a type in [X1] .. [X16].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10 ||
      value is X11 ||
      value is X12 ||
      value is X13 ||
      value is X14 ||
      value is X15 ||
      value is X16;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X11], otherwise null.
  X11? get as11OrNull => value is X11 ? value as X11 : null;

  /// Return the [value] if it has type [X12], otherwise null.
  X12? get as12OrNull => value is X12 ? value as X12 : null;

  /// Return the [value] if it has type [X13], otherwise null.
  X13? get as13OrNull => value is X13 ? value as X13 : null;

  /// Return the [value] if it has type [X14], otherwise null.
  X14? get as14OrNull => value is X14 ? value as X14 : null;

  /// Return the [value] if it has type [X15], otherwise null.
  X15? get as15OrNull => value is X15 ? value as X15 : null;

  /// Return the [value] if it has type [X16], otherwise null.
  X16? get as16OrNull => value is X16 ? value as X16 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return the [value] if it has type [X11], otherwise throw.
  X11 get as11 => value as X11;

  /// Return the [value] if it has type [X12], otherwise throw.
  X12 get as12 => value as X12;

  /// Return the [value] if it has type [X13], otherwise throw.
  X13 get as13 => value as X13;

  /// Return the [value] if it has type [X14], otherwise throw.
  X14 get as14 => value as X14;

  /// Return the [value] if it has type [X15], otherwise throw.
  X15 get as15 => value as X15;

  /// Return the [value] if it has type [X16], otherwise throw.
  X16 get as16 => value as X16;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  /// Return type iff the [value] has type [X11].
  bool get is11 => value is X11;

  /// Return type iff the [value] has type [X12].
  bool get is12 => value is X12;

  /// Return type iff the [value] has type [X13].
  bool get is13 => value is X13;

  /// Return type iff the [value] has type [X14].
  bool get is14 => value is X14;

  /// Return type iff the [value] has type [X15].
  bool get is15 => value is X15;

  /// Return type iff the [value] has type [X16].
  bool get is16 => value is X16;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
    R Function(X11) on11,
    R Function(X12) on12,
    R Function(X13) on13,
    R Function(X14) on14,
    R Function(X15) on15,
    R Function(X16) on16,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    if (v is X11) return on11(v);
    if (v is X12) return on12(v);
    if (v is X13) return on13(v);
    if (v is X14) return on14(v);
    if (v is X15) return on15(v);
    if (v is X16) return on16(v);
    throw InvalidUnionTypeException(
      "Union16<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(X11)? on11,
    R Function(X12)? on12,
    R Function(X13)? on13,
    R Function(X14)? on14,
    R Function(X15)? on15,
    R Function(X16)? on16,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (v is X11) return (on11 ?? onOther)?.call(v);
    if (v is X12) return (on12 ?? onOther)?.call(v);
    if (v is X13) return (on13 ?? onOther)?.call(v);
    if (v is X14) return (on14 ?? onOther)?.call(v);
    if (v is X15) return (on15 ?? onOther)?.call(v);
    if (v is X16) return (on16 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union16<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X17].
extension type Union17<
  X1,
  X2,
  X3,
  X4,
  X5,
  X6,
  X7,
  X8,
  X9,
  X10,
  X11,
  X12,
  X13,
  X14,
  X15,
  X16,
  X17
>(Object? value) {
  /// Create a [Union17] value from the 1th type argument.
  Union17.in1(X1 this.value);

  /// Create a [Union17] value from the 2th type argument.
  Union17.in2(X2 this.value);

  /// Create a [Union17] value from the 3th type argument.
  Union17.in3(X3 this.value);

  /// Create a [Union17] value from the 4th type argument.
  Union17.in4(X4 this.value);

  /// Create a [Union17] value from the 5th type argument.
  Union17.in5(X5 this.value);

  /// Create a [Union17] value from the 6th type argument.
  Union17.in6(X6 this.value);

  /// Create a [Union17] value from the 7th type argument.
  Union17.in7(X7 this.value);

  /// Create a [Union17] value from the 8th type argument.
  Union17.in8(X8 this.value);

  /// Create a [Union17] value from the 9th type argument.
  Union17.in9(X9 this.value);

  /// Create a [Union17] value from the 10th type argument.
  Union17.in10(X10 this.value);

  /// Create a [Union17] value from the 11th type argument.
  Union17.in11(X11 this.value);

  /// Create a [Union17] value from the 12th type argument.
  Union17.in12(X12 this.value);

  /// Create a [Union17] value from the 13th type argument.
  Union17.in13(X13 this.value);

  /// Create a [Union17] value from the 14th type argument.
  Union17.in14(X14 this.value);

  /// Create a [Union17] value from the 15th type argument.
  Union17.in15(X15 this.value);

  /// Create a [Union17] value from the 16th type argument.
  Union17.in16(X16 this.value);

  /// Create a [Union17] value from the 17th type argument.
  Union17.in17(X17 this.value);

  /// Return true iff this [Union17] has a type in [X1] .. [X17].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10 ||
      value is X11 ||
      value is X12 ||
      value is X13 ||
      value is X14 ||
      value is X15 ||
      value is X16 ||
      value is X17;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X11], otherwise null.
  X11? get as11OrNull => value is X11 ? value as X11 : null;

  /// Return the [value] if it has type [X12], otherwise null.
  X12? get as12OrNull => value is X12 ? value as X12 : null;

  /// Return the [value] if it has type [X13], otherwise null.
  X13? get as13OrNull => value is X13 ? value as X13 : null;

  /// Return the [value] if it has type [X14], otherwise null.
  X14? get as14OrNull => value is X14 ? value as X14 : null;

  /// Return the [value] if it has type [X15], otherwise null.
  X15? get as15OrNull => value is X15 ? value as X15 : null;

  /// Return the [value] if it has type [X16], otherwise null.
  X16? get as16OrNull => value is X16 ? value as X16 : null;

  /// Return the [value] if it has type [X17], otherwise null.
  X17? get as17OrNull => value is X17 ? value as X17 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return the [value] if it has type [X11], otherwise throw.
  X11 get as11 => value as X11;

  /// Return the [value] if it has type [X12], otherwise throw.
  X12 get as12 => value as X12;

  /// Return the [value] if it has type [X13], otherwise throw.
  X13 get as13 => value as X13;

  /// Return the [value] if it has type [X14], otherwise throw.
  X14 get as14 => value as X14;

  /// Return the [value] if it has type [X15], otherwise throw.
  X15 get as15 => value as X15;

  /// Return the [value] if it has type [X16], otherwise throw.
  X16 get as16 => value as X16;

  /// Return the [value] if it has type [X17], otherwise throw.
  X17 get as17 => value as X17;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  /// Return type iff the [value] has type [X11].
  bool get is11 => value is X11;

  /// Return type iff the [value] has type [X12].
  bool get is12 => value is X12;

  /// Return type iff the [value] has type [X13].
  bool get is13 => value is X13;

  /// Return type iff the [value] has type [X14].
  bool get is14 => value is X14;

  /// Return type iff the [value] has type [X15].
  bool get is15 => value is X15;

  /// Return type iff the [value] has type [X16].
  bool get is16 => value is X16;

  /// Return type iff the [value] has type [X17].
  bool get is17 => value is X17;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
    R Function(X11) on11,
    R Function(X12) on12,
    R Function(X13) on13,
    R Function(X14) on14,
    R Function(X15) on15,
    R Function(X16) on16,
    R Function(X17) on17,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    if (v is X11) return on11(v);
    if (v is X12) return on12(v);
    if (v is X13) return on13(v);
    if (v is X14) return on14(v);
    if (v is X15) return on15(v);
    if (v is X16) return on16(v);
    if (v is X17) return on17(v);
    throw InvalidUnionTypeException(
      "Union17<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(X11)? on11,
    R Function(X12)? on12,
    R Function(X13)? on13,
    R Function(X14)? on14,
    R Function(X15)? on15,
    R Function(X16)? on16,
    R Function(X17)? on17,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (v is X11) return (on11 ?? onOther)?.call(v);
    if (v is X12) return (on12 ?? onOther)?.call(v);
    if (v is X13) return (on13 ?? onOther)?.call(v);
    if (v is X14) return (on14 ?? onOther)?.call(v);
    if (v is X15) return (on15 ?? onOther)?.call(v);
    if (v is X16) return (on16 ?? onOther)?.call(v);
    if (v is X17) return (on17 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union17<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X18].
extension type Union18<
  X1,
  X2,
  X3,
  X4,
  X5,
  X6,
  X7,
  X8,
  X9,
  X10,
  X11,
  X12,
  X13,
  X14,
  X15,
  X16,
  X17,
  X18
>(Object? value) {
  /// Create a [Union18] value from the 1th type argument.
  Union18.in1(X1 this.value);

  /// Create a [Union18] value from the 2th type argument.
  Union18.in2(X2 this.value);

  /// Create a [Union18] value from the 3th type argument.
  Union18.in3(X3 this.value);

  /// Create a [Union18] value from the 4th type argument.
  Union18.in4(X4 this.value);

  /// Create a [Union18] value from the 5th type argument.
  Union18.in5(X5 this.value);

  /// Create a [Union18] value from the 6th type argument.
  Union18.in6(X6 this.value);

  /// Create a [Union18] value from the 7th type argument.
  Union18.in7(X7 this.value);

  /// Create a [Union18] value from the 8th type argument.
  Union18.in8(X8 this.value);

  /// Create a [Union18] value from the 9th type argument.
  Union18.in9(X9 this.value);

  /// Create a [Union18] value from the 10th type argument.
  Union18.in10(X10 this.value);

  /// Create a [Union18] value from the 11th type argument.
  Union18.in11(X11 this.value);

  /// Create a [Union18] value from the 12th type argument.
  Union18.in12(X12 this.value);

  /// Create a [Union18] value from the 13th type argument.
  Union18.in13(X13 this.value);

  /// Create a [Union18] value from the 14th type argument.
  Union18.in14(X14 this.value);

  /// Create a [Union18] value from the 15th type argument.
  Union18.in15(X15 this.value);

  /// Create a [Union18] value from the 16th type argument.
  Union18.in16(X16 this.value);

  /// Create a [Union18] value from the 17th type argument.
  Union18.in17(X17 this.value);

  /// Create a [Union18] value from the 18th type argument.
  Union18.in18(X18 this.value);

  /// Return true iff this [Union18] has a type in [X1] .. [X18].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10 ||
      value is X11 ||
      value is X12 ||
      value is X13 ||
      value is X14 ||
      value is X15 ||
      value is X16 ||
      value is X17 ||
      value is X18;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X11], otherwise null.
  X11? get as11OrNull => value is X11 ? value as X11 : null;

  /// Return the [value] if it has type [X12], otherwise null.
  X12? get as12OrNull => value is X12 ? value as X12 : null;

  /// Return the [value] if it has type [X13], otherwise null.
  X13? get as13OrNull => value is X13 ? value as X13 : null;

  /// Return the [value] if it has type [X14], otherwise null.
  X14? get as14OrNull => value is X14 ? value as X14 : null;

  /// Return the [value] if it has type [X15], otherwise null.
  X15? get as15OrNull => value is X15 ? value as X15 : null;

  /// Return the [value] if it has type [X16], otherwise null.
  X16? get as16OrNull => value is X16 ? value as X16 : null;

  /// Return the [value] if it has type [X17], otherwise null.
  X17? get as17OrNull => value is X17 ? value as X17 : null;

  /// Return the [value] if it has type [X18], otherwise null.
  X18? get as18OrNull => value is X18 ? value as X18 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return the [value] if it has type [X11], otherwise throw.
  X11 get as11 => value as X11;

  /// Return the [value] if it has type [X12], otherwise throw.
  X12 get as12 => value as X12;

  /// Return the [value] if it has type [X13], otherwise throw.
  X13 get as13 => value as X13;

  /// Return the [value] if it has type [X14], otherwise throw.
  X14 get as14 => value as X14;

  /// Return the [value] if it has type [X15], otherwise throw.
  X15 get as15 => value as X15;

  /// Return the [value] if it has type [X16], otherwise throw.
  X16 get as16 => value as X16;

  /// Return the [value] if it has type [X17], otherwise throw.
  X17 get as17 => value as X17;

  /// Return the [value] if it has type [X18], otherwise throw.
  X18 get as18 => value as X18;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  /// Return type iff the [value] has type [X11].
  bool get is11 => value is X11;

  /// Return type iff the [value] has type [X12].
  bool get is12 => value is X12;

  /// Return type iff the [value] has type [X13].
  bool get is13 => value is X13;

  /// Return type iff the [value] has type [X14].
  bool get is14 => value is X14;

  /// Return type iff the [value] has type [X15].
  bool get is15 => value is X15;

  /// Return type iff the [value] has type [X16].
  bool get is16 => value is X16;

  /// Return type iff the [value] has type [X17].
  bool get is17 => value is X17;

  /// Return type iff the [value] has type [X18].
  bool get is18 => value is X18;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
    R Function(X11) on11,
    R Function(X12) on12,
    R Function(X13) on13,
    R Function(X14) on14,
    R Function(X15) on15,
    R Function(X16) on16,
    R Function(X17) on17,
    R Function(X18) on18,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    if (v is X11) return on11(v);
    if (v is X12) return on12(v);
    if (v is X13) return on13(v);
    if (v is X14) return on14(v);
    if (v is X15) return on15(v);
    if (v is X16) return on16(v);
    if (v is X17) return on17(v);
    if (v is X18) return on18(v);
    throw InvalidUnionTypeException(
      "Union18<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(X11)? on11,
    R Function(X12)? on12,
    R Function(X13)? on13,
    R Function(X14)? on14,
    R Function(X15)? on15,
    R Function(X16)? on16,
    R Function(X17)? on17,
    R Function(X18)? on18,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (v is X11) return (on11 ?? onOther)?.call(v);
    if (v is X12) return (on12 ?? onOther)?.call(v);
    if (v is X13) return (on13 ?? onOther)?.call(v);
    if (v is X14) return (on14 ?? onOther)?.call(v);
    if (v is X15) return (on15 ?? onOther)?.call(v);
    if (v is X16) return (on16 ?? onOther)?.call(v);
    if (v is X17) return (on17 ?? onOther)?.call(v);
    if (v is X18) return (on18 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union18<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X19].
extension type Union19<
  X1,
  X2,
  X3,
  X4,
  X5,
  X6,
  X7,
  X8,
  X9,
  X10,
  X11,
  X12,
  X13,
  X14,
  X15,
  X16,
  X17,
  X18,
  X19
>(Object? value) {
  /// Create a [Union19] value from the 1th type argument.
  Union19.in1(X1 this.value);

  /// Create a [Union19] value from the 2th type argument.
  Union19.in2(X2 this.value);

  /// Create a [Union19] value from the 3th type argument.
  Union19.in3(X3 this.value);

  /// Create a [Union19] value from the 4th type argument.
  Union19.in4(X4 this.value);

  /// Create a [Union19] value from the 5th type argument.
  Union19.in5(X5 this.value);

  /// Create a [Union19] value from the 6th type argument.
  Union19.in6(X6 this.value);

  /// Create a [Union19] value from the 7th type argument.
  Union19.in7(X7 this.value);

  /// Create a [Union19] value from the 8th type argument.
  Union19.in8(X8 this.value);

  /// Create a [Union19] value from the 9th type argument.
  Union19.in9(X9 this.value);

  /// Create a [Union19] value from the 10th type argument.
  Union19.in10(X10 this.value);

  /// Create a [Union19] value from the 11th type argument.
  Union19.in11(X11 this.value);

  /// Create a [Union19] value from the 12th type argument.
  Union19.in12(X12 this.value);

  /// Create a [Union19] value from the 13th type argument.
  Union19.in13(X13 this.value);

  /// Create a [Union19] value from the 14th type argument.
  Union19.in14(X14 this.value);

  /// Create a [Union19] value from the 15th type argument.
  Union19.in15(X15 this.value);

  /// Create a [Union19] value from the 16th type argument.
  Union19.in16(X16 this.value);

  /// Create a [Union19] value from the 17th type argument.
  Union19.in17(X17 this.value);

  /// Create a [Union19] value from the 18th type argument.
  Union19.in18(X18 this.value);

  /// Create a [Union19] value from the 19th type argument.
  Union19.in19(X19 this.value);

  /// Return true iff this [Union19] has a type in [X1] .. [X19].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10 ||
      value is X11 ||
      value is X12 ||
      value is X13 ||
      value is X14 ||
      value is X15 ||
      value is X16 ||
      value is X17 ||
      value is X18 ||
      value is X19;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X11], otherwise null.
  X11? get as11OrNull => value is X11 ? value as X11 : null;

  /// Return the [value] if it has type [X12], otherwise null.
  X12? get as12OrNull => value is X12 ? value as X12 : null;

  /// Return the [value] if it has type [X13], otherwise null.
  X13? get as13OrNull => value is X13 ? value as X13 : null;

  /// Return the [value] if it has type [X14], otherwise null.
  X14? get as14OrNull => value is X14 ? value as X14 : null;

  /// Return the [value] if it has type [X15], otherwise null.
  X15? get as15OrNull => value is X15 ? value as X15 : null;

  /// Return the [value] if it has type [X16], otherwise null.
  X16? get as16OrNull => value is X16 ? value as X16 : null;

  /// Return the [value] if it has type [X17], otherwise null.
  X17? get as17OrNull => value is X17 ? value as X17 : null;

  /// Return the [value] if it has type [X18], otherwise null.
  X18? get as18OrNull => value is X18 ? value as X18 : null;

  /// Return the [value] if it has type [X19], otherwise null.
  X19? get as19OrNull => value is X19 ? value as X19 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return the [value] if it has type [X11], otherwise throw.
  X11 get as11 => value as X11;

  /// Return the [value] if it has type [X12], otherwise throw.
  X12 get as12 => value as X12;

  /// Return the [value] if it has type [X13], otherwise throw.
  X13 get as13 => value as X13;

  /// Return the [value] if it has type [X14], otherwise throw.
  X14 get as14 => value as X14;

  /// Return the [value] if it has type [X15], otherwise throw.
  X15 get as15 => value as X15;

  /// Return the [value] if it has type [X16], otherwise throw.
  X16 get as16 => value as X16;

  /// Return the [value] if it has type [X17], otherwise throw.
  X17 get as17 => value as X17;

  /// Return the [value] if it has type [X18], otherwise throw.
  X18 get as18 => value as X18;

  /// Return the [value] if it has type [X19], otherwise throw.
  X19 get as19 => value as X19;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  /// Return type iff the [value] has type [X11].
  bool get is11 => value is X11;

  /// Return type iff the [value] has type [X12].
  bool get is12 => value is X12;

  /// Return type iff the [value] has type [X13].
  bool get is13 => value is X13;

  /// Return type iff the [value] has type [X14].
  bool get is14 => value is X14;

  /// Return type iff the [value] has type [X15].
  bool get is15 => value is X15;

  /// Return type iff the [value] has type [X16].
  bool get is16 => value is X16;

  /// Return type iff the [value] has type [X17].
  bool get is17 => value is X17;

  /// Return type iff the [value] has type [X18].
  bool get is18 => value is X18;

  /// Return type iff the [value] has type [X19].
  bool get is19 => value is X19;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
    R Function(X11) on11,
    R Function(X12) on12,
    R Function(X13) on13,
    R Function(X14) on14,
    R Function(X15) on15,
    R Function(X16) on16,
    R Function(X17) on17,
    R Function(X18) on18,
    R Function(X19) on19,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    if (v is X11) return on11(v);
    if (v is X12) return on12(v);
    if (v is X13) return on13(v);
    if (v is X14) return on14(v);
    if (v is X15) return on15(v);
    if (v is X16) return on16(v);
    if (v is X17) return on17(v);
    if (v is X18) return on18(v);
    if (v is X19) return on19(v);
    throw InvalidUnionTypeException(
      "Union19<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18, $X19>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(X11)? on11,
    R Function(X12)? on12,
    R Function(X13)? on13,
    R Function(X14)? on14,
    R Function(X15)? on15,
    R Function(X16)? on16,
    R Function(X17)? on17,
    R Function(X18)? on18,
    R Function(X19)? on19,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (v is X11) return (on11 ?? onOther)?.call(v);
    if (v is X12) return (on12 ?? onOther)?.call(v);
    if (v is X13) return (on13 ?? onOther)?.call(v);
    if (v is X14) return (on14 ?? onOther)?.call(v);
    if (v is X15) return (on15 ?? onOther)?.call(v);
    if (v is X16) return (on16 ?? onOther)?.call(v);
    if (v is X17) return (on17 ?? onOther)?.call(v);
    if (v is X18) return (on18 ?? onOther)?.call(v);
    if (v is X19) return (on19 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union19<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18, $X19>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X20].
extension type Union20<
  X1,
  X2,
  X3,
  X4,
  X5,
  X6,
  X7,
  X8,
  X9,
  X10,
  X11,
  X12,
  X13,
  X14,
  X15,
  X16,
  X17,
  X18,
  X19,
  X20
>(Object? value) {
  /// Create a [Union20] value from the 1th type argument.
  Union20.in1(X1 this.value);

  /// Create a [Union20] value from the 2th type argument.
  Union20.in2(X2 this.value);

  /// Create a [Union20] value from the 3th type argument.
  Union20.in3(X3 this.value);

  /// Create a [Union20] value from the 4th type argument.
  Union20.in4(X4 this.value);

  /// Create a [Union20] value from the 5th type argument.
  Union20.in5(X5 this.value);

  /// Create a [Union20] value from the 6th type argument.
  Union20.in6(X6 this.value);

  /// Create a [Union20] value from the 7th type argument.
  Union20.in7(X7 this.value);

  /// Create a [Union20] value from the 8th type argument.
  Union20.in8(X8 this.value);

  /// Create a [Union20] value from the 9th type argument.
  Union20.in9(X9 this.value);

  /// Create a [Union20] value from the 10th type argument.
  Union20.in10(X10 this.value);

  /// Create a [Union20] value from the 11th type argument.
  Union20.in11(X11 this.value);

  /// Create a [Union20] value from the 12th type argument.
  Union20.in12(X12 this.value);

  /// Create a [Union20] value from the 13th type argument.
  Union20.in13(X13 this.value);

  /// Create a [Union20] value from the 14th type argument.
  Union20.in14(X14 this.value);

  /// Create a [Union20] value from the 15th type argument.
  Union20.in15(X15 this.value);

  /// Create a [Union20] value from the 16th type argument.
  Union20.in16(X16 this.value);

  /// Create a [Union20] value from the 17th type argument.
  Union20.in17(X17 this.value);

  /// Create a [Union20] value from the 18th type argument.
  Union20.in18(X18 this.value);

  /// Create a [Union20] value from the 19th type argument.
  Union20.in19(X19 this.value);

  /// Create a [Union20] value from the 20th type argument.
  Union20.in20(X20 this.value);

  /// Return true iff this [Union20] has a type in [X1] .. [X20].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10 ||
      value is X11 ||
      value is X12 ||
      value is X13 ||
      value is X14 ||
      value is X15 ||
      value is X16 ||
      value is X17 ||
      value is X18 ||
      value is X19 ||
      value is X20;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X11], otherwise null.
  X11? get as11OrNull => value is X11 ? value as X11 : null;

  /// Return the [value] if it has type [X12], otherwise null.
  X12? get as12OrNull => value is X12 ? value as X12 : null;

  /// Return the [value] if it has type [X13], otherwise null.
  X13? get as13OrNull => value is X13 ? value as X13 : null;

  /// Return the [value] if it has type [X14], otherwise null.
  X14? get as14OrNull => value is X14 ? value as X14 : null;

  /// Return the [value] if it has type [X15], otherwise null.
  X15? get as15OrNull => value is X15 ? value as X15 : null;

  /// Return the [value] if it has type [X16], otherwise null.
  X16? get as16OrNull => value is X16 ? value as X16 : null;

  /// Return the [value] if it has type [X17], otherwise null.
  X17? get as17OrNull => value is X17 ? value as X17 : null;

  /// Return the [value] if it has type [X18], otherwise null.
  X18? get as18OrNull => value is X18 ? value as X18 : null;

  /// Return the [value] if it has type [X19], otherwise null.
  X19? get as19OrNull => value is X19 ? value as X19 : null;

  /// Return the [value] if it has type [X20], otherwise null.
  X20? get as20OrNull => value is X20 ? value as X20 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return the [value] if it has type [X11], otherwise throw.
  X11 get as11 => value as X11;

  /// Return the [value] if it has type [X12], otherwise throw.
  X12 get as12 => value as X12;

  /// Return the [value] if it has type [X13], otherwise throw.
  X13 get as13 => value as X13;

  /// Return the [value] if it has type [X14], otherwise throw.
  X14 get as14 => value as X14;

  /// Return the [value] if it has type [X15], otherwise throw.
  X15 get as15 => value as X15;

  /// Return the [value] if it has type [X16], otherwise throw.
  X16 get as16 => value as X16;

  /// Return the [value] if it has type [X17], otherwise throw.
  X17 get as17 => value as X17;

  /// Return the [value] if it has type [X18], otherwise throw.
  X18 get as18 => value as X18;

  /// Return the [value] if it has type [X19], otherwise throw.
  X19 get as19 => value as X19;

  /// Return the [value] if it has type [X20], otherwise throw.
  X20 get as20 => value as X20;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  /// Return type iff the [value] has type [X11].
  bool get is11 => value is X11;

  /// Return type iff the [value] has type [X12].
  bool get is12 => value is X12;

  /// Return type iff the [value] has type [X13].
  bool get is13 => value is X13;

  /// Return type iff the [value] has type [X14].
  bool get is14 => value is X14;

  /// Return type iff the [value] has type [X15].
  bool get is15 => value is X15;

  /// Return type iff the [value] has type [X16].
  bool get is16 => value is X16;

  /// Return type iff the [value] has type [X17].
  bool get is17 => value is X17;

  /// Return type iff the [value] has type [X18].
  bool get is18 => value is X18;

  /// Return type iff the [value] has type [X19].
  bool get is19 => value is X19;

  /// Return type iff the [value] has type [X20].
  bool get is20 => value is X20;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
    R Function(X11) on11,
    R Function(X12) on12,
    R Function(X13) on13,
    R Function(X14) on14,
    R Function(X15) on15,
    R Function(X16) on16,
    R Function(X17) on17,
    R Function(X18) on18,
    R Function(X19) on19,
    R Function(X20) on20,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    if (v is X11) return on11(v);
    if (v is X12) return on12(v);
    if (v is X13) return on13(v);
    if (v is X14) return on14(v);
    if (v is X15) return on15(v);
    if (v is X16) return on16(v);
    if (v is X17) return on17(v);
    if (v is X18) return on18(v);
    if (v is X19) return on19(v);
    if (v is X20) return on20(v);
    throw InvalidUnionTypeException(
      "Union20<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18, $X19, $X20>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(X11)? on11,
    R Function(X12)? on12,
    R Function(X13)? on13,
    R Function(X14)? on14,
    R Function(X15)? on15,
    R Function(X16)? on16,
    R Function(X17)? on17,
    R Function(X18)? on18,
    R Function(X19)? on19,
    R Function(X20)? on20,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (v is X11) return (on11 ?? onOther)?.call(v);
    if (v is X12) return (on12 ?? onOther)?.call(v);
    if (v is X13) return (on13 ?? onOther)?.call(v);
    if (v is X14) return (on14 ?? onOther)?.call(v);
    if (v is X15) return (on15 ?? onOther)?.call(v);
    if (v is X16) return (on16 ?? onOther)?.call(v);
    if (v is X17) return (on17 ?? onOther)?.call(v);
    if (v is X18) return (on18 ?? onOther)?.call(v);
    if (v is X19) return (on19 ?? onOther)?.call(v);
    if (v is X20) return (on20 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union20<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18, $X19, $X20>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X21].
extension type Union21<
  X1,
  X2,
  X3,
  X4,
  X5,
  X6,
  X7,
  X8,
  X9,
  X10,
  X11,
  X12,
  X13,
  X14,
  X15,
  X16,
  X17,
  X18,
  X19,
  X20,
  X21
>(Object? value) {
  /// Create a [Union21] value from the 1th type argument.
  Union21.in1(X1 this.value);

  /// Create a [Union21] value from the 2th type argument.
  Union21.in2(X2 this.value);

  /// Create a [Union21] value from the 3th type argument.
  Union21.in3(X3 this.value);

  /// Create a [Union21] value from the 4th type argument.
  Union21.in4(X4 this.value);

  /// Create a [Union21] value from the 5th type argument.
  Union21.in5(X5 this.value);

  /// Create a [Union21] value from the 6th type argument.
  Union21.in6(X6 this.value);

  /// Create a [Union21] value from the 7th type argument.
  Union21.in7(X7 this.value);

  /// Create a [Union21] value from the 8th type argument.
  Union21.in8(X8 this.value);

  /// Create a [Union21] value from the 9th type argument.
  Union21.in9(X9 this.value);

  /// Create a [Union21] value from the 10th type argument.
  Union21.in10(X10 this.value);

  /// Create a [Union21] value from the 11th type argument.
  Union21.in11(X11 this.value);

  /// Create a [Union21] value from the 12th type argument.
  Union21.in12(X12 this.value);

  /// Create a [Union21] value from the 13th type argument.
  Union21.in13(X13 this.value);

  /// Create a [Union21] value from the 14th type argument.
  Union21.in14(X14 this.value);

  /// Create a [Union21] value from the 15th type argument.
  Union21.in15(X15 this.value);

  /// Create a [Union21] value from the 16th type argument.
  Union21.in16(X16 this.value);

  /// Create a [Union21] value from the 17th type argument.
  Union21.in17(X17 this.value);

  /// Create a [Union21] value from the 18th type argument.
  Union21.in18(X18 this.value);

  /// Create a [Union21] value from the 19th type argument.
  Union21.in19(X19 this.value);

  /// Create a [Union21] value from the 20th type argument.
  Union21.in20(X20 this.value);

  /// Create a [Union21] value from the 21th type argument.
  Union21.in21(X21 this.value);

  /// Return true iff this [Union21] has a type in [X1] .. [X21].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10 ||
      value is X11 ||
      value is X12 ||
      value is X13 ||
      value is X14 ||
      value is X15 ||
      value is X16 ||
      value is X17 ||
      value is X18 ||
      value is X19 ||
      value is X20 ||
      value is X21;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X11], otherwise null.
  X11? get as11OrNull => value is X11 ? value as X11 : null;

  /// Return the [value] if it has type [X12], otherwise null.
  X12? get as12OrNull => value is X12 ? value as X12 : null;

  /// Return the [value] if it has type [X13], otherwise null.
  X13? get as13OrNull => value is X13 ? value as X13 : null;

  /// Return the [value] if it has type [X14], otherwise null.
  X14? get as14OrNull => value is X14 ? value as X14 : null;

  /// Return the [value] if it has type [X15], otherwise null.
  X15? get as15OrNull => value is X15 ? value as X15 : null;

  /// Return the [value] if it has type [X16], otherwise null.
  X16? get as16OrNull => value is X16 ? value as X16 : null;

  /// Return the [value] if it has type [X17], otherwise null.
  X17? get as17OrNull => value is X17 ? value as X17 : null;

  /// Return the [value] if it has type [X18], otherwise null.
  X18? get as18OrNull => value is X18 ? value as X18 : null;

  /// Return the [value] if it has type [X19], otherwise null.
  X19? get as19OrNull => value is X19 ? value as X19 : null;

  /// Return the [value] if it has type [X20], otherwise null.
  X20? get as20OrNull => value is X20 ? value as X20 : null;

  /// Return the [value] if it has type [X21], otherwise null.
  X21? get as21OrNull => value is X21 ? value as X21 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return the [value] if it has type [X11], otherwise throw.
  X11 get as11 => value as X11;

  /// Return the [value] if it has type [X12], otherwise throw.
  X12 get as12 => value as X12;

  /// Return the [value] if it has type [X13], otherwise throw.
  X13 get as13 => value as X13;

  /// Return the [value] if it has type [X14], otherwise throw.
  X14 get as14 => value as X14;

  /// Return the [value] if it has type [X15], otherwise throw.
  X15 get as15 => value as X15;

  /// Return the [value] if it has type [X16], otherwise throw.
  X16 get as16 => value as X16;

  /// Return the [value] if it has type [X17], otherwise throw.
  X17 get as17 => value as X17;

  /// Return the [value] if it has type [X18], otherwise throw.
  X18 get as18 => value as X18;

  /// Return the [value] if it has type [X19], otherwise throw.
  X19 get as19 => value as X19;

  /// Return the [value] if it has type [X20], otherwise throw.
  X20 get as20 => value as X20;

  /// Return the [value] if it has type [X21], otherwise throw.
  X21 get as21 => value as X21;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  /// Return type iff the [value] has type [X11].
  bool get is11 => value is X11;

  /// Return type iff the [value] has type [X12].
  bool get is12 => value is X12;

  /// Return type iff the [value] has type [X13].
  bool get is13 => value is X13;

  /// Return type iff the [value] has type [X14].
  bool get is14 => value is X14;

  /// Return type iff the [value] has type [X15].
  bool get is15 => value is X15;

  /// Return type iff the [value] has type [X16].
  bool get is16 => value is X16;

  /// Return type iff the [value] has type [X17].
  bool get is17 => value is X17;

  /// Return type iff the [value] has type [X18].
  bool get is18 => value is X18;

  /// Return type iff the [value] has type [X19].
  bool get is19 => value is X19;

  /// Return type iff the [value] has type [X20].
  bool get is20 => value is X20;

  /// Return type iff the [value] has type [X21].
  bool get is21 => value is X21;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
    R Function(X11) on11,
    R Function(X12) on12,
    R Function(X13) on13,
    R Function(X14) on14,
    R Function(X15) on15,
    R Function(X16) on16,
    R Function(X17) on17,
    R Function(X18) on18,
    R Function(X19) on19,
    R Function(X20) on20,
    R Function(X21) on21,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    if (v is X11) return on11(v);
    if (v is X12) return on12(v);
    if (v is X13) return on13(v);
    if (v is X14) return on14(v);
    if (v is X15) return on15(v);
    if (v is X16) return on16(v);
    if (v is X17) return on17(v);
    if (v is X18) return on18(v);
    if (v is X19) return on19(v);
    if (v is X20) return on20(v);
    if (v is X21) return on21(v);
    throw InvalidUnionTypeException(
      "Union21<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18, $X19, $X20, $X21>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(X11)? on11,
    R Function(X12)? on12,
    R Function(X13)? on13,
    R Function(X14)? on14,
    R Function(X15)? on15,
    R Function(X16)? on16,
    R Function(X17)? on17,
    R Function(X18)? on18,
    R Function(X19)? on19,
    R Function(X20)? on20,
    R Function(X21)? on21,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (v is X11) return (on11 ?? onOther)?.call(v);
    if (v is X12) return (on12 ?? onOther)?.call(v);
    if (v is X13) return (on13 ?? onOther)?.call(v);
    if (v is X14) return (on14 ?? onOther)?.call(v);
    if (v is X15) return (on15 ?? onOther)?.call(v);
    if (v is X16) return (on16 ?? onOther)?.call(v);
    if (v is X17) return (on17 ?? onOther)?.call(v);
    if (v is X18) return (on18 ?? onOther)?.call(v);
    if (v is X19) return (on19 ?? onOther)?.call(v);
    if (v is X20) return (on20 ?? onOther)?.call(v);
    if (v is X21) return (on21 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union21<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18, $X19, $X20, $X21>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X22].
extension type Union22<
  X1,
  X2,
  X3,
  X4,
  X5,
  X6,
  X7,
  X8,
  X9,
  X10,
  X11,
  X12,
  X13,
  X14,
  X15,
  X16,
  X17,
  X18,
  X19,
  X20,
  X21,
  X22
>(Object? value) {
  /// Create a [Union22] value from the 1th type argument.
  Union22.in1(X1 this.value);

  /// Create a [Union22] value from the 2th type argument.
  Union22.in2(X2 this.value);

  /// Create a [Union22] value from the 3th type argument.
  Union22.in3(X3 this.value);

  /// Create a [Union22] value from the 4th type argument.
  Union22.in4(X4 this.value);

  /// Create a [Union22] value from the 5th type argument.
  Union22.in5(X5 this.value);

  /// Create a [Union22] value from the 6th type argument.
  Union22.in6(X6 this.value);

  /// Create a [Union22] value from the 7th type argument.
  Union22.in7(X7 this.value);

  /// Create a [Union22] value from the 8th type argument.
  Union22.in8(X8 this.value);

  /// Create a [Union22] value from the 9th type argument.
  Union22.in9(X9 this.value);

  /// Create a [Union22] value from the 10th type argument.
  Union22.in10(X10 this.value);

  /// Create a [Union22] value from the 11th type argument.
  Union22.in11(X11 this.value);

  /// Create a [Union22] value from the 12th type argument.
  Union22.in12(X12 this.value);

  /// Create a [Union22] value from the 13th type argument.
  Union22.in13(X13 this.value);

  /// Create a [Union22] value from the 14th type argument.
  Union22.in14(X14 this.value);

  /// Create a [Union22] value from the 15th type argument.
  Union22.in15(X15 this.value);

  /// Create a [Union22] value from the 16th type argument.
  Union22.in16(X16 this.value);

  /// Create a [Union22] value from the 17th type argument.
  Union22.in17(X17 this.value);

  /// Create a [Union22] value from the 18th type argument.
  Union22.in18(X18 this.value);

  /// Create a [Union22] value from the 19th type argument.
  Union22.in19(X19 this.value);

  /// Create a [Union22] value from the 20th type argument.
  Union22.in20(X20 this.value);

  /// Create a [Union22] value from the 21th type argument.
  Union22.in21(X21 this.value);

  /// Create a [Union22] value from the 22th type argument.
  Union22.in22(X22 this.value);

  /// Return true iff this [Union22] has a type in [X1] .. [X22].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10 ||
      value is X11 ||
      value is X12 ||
      value is X13 ||
      value is X14 ||
      value is X15 ||
      value is X16 ||
      value is X17 ||
      value is X18 ||
      value is X19 ||
      value is X20 ||
      value is X21 ||
      value is X22;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X11], otherwise null.
  X11? get as11OrNull => value is X11 ? value as X11 : null;

  /// Return the [value] if it has type [X12], otherwise null.
  X12? get as12OrNull => value is X12 ? value as X12 : null;

  /// Return the [value] if it has type [X13], otherwise null.
  X13? get as13OrNull => value is X13 ? value as X13 : null;

  /// Return the [value] if it has type [X14], otherwise null.
  X14? get as14OrNull => value is X14 ? value as X14 : null;

  /// Return the [value] if it has type [X15], otherwise null.
  X15? get as15OrNull => value is X15 ? value as X15 : null;

  /// Return the [value] if it has type [X16], otherwise null.
  X16? get as16OrNull => value is X16 ? value as X16 : null;

  /// Return the [value] if it has type [X17], otherwise null.
  X17? get as17OrNull => value is X17 ? value as X17 : null;

  /// Return the [value] if it has type [X18], otherwise null.
  X18? get as18OrNull => value is X18 ? value as X18 : null;

  /// Return the [value] if it has type [X19], otherwise null.
  X19? get as19OrNull => value is X19 ? value as X19 : null;

  /// Return the [value] if it has type [X20], otherwise null.
  X20? get as20OrNull => value is X20 ? value as X20 : null;

  /// Return the [value] if it has type [X21], otherwise null.
  X21? get as21OrNull => value is X21 ? value as X21 : null;

  /// Return the [value] if it has type [X22], otherwise null.
  X22? get as22OrNull => value is X22 ? value as X22 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return the [value] if it has type [X11], otherwise throw.
  X11 get as11 => value as X11;

  /// Return the [value] if it has type [X12], otherwise throw.
  X12 get as12 => value as X12;

  /// Return the [value] if it has type [X13], otherwise throw.
  X13 get as13 => value as X13;

  /// Return the [value] if it has type [X14], otherwise throw.
  X14 get as14 => value as X14;

  /// Return the [value] if it has type [X15], otherwise throw.
  X15 get as15 => value as X15;

  /// Return the [value] if it has type [X16], otherwise throw.
  X16 get as16 => value as X16;

  /// Return the [value] if it has type [X17], otherwise throw.
  X17 get as17 => value as X17;

  /// Return the [value] if it has type [X18], otherwise throw.
  X18 get as18 => value as X18;

  /// Return the [value] if it has type [X19], otherwise throw.
  X19 get as19 => value as X19;

  /// Return the [value] if it has type [X20], otherwise throw.
  X20 get as20 => value as X20;

  /// Return the [value] if it has type [X21], otherwise throw.
  X21 get as21 => value as X21;

  /// Return the [value] if it has type [X22], otherwise throw.
  X22 get as22 => value as X22;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  /// Return type iff the [value] has type [X11].
  bool get is11 => value is X11;

  /// Return type iff the [value] has type [X12].
  bool get is12 => value is X12;

  /// Return type iff the [value] has type [X13].
  bool get is13 => value is X13;

  /// Return type iff the [value] has type [X14].
  bool get is14 => value is X14;

  /// Return type iff the [value] has type [X15].
  bool get is15 => value is X15;

  /// Return type iff the [value] has type [X16].
  bool get is16 => value is X16;

  /// Return type iff the [value] has type [X17].
  bool get is17 => value is X17;

  /// Return type iff the [value] has type [X18].
  bool get is18 => value is X18;

  /// Return type iff the [value] has type [X19].
  bool get is19 => value is X19;

  /// Return type iff the [value] has type [X20].
  bool get is20 => value is X20;

  /// Return type iff the [value] has type [X21].
  bool get is21 => value is X21;

  /// Return type iff the [value] has type [X22].
  bool get is22 => value is X22;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
    R Function(X11) on11,
    R Function(X12) on12,
    R Function(X13) on13,
    R Function(X14) on14,
    R Function(X15) on15,
    R Function(X16) on16,
    R Function(X17) on17,
    R Function(X18) on18,
    R Function(X19) on19,
    R Function(X20) on20,
    R Function(X21) on21,
    R Function(X22) on22,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    if (v is X11) return on11(v);
    if (v is X12) return on12(v);
    if (v is X13) return on13(v);
    if (v is X14) return on14(v);
    if (v is X15) return on15(v);
    if (v is X16) return on16(v);
    if (v is X17) return on17(v);
    if (v is X18) return on18(v);
    if (v is X19) return on19(v);
    if (v is X20) return on20(v);
    if (v is X21) return on21(v);
    if (v is X22) return on22(v);
    throw InvalidUnionTypeException(
      "Union22<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18, $X19, $X20, $X21, $X22>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(X11)? on11,
    R Function(X12)? on12,
    R Function(X13)? on13,
    R Function(X14)? on14,
    R Function(X15)? on15,
    R Function(X16)? on16,
    R Function(X17)? on17,
    R Function(X18)? on18,
    R Function(X19)? on19,
    R Function(X20)? on20,
    R Function(X21)? on21,
    R Function(X22)? on22,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (v is X11) return (on11 ?? onOther)?.call(v);
    if (v is X12) return (on12 ?? onOther)?.call(v);
    if (v is X13) return (on13 ?? onOther)?.call(v);
    if (v is X14) return (on14 ?? onOther)?.call(v);
    if (v is X15) return (on15 ?? onOther)?.call(v);
    if (v is X16) return (on16 ?? onOther)?.call(v);
    if (v is X17) return (on17 ?? onOther)?.call(v);
    if (v is X18) return (on18 ?? onOther)?.call(v);
    if (v is X19) return (on19 ?? onOther)?.call(v);
    if (v is X20) return (on20 ?? onOther)?.call(v);
    if (v is X21) return (on21 ?? onOther)?.call(v);
    if (v is X22) return (on22 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union22<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18, $X19, $X20, $X21, $X22>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X23].
extension type Union23<
  X1,
  X2,
  X3,
  X4,
  X5,
  X6,
  X7,
  X8,
  X9,
  X10,
  X11,
  X12,
  X13,
  X14,
  X15,
  X16,
  X17,
  X18,
  X19,
  X20,
  X21,
  X22,
  X23
>(Object? value) {
  /// Create a [Union23] value from the 1th type argument.
  Union23.in1(X1 this.value);

  /// Create a [Union23] value from the 2th type argument.
  Union23.in2(X2 this.value);

  /// Create a [Union23] value from the 3th type argument.
  Union23.in3(X3 this.value);

  /// Create a [Union23] value from the 4th type argument.
  Union23.in4(X4 this.value);

  /// Create a [Union23] value from the 5th type argument.
  Union23.in5(X5 this.value);

  /// Create a [Union23] value from the 6th type argument.
  Union23.in6(X6 this.value);

  /// Create a [Union23] value from the 7th type argument.
  Union23.in7(X7 this.value);

  /// Create a [Union23] value from the 8th type argument.
  Union23.in8(X8 this.value);

  /// Create a [Union23] value from the 9th type argument.
  Union23.in9(X9 this.value);

  /// Create a [Union23] value from the 10th type argument.
  Union23.in10(X10 this.value);

  /// Create a [Union23] value from the 11th type argument.
  Union23.in11(X11 this.value);

  /// Create a [Union23] value from the 12th type argument.
  Union23.in12(X12 this.value);

  /// Create a [Union23] value from the 13th type argument.
  Union23.in13(X13 this.value);

  /// Create a [Union23] value from the 14th type argument.
  Union23.in14(X14 this.value);

  /// Create a [Union23] value from the 15th type argument.
  Union23.in15(X15 this.value);

  /// Create a [Union23] value from the 16th type argument.
  Union23.in16(X16 this.value);

  /// Create a [Union23] value from the 17th type argument.
  Union23.in17(X17 this.value);

  /// Create a [Union23] value from the 18th type argument.
  Union23.in18(X18 this.value);

  /// Create a [Union23] value from the 19th type argument.
  Union23.in19(X19 this.value);

  /// Create a [Union23] value from the 20th type argument.
  Union23.in20(X20 this.value);

  /// Create a [Union23] value from the 21th type argument.
  Union23.in21(X21 this.value);

  /// Create a [Union23] value from the 22th type argument.
  Union23.in22(X22 this.value);

  /// Create a [Union23] value from the 23th type argument.
  Union23.in23(X23 this.value);

  /// Return true iff this [Union23] has a type in [X1] .. [X23].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10 ||
      value is X11 ||
      value is X12 ||
      value is X13 ||
      value is X14 ||
      value is X15 ||
      value is X16 ||
      value is X17 ||
      value is X18 ||
      value is X19 ||
      value is X20 ||
      value is X21 ||
      value is X22 ||
      value is X23;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X11], otherwise null.
  X11? get as11OrNull => value is X11 ? value as X11 : null;

  /// Return the [value] if it has type [X12], otherwise null.
  X12? get as12OrNull => value is X12 ? value as X12 : null;

  /// Return the [value] if it has type [X13], otherwise null.
  X13? get as13OrNull => value is X13 ? value as X13 : null;

  /// Return the [value] if it has type [X14], otherwise null.
  X14? get as14OrNull => value is X14 ? value as X14 : null;

  /// Return the [value] if it has type [X15], otherwise null.
  X15? get as15OrNull => value is X15 ? value as X15 : null;

  /// Return the [value] if it has type [X16], otherwise null.
  X16? get as16OrNull => value is X16 ? value as X16 : null;

  /// Return the [value] if it has type [X17], otherwise null.
  X17? get as17OrNull => value is X17 ? value as X17 : null;

  /// Return the [value] if it has type [X18], otherwise null.
  X18? get as18OrNull => value is X18 ? value as X18 : null;

  /// Return the [value] if it has type [X19], otherwise null.
  X19? get as19OrNull => value is X19 ? value as X19 : null;

  /// Return the [value] if it has type [X20], otherwise null.
  X20? get as20OrNull => value is X20 ? value as X20 : null;

  /// Return the [value] if it has type [X21], otherwise null.
  X21? get as21OrNull => value is X21 ? value as X21 : null;

  /// Return the [value] if it has type [X22], otherwise null.
  X22? get as22OrNull => value is X22 ? value as X22 : null;

  /// Return the [value] if it has type [X23], otherwise null.
  X23? get as23OrNull => value is X23 ? value as X23 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return the [value] if it has type [X11], otherwise throw.
  X11 get as11 => value as X11;

  /// Return the [value] if it has type [X12], otherwise throw.
  X12 get as12 => value as X12;

  /// Return the [value] if it has type [X13], otherwise throw.
  X13 get as13 => value as X13;

  /// Return the [value] if it has type [X14], otherwise throw.
  X14 get as14 => value as X14;

  /// Return the [value] if it has type [X15], otherwise throw.
  X15 get as15 => value as X15;

  /// Return the [value] if it has type [X16], otherwise throw.
  X16 get as16 => value as X16;

  /// Return the [value] if it has type [X17], otherwise throw.
  X17 get as17 => value as X17;

  /// Return the [value] if it has type [X18], otherwise throw.
  X18 get as18 => value as X18;

  /// Return the [value] if it has type [X19], otherwise throw.
  X19 get as19 => value as X19;

  /// Return the [value] if it has type [X20], otherwise throw.
  X20 get as20 => value as X20;

  /// Return the [value] if it has type [X21], otherwise throw.
  X21 get as21 => value as X21;

  /// Return the [value] if it has type [X22], otherwise throw.
  X22 get as22 => value as X22;

  /// Return the [value] if it has type [X23], otherwise throw.
  X23 get as23 => value as X23;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  /// Return type iff the [value] has type [X11].
  bool get is11 => value is X11;

  /// Return type iff the [value] has type [X12].
  bool get is12 => value is X12;

  /// Return type iff the [value] has type [X13].
  bool get is13 => value is X13;

  /// Return type iff the [value] has type [X14].
  bool get is14 => value is X14;

  /// Return type iff the [value] has type [X15].
  bool get is15 => value is X15;

  /// Return type iff the [value] has type [X16].
  bool get is16 => value is X16;

  /// Return type iff the [value] has type [X17].
  bool get is17 => value is X17;

  /// Return type iff the [value] has type [X18].
  bool get is18 => value is X18;

  /// Return type iff the [value] has type [X19].
  bool get is19 => value is X19;

  /// Return type iff the [value] has type [X20].
  bool get is20 => value is X20;

  /// Return type iff the [value] has type [X21].
  bool get is21 => value is X21;

  /// Return type iff the [value] has type [X22].
  bool get is22 => value is X22;

  /// Return type iff the [value] has type [X23].
  bool get is23 => value is X23;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
    R Function(X11) on11,
    R Function(X12) on12,
    R Function(X13) on13,
    R Function(X14) on14,
    R Function(X15) on15,
    R Function(X16) on16,
    R Function(X17) on17,
    R Function(X18) on18,
    R Function(X19) on19,
    R Function(X20) on20,
    R Function(X21) on21,
    R Function(X22) on22,
    R Function(X23) on23,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    if (v is X11) return on11(v);
    if (v is X12) return on12(v);
    if (v is X13) return on13(v);
    if (v is X14) return on14(v);
    if (v is X15) return on15(v);
    if (v is X16) return on16(v);
    if (v is X17) return on17(v);
    if (v is X18) return on18(v);
    if (v is X19) return on19(v);
    if (v is X20) return on20(v);
    if (v is X21) return on21(v);
    if (v is X22) return on22(v);
    if (v is X23) return on23(v);
    throw InvalidUnionTypeException(
      "Union23<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18, $X19, $X20, $X21, $X22, $X23>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(X11)? on11,
    R Function(X12)? on12,
    R Function(X13)? on13,
    R Function(X14)? on14,
    R Function(X15)? on15,
    R Function(X16)? on16,
    R Function(X17)? on17,
    R Function(X18)? on18,
    R Function(X19)? on19,
    R Function(X20)? on20,
    R Function(X21)? on21,
    R Function(X22)? on22,
    R Function(X23)? on23,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (v is X11) return (on11 ?? onOther)?.call(v);
    if (v is X12) return (on12 ?? onOther)?.call(v);
    if (v is X13) return (on13 ?? onOther)?.call(v);
    if (v is X14) return (on14 ?? onOther)?.call(v);
    if (v is X15) return (on15 ?? onOther)?.call(v);
    if (v is X16) return (on16 ?? onOther)?.call(v);
    if (v is X17) return (on17 ?? onOther)?.call(v);
    if (v is X18) return (on18 ?? onOther)?.call(v);
    if (v is X19) return (on19 ?? onOther)?.call(v);
    if (v is X20) return (on20 ?? onOther)?.call(v);
    if (v is X21) return (on21 ?? onOther)?.call(v);
    if (v is X22) return (on22 ?? onOther)?.call(v);
    if (v is X23) return (on23 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union23<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18, $X19, $X20, $X21, $X22, $X23>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X24].
extension type Union24<
  X1,
  X2,
  X3,
  X4,
  X5,
  X6,
  X7,
  X8,
  X9,
  X10,
  X11,
  X12,
  X13,
  X14,
  X15,
  X16,
  X17,
  X18,
  X19,
  X20,
  X21,
  X22,
  X23,
  X24
>(Object? value) {
  /// Create a [Union24] value from the 1th type argument.
  Union24.in1(X1 this.value);

  /// Create a [Union24] value from the 2th type argument.
  Union24.in2(X2 this.value);

  /// Create a [Union24] value from the 3th type argument.
  Union24.in3(X3 this.value);

  /// Create a [Union24] value from the 4th type argument.
  Union24.in4(X4 this.value);

  /// Create a [Union24] value from the 5th type argument.
  Union24.in5(X5 this.value);

  /// Create a [Union24] value from the 6th type argument.
  Union24.in6(X6 this.value);

  /// Create a [Union24] value from the 7th type argument.
  Union24.in7(X7 this.value);

  /// Create a [Union24] value from the 8th type argument.
  Union24.in8(X8 this.value);

  /// Create a [Union24] value from the 9th type argument.
  Union24.in9(X9 this.value);

  /// Create a [Union24] value from the 10th type argument.
  Union24.in10(X10 this.value);

  /// Create a [Union24] value from the 11th type argument.
  Union24.in11(X11 this.value);

  /// Create a [Union24] value from the 12th type argument.
  Union24.in12(X12 this.value);

  /// Create a [Union24] value from the 13th type argument.
  Union24.in13(X13 this.value);

  /// Create a [Union24] value from the 14th type argument.
  Union24.in14(X14 this.value);

  /// Create a [Union24] value from the 15th type argument.
  Union24.in15(X15 this.value);

  /// Create a [Union24] value from the 16th type argument.
  Union24.in16(X16 this.value);

  /// Create a [Union24] value from the 17th type argument.
  Union24.in17(X17 this.value);

  /// Create a [Union24] value from the 18th type argument.
  Union24.in18(X18 this.value);

  /// Create a [Union24] value from the 19th type argument.
  Union24.in19(X19 this.value);

  /// Create a [Union24] value from the 20th type argument.
  Union24.in20(X20 this.value);

  /// Create a [Union24] value from the 21th type argument.
  Union24.in21(X21 this.value);

  /// Create a [Union24] value from the 22th type argument.
  Union24.in22(X22 this.value);

  /// Create a [Union24] value from the 23th type argument.
  Union24.in23(X23 this.value);

  /// Create a [Union24] value from the 24th type argument.
  Union24.in24(X24 this.value);

  /// Return true iff this [Union24] has a type in [X1] .. [X24].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10 ||
      value is X11 ||
      value is X12 ||
      value is X13 ||
      value is X14 ||
      value is X15 ||
      value is X16 ||
      value is X17 ||
      value is X18 ||
      value is X19 ||
      value is X20 ||
      value is X21 ||
      value is X22 ||
      value is X23 ||
      value is X24;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X11], otherwise null.
  X11? get as11OrNull => value is X11 ? value as X11 : null;

  /// Return the [value] if it has type [X12], otherwise null.
  X12? get as12OrNull => value is X12 ? value as X12 : null;

  /// Return the [value] if it has type [X13], otherwise null.
  X13? get as13OrNull => value is X13 ? value as X13 : null;

  /// Return the [value] if it has type [X14], otherwise null.
  X14? get as14OrNull => value is X14 ? value as X14 : null;

  /// Return the [value] if it has type [X15], otherwise null.
  X15? get as15OrNull => value is X15 ? value as X15 : null;

  /// Return the [value] if it has type [X16], otherwise null.
  X16? get as16OrNull => value is X16 ? value as X16 : null;

  /// Return the [value] if it has type [X17], otherwise null.
  X17? get as17OrNull => value is X17 ? value as X17 : null;

  /// Return the [value] if it has type [X18], otherwise null.
  X18? get as18OrNull => value is X18 ? value as X18 : null;

  /// Return the [value] if it has type [X19], otherwise null.
  X19? get as19OrNull => value is X19 ? value as X19 : null;

  /// Return the [value] if it has type [X20], otherwise null.
  X20? get as20OrNull => value is X20 ? value as X20 : null;

  /// Return the [value] if it has type [X21], otherwise null.
  X21? get as21OrNull => value is X21 ? value as X21 : null;

  /// Return the [value] if it has type [X22], otherwise null.
  X22? get as22OrNull => value is X22 ? value as X22 : null;

  /// Return the [value] if it has type [X23], otherwise null.
  X23? get as23OrNull => value is X23 ? value as X23 : null;

  /// Return the [value] if it has type [X24], otherwise null.
  X24? get as24OrNull => value is X24 ? value as X24 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return the [value] if it has type [X11], otherwise throw.
  X11 get as11 => value as X11;

  /// Return the [value] if it has type [X12], otherwise throw.
  X12 get as12 => value as X12;

  /// Return the [value] if it has type [X13], otherwise throw.
  X13 get as13 => value as X13;

  /// Return the [value] if it has type [X14], otherwise throw.
  X14 get as14 => value as X14;

  /// Return the [value] if it has type [X15], otherwise throw.
  X15 get as15 => value as X15;

  /// Return the [value] if it has type [X16], otherwise throw.
  X16 get as16 => value as X16;

  /// Return the [value] if it has type [X17], otherwise throw.
  X17 get as17 => value as X17;

  /// Return the [value] if it has type [X18], otherwise throw.
  X18 get as18 => value as X18;

  /// Return the [value] if it has type [X19], otherwise throw.
  X19 get as19 => value as X19;

  /// Return the [value] if it has type [X20], otherwise throw.
  X20 get as20 => value as X20;

  /// Return the [value] if it has type [X21], otherwise throw.
  X21 get as21 => value as X21;

  /// Return the [value] if it has type [X22], otherwise throw.
  X22 get as22 => value as X22;

  /// Return the [value] if it has type [X23], otherwise throw.
  X23 get as23 => value as X23;

  /// Return the [value] if it has type [X24], otherwise throw.
  X24 get as24 => value as X24;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  /// Return type iff the [value] has type [X11].
  bool get is11 => value is X11;

  /// Return type iff the [value] has type [X12].
  bool get is12 => value is X12;

  /// Return type iff the [value] has type [X13].
  bool get is13 => value is X13;

  /// Return type iff the [value] has type [X14].
  bool get is14 => value is X14;

  /// Return type iff the [value] has type [X15].
  bool get is15 => value is X15;

  /// Return type iff the [value] has type [X16].
  bool get is16 => value is X16;

  /// Return type iff the [value] has type [X17].
  bool get is17 => value is X17;

  /// Return type iff the [value] has type [X18].
  bool get is18 => value is X18;

  /// Return type iff the [value] has type [X19].
  bool get is19 => value is X19;

  /// Return type iff the [value] has type [X20].
  bool get is20 => value is X20;

  /// Return type iff the [value] has type [X21].
  bool get is21 => value is X21;

  /// Return type iff the [value] has type [X22].
  bool get is22 => value is X22;

  /// Return type iff the [value] has type [X23].
  bool get is23 => value is X23;

  /// Return type iff the [value] has type [X24].
  bool get is24 => value is X24;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
    R Function(X11) on11,
    R Function(X12) on12,
    R Function(X13) on13,
    R Function(X14) on14,
    R Function(X15) on15,
    R Function(X16) on16,
    R Function(X17) on17,
    R Function(X18) on18,
    R Function(X19) on19,
    R Function(X20) on20,
    R Function(X21) on21,
    R Function(X22) on22,
    R Function(X23) on23,
    R Function(X24) on24,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    if (v is X11) return on11(v);
    if (v is X12) return on12(v);
    if (v is X13) return on13(v);
    if (v is X14) return on14(v);
    if (v is X15) return on15(v);
    if (v is X16) return on16(v);
    if (v is X17) return on17(v);
    if (v is X18) return on18(v);
    if (v is X19) return on19(v);
    if (v is X20) return on20(v);
    if (v is X21) return on21(v);
    if (v is X22) return on22(v);
    if (v is X23) return on23(v);
    if (v is X24) return on24(v);
    throw InvalidUnionTypeException(
      "Union24<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18, $X19, $X20, $X21, $X22, $X23, $X24>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(X11)? on11,
    R Function(X12)? on12,
    R Function(X13)? on13,
    R Function(X14)? on14,
    R Function(X15)? on15,
    R Function(X16)? on16,
    R Function(X17)? on17,
    R Function(X18)? on18,
    R Function(X19)? on19,
    R Function(X20)? on20,
    R Function(X21)? on21,
    R Function(X22)? on22,
    R Function(X23)? on23,
    R Function(X24)? on24,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (v is X11) return (on11 ?? onOther)?.call(v);
    if (v is X12) return (on12 ?? onOther)?.call(v);
    if (v is X13) return (on13 ?? onOther)?.call(v);
    if (v is X14) return (on14 ?? onOther)?.call(v);
    if (v is X15) return (on15 ?? onOther)?.call(v);
    if (v is X16) return (on16 ?? onOther)?.call(v);
    if (v is X17) return (on17 ?? onOther)?.call(v);
    if (v is X18) return (on18 ?? onOther)?.call(v);
    if (v is X19) return (on19 ?? onOther)?.call(v);
    if (v is X20) return (on20 ?? onOther)?.call(v);
    if (v is X21) return (on21 ?? onOther)?.call(v);
    if (v is X22) return (on22 ?? onOther)?.call(v);
    if (v is X23) return (on23 ?? onOther)?.call(v);
    if (v is X24) return (on24 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union24<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18, $X19, $X20, $X21, $X22, $X23, $X24>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X25].
extension type Union25<
  X1,
  X2,
  X3,
  X4,
  X5,
  X6,
  X7,
  X8,
  X9,
  X10,
  X11,
  X12,
  X13,
  X14,
  X15,
  X16,
  X17,
  X18,
  X19,
  X20,
  X21,
  X22,
  X23,
  X24,
  X25
>(Object? value) {
  /// Create a [Union25] value from the 1th type argument.
  Union25.in1(X1 this.value);

  /// Create a [Union25] value from the 2th type argument.
  Union25.in2(X2 this.value);

  /// Create a [Union25] value from the 3th type argument.
  Union25.in3(X3 this.value);

  /// Create a [Union25] value from the 4th type argument.
  Union25.in4(X4 this.value);

  /// Create a [Union25] value from the 5th type argument.
  Union25.in5(X5 this.value);

  /// Create a [Union25] value from the 6th type argument.
  Union25.in6(X6 this.value);

  /// Create a [Union25] value from the 7th type argument.
  Union25.in7(X7 this.value);

  /// Create a [Union25] value from the 8th type argument.
  Union25.in8(X8 this.value);

  /// Create a [Union25] value from the 9th type argument.
  Union25.in9(X9 this.value);

  /// Create a [Union25] value from the 10th type argument.
  Union25.in10(X10 this.value);

  /// Create a [Union25] value from the 11th type argument.
  Union25.in11(X11 this.value);

  /// Create a [Union25] value from the 12th type argument.
  Union25.in12(X12 this.value);

  /// Create a [Union25] value from the 13th type argument.
  Union25.in13(X13 this.value);

  /// Create a [Union25] value from the 14th type argument.
  Union25.in14(X14 this.value);

  /// Create a [Union25] value from the 15th type argument.
  Union25.in15(X15 this.value);

  /// Create a [Union25] value from the 16th type argument.
  Union25.in16(X16 this.value);

  /// Create a [Union25] value from the 17th type argument.
  Union25.in17(X17 this.value);

  /// Create a [Union25] value from the 18th type argument.
  Union25.in18(X18 this.value);

  /// Create a [Union25] value from the 19th type argument.
  Union25.in19(X19 this.value);

  /// Create a [Union25] value from the 20th type argument.
  Union25.in20(X20 this.value);

  /// Create a [Union25] value from the 21th type argument.
  Union25.in21(X21 this.value);

  /// Create a [Union25] value from the 22th type argument.
  Union25.in22(X22 this.value);

  /// Create a [Union25] value from the 23th type argument.
  Union25.in23(X23 this.value);

  /// Create a [Union25] value from the 24th type argument.
  Union25.in24(X24 this.value);

  /// Create a [Union25] value from the 25th type argument.
  Union25.in25(X25 this.value);

  /// Return true iff this [Union25] has a type in [X1] .. [X25].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9 ||
      value is X10 ||
      value is X11 ||
      value is X12 ||
      value is X13 ||
      value is X14 ||
      value is X15 ||
      value is X16 ||
      value is X17 ||
      value is X18 ||
      value is X19 ||
      value is X20 ||
      value is X21 ||
      value is X22 ||
      value is X23 ||
      value is X24 ||
      value is X25;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X10], otherwise null.
  X10? get as10OrNull => value is X10 ? value as X10 : null;

  /// Return the [value] if it has type [X11], otherwise null.
  X11? get as11OrNull => value is X11 ? value as X11 : null;

  /// Return the [value] if it has type [X12], otherwise null.
  X12? get as12OrNull => value is X12 ? value as X12 : null;

  /// Return the [value] if it has type [X13], otherwise null.
  X13? get as13OrNull => value is X13 ? value as X13 : null;

  /// Return the [value] if it has type [X14], otherwise null.
  X14? get as14OrNull => value is X14 ? value as X14 : null;

  /// Return the [value] if it has type [X15], otherwise null.
  X15? get as15OrNull => value is X15 ? value as X15 : null;

  /// Return the [value] if it has type [X16], otherwise null.
  X16? get as16OrNull => value is X16 ? value as X16 : null;

  /// Return the [value] if it has type [X17], otherwise null.
  X17? get as17OrNull => value is X17 ? value as X17 : null;

  /// Return the [value] if it has type [X18], otherwise null.
  X18? get as18OrNull => value is X18 ? value as X18 : null;

  /// Return the [value] if it has type [X19], otherwise null.
  X19? get as19OrNull => value is X19 ? value as X19 : null;

  /// Return the [value] if it has type [X20], otherwise null.
  X20? get as20OrNull => value is X20 ? value as X20 : null;

  /// Return the [value] if it has type [X21], otherwise null.
  X21? get as21OrNull => value is X21 ? value as X21 : null;

  /// Return the [value] if it has type [X22], otherwise null.
  X22? get as22OrNull => value is X22 ? value as X22 : null;

  /// Return the [value] if it has type [X23], otherwise null.
  X23? get as23OrNull => value is X23 ? value as X23 : null;

  /// Return the [value] if it has type [X24], otherwise null.
  X24? get as24OrNull => value is X24 ? value as X24 : null;

  /// Return the [value] if it has type [X25], otherwise null.
  X25? get as25OrNull => value is X25 ? value as X25 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return the [value] if it has type [X10], otherwise throw.
  X10 get as10 => value as X10;

  /// Return the [value] if it has type [X11], otherwise throw.
  X11 get as11 => value as X11;

  /// Return the [value] if it has type [X12], otherwise throw.
  X12 get as12 => value as X12;

  /// Return the [value] if it has type [X13], otherwise throw.
  X13 get as13 => value as X13;

  /// Return the [value] if it has type [X14], otherwise throw.
  X14 get as14 => value as X14;

  /// Return the [value] if it has type [X15], otherwise throw.
  X15 get as15 => value as X15;

  /// Return the [value] if it has type [X16], otherwise throw.
  X16 get as16 => value as X16;

  /// Return the [value] if it has type [X17], otherwise throw.
  X17 get as17 => value as X17;

  /// Return the [value] if it has type [X18], otherwise throw.
  X18 get as18 => value as X18;

  /// Return the [value] if it has type [X19], otherwise throw.
  X19 get as19 => value as X19;

  /// Return the [value] if it has type [X20], otherwise throw.
  X20 get as20 => value as X20;

  /// Return the [value] if it has type [X21], otherwise throw.
  X21 get as21 => value as X21;

  /// Return the [value] if it has type [X22], otherwise throw.
  X22 get as22 => value as X22;

  /// Return the [value] if it has type [X23], otherwise throw.
  X23 get as23 => value as X23;

  /// Return the [value] if it has type [X24], otherwise throw.
  X24 get as24 => value as X24;

  /// Return the [value] if it has type [X25], otherwise throw.
  X25 get as25 => value as X25;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  /// Return type iff the [value] has type [X10].
  bool get is10 => value is X10;

  /// Return type iff the [value] has type [X11].
  bool get is11 => value is X11;

  /// Return type iff the [value] has type [X12].
  bool get is12 => value is X12;

  /// Return type iff the [value] has type [X13].
  bool get is13 => value is X13;

  /// Return type iff the [value] has type [X14].
  bool get is14 => value is X14;

  /// Return type iff the [value] has type [X15].
  bool get is15 => value is X15;

  /// Return type iff the [value] has type [X16].
  bool get is16 => value is X16;

  /// Return type iff the [value] has type [X17].
  bool get is17 => value is X17;

  /// Return type iff the [value] has type [X18].
  bool get is18 => value is X18;

  /// Return type iff the [value] has type [X19].
  bool get is19 => value is X19;

  /// Return type iff the [value] has type [X20].
  bool get is20 => value is X20;

  /// Return type iff the [value] has type [X21].
  bool get is21 => value is X21;

  /// Return type iff the [value] has type [X22].
  bool get is22 => value is X22;

  /// Return type iff the [value] has type [X23].
  bool get is23 => value is X23;

  /// Return type iff the [value] has type [X24].
  bool get is24 => value is X24;

  /// Return type iff the [value] has type [X25].
  bool get is25 => value is X25;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
    R Function(X10) on10,
    R Function(X11) on11,
    R Function(X12) on12,
    R Function(X13) on13,
    R Function(X14) on14,
    R Function(X15) on15,
    R Function(X16) on16,
    R Function(X17) on17,
    R Function(X18) on18,
    R Function(X19) on19,
    R Function(X20) on20,
    R Function(X21) on21,
    R Function(X22) on22,
    R Function(X23) on23,
    R Function(X24) on24,
    R Function(X25) on25,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    if (v is X10) return on10(v);
    if (v is X11) return on11(v);
    if (v is X12) return on12(v);
    if (v is X13) return on13(v);
    if (v is X14) return on14(v);
    if (v is X15) return on15(v);
    if (v is X16) return on16(v);
    if (v is X17) return on17(v);
    if (v is X18) return on18(v);
    if (v is X19) return on19(v);
    if (v is X20) return on20(v);
    if (v is X21) return on21(v);
    if (v is X22) return on22(v);
    if (v is X23) return on23(v);
    if (v is X24) return on24(v);
    if (v is X25) return on25(v);
    throw InvalidUnionTypeException(
      "Union25<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18, $X19, $X20, $X21, $X22, $X23, $X24, $X25>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(X10)? on10,
    R Function(X11)? on11,
    R Function(X12)? on12,
    R Function(X13)? on13,
    R Function(X14)? on14,
    R Function(X15)? on15,
    R Function(X16)? on16,
    R Function(X17)? on17,
    R Function(X18)? on18,
    R Function(X19)? on19,
    R Function(X20)? on20,
    R Function(X21)? on21,
    R Function(X22)? on22,
    R Function(X23)? on23,
    R Function(X24)? on24,
    R Function(X25)? on25,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (v is X10) return (on10 ?? onOther)?.call(v);
    if (v is X11) return (on11 ?? onOther)?.call(v);
    if (v is X12) return (on12 ?? onOther)?.call(v);
    if (v is X13) return (on13 ?? onOther)?.call(v);
    if (v is X14) return (on14 ?? onOther)?.call(v);
    if (v is X15) return (on15 ?? onOther)?.call(v);
    if (v is X16) return (on16 ?? onOther)?.call(v);
    if (v is X17) return (on17 ?? onOther)?.call(v);
    if (v is X18) return (on18 ?? onOther)?.call(v);
    if (v is X19) return (on19 ?? onOther)?.call(v);
    if (v is X20) return (on20 ?? onOther)?.call(v);
    if (v is X21) return (on21 ?? onOther)?.call(v);
    if (v is X22) return (on22 ?? onOther)?.call(v);
    if (v is X23) return (on23 ?? onOther)?.call(v);
    if (v is X24) return (on24 ?? onOther)?.call(v);
    if (v is X25) return (on25 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union25<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9, $X10, $X11, $X12, $X13, $X14, $X15, $X16, $X17, $X18, $X19, $X20, $X21, $X22, $X23, $X24, $X25>",
      value,
    );
  }
}
