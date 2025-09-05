// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dart_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DartValue {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DartValue);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DartValue()';
}


}

/// @nodoc
class $DartValueCopyWith<$Res>  {
$DartValueCopyWith(DartValue _, $Res Function(DartValue) __);
}


/// Adds pattern-matching-related methods to [DartValue].
extension DartValuePatterns on DartValue {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DartValue_Null value)?  null_,TResult Function( DartValue_Int64 value)?  int64,TResult Function( DartValue_Float64 value)?  float64,TResult Function( DartValue_Boolean value)?  boolean,TResult Function( DartValue_String value)?  string,TResult Function( DartValue_Bytes value)?  bytes,TResult Function( DartValue_Array value)?  array,TResult Function( DartValue_Object value)?  object,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DartValue_Null() when null_ != null:
return null_(_that);case DartValue_Int64() when int64 != null:
return int64(_that);case DartValue_Float64() when float64 != null:
return float64(_that);case DartValue_Boolean() when boolean != null:
return boolean(_that);case DartValue_String() when string != null:
return string(_that);case DartValue_Bytes() when bytes != null:
return bytes(_that);case DartValue_Array() when array != null:
return array(_that);case DartValue_Object() when object != null:
return object(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DartValue_Null value)  null_,required TResult Function( DartValue_Int64 value)  int64,required TResult Function( DartValue_Float64 value)  float64,required TResult Function( DartValue_Boolean value)  boolean,required TResult Function( DartValue_String value)  string,required TResult Function( DartValue_Bytes value)  bytes,required TResult Function( DartValue_Array value)  array,required TResult Function( DartValue_Object value)  object,}){
final _that = this;
switch (_that) {
case DartValue_Null():
return null_(_that);case DartValue_Int64():
return int64(_that);case DartValue_Float64():
return float64(_that);case DartValue_Boolean():
return boolean(_that);case DartValue_String():
return string(_that);case DartValue_Bytes():
return bytes(_that);case DartValue_Array():
return array(_that);case DartValue_Object():
return object(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DartValue_Null value)?  null_,TResult? Function( DartValue_Int64 value)?  int64,TResult? Function( DartValue_Float64 value)?  float64,TResult? Function( DartValue_Boolean value)?  boolean,TResult? Function( DartValue_String value)?  string,TResult? Function( DartValue_Bytes value)?  bytes,TResult? Function( DartValue_Array value)?  array,TResult? Function( DartValue_Object value)?  object,}){
final _that = this;
switch (_that) {
case DartValue_Null() when null_ != null:
return null_(_that);case DartValue_Int64() when int64 != null:
return int64(_that);case DartValue_Float64() when float64 != null:
return float64(_that);case DartValue_Boolean() when boolean != null:
return boolean(_that);case DartValue_String() when string != null:
return string(_that);case DartValue_Bytes() when bytes != null:
return bytes(_that);case DartValue_Array() when array != null:
return array(_that);case DartValue_Object() when object != null:
return object(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  null_,TResult Function( PlatformInt64 field0)?  int64,TResult Function( double field0)?  float64,TResult Function( bool field0)?  boolean,TResult Function( String field0)?  string,TResult Function( Uint8List field0)?  bytes,TResult Function( List<DartValue> field0)?  array,TResult Function( BTreeMapStringDartValue field0)?  object,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DartValue_Null() when null_ != null:
return null_();case DartValue_Int64() when int64 != null:
return int64(_that.field0);case DartValue_Float64() when float64 != null:
return float64(_that.field0);case DartValue_Boolean() when boolean != null:
return boolean(_that.field0);case DartValue_String() when string != null:
return string(_that.field0);case DartValue_Bytes() when bytes != null:
return bytes(_that.field0);case DartValue_Array() when array != null:
return array(_that.field0);case DartValue_Object() when object != null:
return object(_that.field0);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  null_,required TResult Function( PlatformInt64 field0)  int64,required TResult Function( double field0)  float64,required TResult Function( bool field0)  boolean,required TResult Function( String field0)  string,required TResult Function( Uint8List field0)  bytes,required TResult Function( List<DartValue> field0)  array,required TResult Function( BTreeMapStringDartValue field0)  object,}) {final _that = this;
switch (_that) {
case DartValue_Null():
return null_();case DartValue_Int64():
return int64(_that.field0);case DartValue_Float64():
return float64(_that.field0);case DartValue_Boolean():
return boolean(_that.field0);case DartValue_String():
return string(_that.field0);case DartValue_Bytes():
return bytes(_that.field0);case DartValue_Array():
return array(_that.field0);case DartValue_Object():
return object(_that.field0);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  null_,TResult? Function( PlatformInt64 field0)?  int64,TResult? Function( double field0)?  float64,TResult? Function( bool field0)?  boolean,TResult? Function( String field0)?  string,TResult? Function( Uint8List field0)?  bytes,TResult? Function( List<DartValue> field0)?  array,TResult? Function( BTreeMapStringDartValue field0)?  object,}) {final _that = this;
switch (_that) {
case DartValue_Null() when null_ != null:
return null_();case DartValue_Int64() when int64 != null:
return int64(_that.field0);case DartValue_Float64() when float64 != null:
return float64(_that.field0);case DartValue_Boolean() when boolean != null:
return boolean(_that.field0);case DartValue_String() when string != null:
return string(_that.field0);case DartValue_Bytes() when bytes != null:
return bytes(_that.field0);case DartValue_Array() when array != null:
return array(_that.field0);case DartValue_Object() when object != null:
return object(_that.field0);case _:
  return null;

}
}

}

/// @nodoc


class DartValue_Null extends DartValue {
  const DartValue_Null(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DartValue_Null);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DartValue.null_()';
}


}




/// @nodoc


class DartValue_Int64 extends DartValue {
  const DartValue_Int64(this.field0): super._();
  

 final  PlatformInt64 field0;

/// Create a copy of DartValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DartValue_Int64CopyWith<DartValue_Int64> get copyWith => _$DartValue_Int64CopyWithImpl<DartValue_Int64>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DartValue_Int64&&(identical(other.field0, field0) || other.field0 == field0));
}


@override
int get hashCode => Object.hash(runtimeType,field0);

@override
String toString() {
  return 'DartValue.int64(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $DartValue_Int64CopyWith<$Res> implements $DartValueCopyWith<$Res> {
  factory $DartValue_Int64CopyWith(DartValue_Int64 value, $Res Function(DartValue_Int64) _then) = _$DartValue_Int64CopyWithImpl;
@useResult
$Res call({
 PlatformInt64 field0
});




}
/// @nodoc
class _$DartValue_Int64CopyWithImpl<$Res>
    implements $DartValue_Int64CopyWith<$Res> {
  _$DartValue_Int64CopyWithImpl(this._self, this._then);

  final DartValue_Int64 _self;
  final $Res Function(DartValue_Int64) _then;

/// Create a copy of DartValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(DartValue_Int64(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as PlatformInt64,
  ));
}


}

/// @nodoc


class DartValue_Float64 extends DartValue {
  const DartValue_Float64(this.field0): super._();
  

 final  double field0;

/// Create a copy of DartValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DartValue_Float64CopyWith<DartValue_Float64> get copyWith => _$DartValue_Float64CopyWithImpl<DartValue_Float64>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DartValue_Float64&&(identical(other.field0, field0) || other.field0 == field0));
}


@override
int get hashCode => Object.hash(runtimeType,field0);

@override
String toString() {
  return 'DartValue.float64(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $DartValue_Float64CopyWith<$Res> implements $DartValueCopyWith<$Res> {
  factory $DartValue_Float64CopyWith(DartValue_Float64 value, $Res Function(DartValue_Float64) _then) = _$DartValue_Float64CopyWithImpl;
@useResult
$Res call({
 double field0
});




}
/// @nodoc
class _$DartValue_Float64CopyWithImpl<$Res>
    implements $DartValue_Float64CopyWith<$Res> {
  _$DartValue_Float64CopyWithImpl(this._self, this._then);

  final DartValue_Float64 _self;
  final $Res Function(DartValue_Float64) _then;

/// Create a copy of DartValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(DartValue_Float64(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class DartValue_Boolean extends DartValue {
  const DartValue_Boolean(this.field0): super._();
  

 final  bool field0;

/// Create a copy of DartValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DartValue_BooleanCopyWith<DartValue_Boolean> get copyWith => _$DartValue_BooleanCopyWithImpl<DartValue_Boolean>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DartValue_Boolean&&(identical(other.field0, field0) || other.field0 == field0));
}


@override
int get hashCode => Object.hash(runtimeType,field0);

@override
String toString() {
  return 'DartValue.boolean(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $DartValue_BooleanCopyWith<$Res> implements $DartValueCopyWith<$Res> {
  factory $DartValue_BooleanCopyWith(DartValue_Boolean value, $Res Function(DartValue_Boolean) _then) = _$DartValue_BooleanCopyWithImpl;
@useResult
$Res call({
 bool field0
});




}
/// @nodoc
class _$DartValue_BooleanCopyWithImpl<$Res>
    implements $DartValue_BooleanCopyWith<$Res> {
  _$DartValue_BooleanCopyWithImpl(this._self, this._then);

  final DartValue_Boolean _self;
  final $Res Function(DartValue_Boolean) _then;

/// Create a copy of DartValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(DartValue_Boolean(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class DartValue_String extends DartValue {
  const DartValue_String(this.field0): super._();
  

 final  String field0;

/// Create a copy of DartValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DartValue_StringCopyWith<DartValue_String> get copyWith => _$DartValue_StringCopyWithImpl<DartValue_String>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DartValue_String&&(identical(other.field0, field0) || other.field0 == field0));
}


@override
int get hashCode => Object.hash(runtimeType,field0);

@override
String toString() {
  return 'DartValue.string(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $DartValue_StringCopyWith<$Res> implements $DartValueCopyWith<$Res> {
  factory $DartValue_StringCopyWith(DartValue_String value, $Res Function(DartValue_String) _then) = _$DartValue_StringCopyWithImpl;
@useResult
$Res call({
 String field0
});




}
/// @nodoc
class _$DartValue_StringCopyWithImpl<$Res>
    implements $DartValue_StringCopyWith<$Res> {
  _$DartValue_StringCopyWithImpl(this._self, this._then);

  final DartValue_String _self;
  final $Res Function(DartValue_String) _then;

/// Create a copy of DartValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(DartValue_String(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DartValue_Bytes extends DartValue {
  const DartValue_Bytes(this.field0): super._();
  

 final  Uint8List field0;

/// Create a copy of DartValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DartValue_BytesCopyWith<DartValue_Bytes> get copyWith => _$DartValue_BytesCopyWithImpl<DartValue_Bytes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DartValue_Bytes&&const DeepCollectionEquality().equals(other.field0, field0));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(field0));

@override
String toString() {
  return 'DartValue.bytes(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $DartValue_BytesCopyWith<$Res> implements $DartValueCopyWith<$Res> {
  factory $DartValue_BytesCopyWith(DartValue_Bytes value, $Res Function(DartValue_Bytes) _then) = _$DartValue_BytesCopyWithImpl;
@useResult
$Res call({
 Uint8List field0
});




}
/// @nodoc
class _$DartValue_BytesCopyWithImpl<$Res>
    implements $DartValue_BytesCopyWith<$Res> {
  _$DartValue_BytesCopyWithImpl(this._self, this._then);

  final DartValue_Bytes _self;
  final $Res Function(DartValue_Bytes) _then;

/// Create a copy of DartValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(DartValue_Bytes(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class DartValue_Array extends DartValue {
  const DartValue_Array(final  List<DartValue> field0): _field0 = field0,super._();
  

 final  List<DartValue> _field0;
 List<DartValue> get field0 {
  if (_field0 is EqualUnmodifiableListView) return _field0;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_field0);
}


/// Create a copy of DartValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DartValue_ArrayCopyWith<DartValue_Array> get copyWith => _$DartValue_ArrayCopyWithImpl<DartValue_Array>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DartValue_Array&&const DeepCollectionEquality().equals(other._field0, _field0));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_field0));

@override
String toString() {
  return 'DartValue.array(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $DartValue_ArrayCopyWith<$Res> implements $DartValueCopyWith<$Res> {
  factory $DartValue_ArrayCopyWith(DartValue_Array value, $Res Function(DartValue_Array) _then) = _$DartValue_ArrayCopyWithImpl;
@useResult
$Res call({
 List<DartValue> field0
});




}
/// @nodoc
class _$DartValue_ArrayCopyWithImpl<$Res>
    implements $DartValue_ArrayCopyWith<$Res> {
  _$DartValue_ArrayCopyWithImpl(this._self, this._then);

  final DartValue_Array _self;
  final $Res Function(DartValue_Array) _then;

/// Create a copy of DartValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(DartValue_Array(
null == field0 ? _self._field0 : field0 // ignore: cast_nullable_to_non_nullable
as List<DartValue>,
  ));
}


}

/// @nodoc


class DartValue_Object extends DartValue {
  const DartValue_Object(this.field0): super._();
  

 final  BTreeMapStringDartValue field0;

/// Create a copy of DartValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DartValue_ObjectCopyWith<DartValue_Object> get copyWith => _$DartValue_ObjectCopyWithImpl<DartValue_Object>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DartValue_Object&&(identical(other.field0, field0) || other.field0 == field0));
}


@override
int get hashCode => Object.hash(runtimeType,field0);

@override
String toString() {
  return 'DartValue.object(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $DartValue_ObjectCopyWith<$Res> implements $DartValueCopyWith<$Res> {
  factory $DartValue_ObjectCopyWith(DartValue_Object value, $Res Function(DartValue_Object) _then) = _$DartValue_ObjectCopyWithImpl;
@useResult
$Res call({
 BTreeMapStringDartValue field0
});




}
/// @nodoc
class _$DartValue_ObjectCopyWithImpl<$Res>
    implements $DartValue_ObjectCopyWith<$Res> {
  _$DartValue_ObjectCopyWithImpl(this._self, this._then);

  final DartValue_Object _self;
  final $Res Function(DartValue_Object) _then;

/// Create a copy of DartValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(DartValue_Object(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as BTreeMapStringDartValue,
  ));
}


}

// dart format on
