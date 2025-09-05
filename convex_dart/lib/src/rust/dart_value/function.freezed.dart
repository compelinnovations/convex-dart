// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'function.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DartFunctionResult {

 Object get field0;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DartFunctionResult&&const DeepCollectionEquality().equals(other.field0, field0));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(field0));

@override
String toString() {
  return 'DartFunctionResult(field0: $field0)';
}


}

/// @nodoc
class $DartFunctionResultCopyWith<$Res>  {
$DartFunctionResultCopyWith(DartFunctionResult _, $Res Function(DartFunctionResult) __);
}


/// Adds pattern-matching-related methods to [DartFunctionResult].
extension DartFunctionResultPatterns on DartFunctionResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DartFunctionResult_Value value)?  value,TResult Function( DartFunctionResult_ErrorMessage value)?  errorMessage,TResult Function( DartFunctionResult_ConvexError value)?  convexError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DartFunctionResult_Value() when value != null:
return value(_that);case DartFunctionResult_ErrorMessage() when errorMessage != null:
return errorMessage(_that);case DartFunctionResult_ConvexError() when convexError != null:
return convexError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DartFunctionResult_Value value)  value,required TResult Function( DartFunctionResult_ErrorMessage value)  errorMessage,required TResult Function( DartFunctionResult_ConvexError value)  convexError,}){
final _that = this;
switch (_that) {
case DartFunctionResult_Value():
return value(_that);case DartFunctionResult_ErrorMessage():
return errorMessage(_that);case DartFunctionResult_ConvexError():
return convexError(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DartFunctionResult_Value value)?  value,TResult? Function( DartFunctionResult_ErrorMessage value)?  errorMessage,TResult? Function( DartFunctionResult_ConvexError value)?  convexError,}){
final _that = this;
switch (_that) {
case DartFunctionResult_Value() when value != null:
return value(_that);case DartFunctionResult_ErrorMessage() when errorMessage != null:
return errorMessage(_that);case DartFunctionResult_ConvexError() when convexError != null:
return convexError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DartValue field0)?  value,TResult Function( String field0)?  errorMessage,TResult Function( DartConvexError field0)?  convexError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DartFunctionResult_Value() when value != null:
return value(_that.field0);case DartFunctionResult_ErrorMessage() when errorMessage != null:
return errorMessage(_that.field0);case DartFunctionResult_ConvexError() when convexError != null:
return convexError(_that.field0);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DartValue field0)  value,required TResult Function( String field0)  errorMessage,required TResult Function( DartConvexError field0)  convexError,}) {final _that = this;
switch (_that) {
case DartFunctionResult_Value():
return value(_that.field0);case DartFunctionResult_ErrorMessage():
return errorMessage(_that.field0);case DartFunctionResult_ConvexError():
return convexError(_that.field0);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DartValue field0)?  value,TResult? Function( String field0)?  errorMessage,TResult? Function( DartConvexError field0)?  convexError,}) {final _that = this;
switch (_that) {
case DartFunctionResult_Value() when value != null:
return value(_that.field0);case DartFunctionResult_ErrorMessage() when errorMessage != null:
return errorMessage(_that.field0);case DartFunctionResult_ConvexError() when convexError != null:
return convexError(_that.field0);case _:
  return null;

}
}

}

/// @nodoc


class DartFunctionResult_Value extends DartFunctionResult {
  const DartFunctionResult_Value(this.field0): super._();
  

@override final  DartValue field0;

/// Create a copy of DartFunctionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DartFunctionResult_ValueCopyWith<DartFunctionResult_Value> get copyWith => _$DartFunctionResult_ValueCopyWithImpl<DartFunctionResult_Value>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DartFunctionResult_Value&&(identical(other.field0, field0) || other.field0 == field0));
}


@override
int get hashCode => Object.hash(runtimeType,field0);

@override
String toString() {
  return 'DartFunctionResult.value(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $DartFunctionResult_ValueCopyWith<$Res> implements $DartFunctionResultCopyWith<$Res> {
  factory $DartFunctionResult_ValueCopyWith(DartFunctionResult_Value value, $Res Function(DartFunctionResult_Value) _then) = _$DartFunctionResult_ValueCopyWithImpl;
@useResult
$Res call({
 DartValue field0
});


$DartValueCopyWith<$Res> get field0;

}
/// @nodoc
class _$DartFunctionResult_ValueCopyWithImpl<$Res>
    implements $DartFunctionResult_ValueCopyWith<$Res> {
  _$DartFunctionResult_ValueCopyWithImpl(this._self, this._then);

  final DartFunctionResult_Value _self;
  final $Res Function(DartFunctionResult_Value) _then;

/// Create a copy of DartFunctionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(DartFunctionResult_Value(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as DartValue,
  ));
}

/// Create a copy of DartFunctionResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DartValueCopyWith<$Res> get field0 {
  
  return $DartValueCopyWith<$Res>(_self.field0, (value) {
    return _then(_self.copyWith(field0: value));
  });
}
}

/// @nodoc


class DartFunctionResult_ErrorMessage extends DartFunctionResult {
  const DartFunctionResult_ErrorMessage(this.field0): super._();
  

@override final  String field0;

/// Create a copy of DartFunctionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DartFunctionResult_ErrorMessageCopyWith<DartFunctionResult_ErrorMessage> get copyWith => _$DartFunctionResult_ErrorMessageCopyWithImpl<DartFunctionResult_ErrorMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DartFunctionResult_ErrorMessage&&(identical(other.field0, field0) || other.field0 == field0));
}


@override
int get hashCode => Object.hash(runtimeType,field0);

@override
String toString() {
  return 'DartFunctionResult.errorMessage(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $DartFunctionResult_ErrorMessageCopyWith<$Res> implements $DartFunctionResultCopyWith<$Res> {
  factory $DartFunctionResult_ErrorMessageCopyWith(DartFunctionResult_ErrorMessage value, $Res Function(DartFunctionResult_ErrorMessage) _then) = _$DartFunctionResult_ErrorMessageCopyWithImpl;
@useResult
$Res call({
 String field0
});




}
/// @nodoc
class _$DartFunctionResult_ErrorMessageCopyWithImpl<$Res>
    implements $DartFunctionResult_ErrorMessageCopyWith<$Res> {
  _$DartFunctionResult_ErrorMessageCopyWithImpl(this._self, this._then);

  final DartFunctionResult_ErrorMessage _self;
  final $Res Function(DartFunctionResult_ErrorMessage) _then;

/// Create a copy of DartFunctionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(DartFunctionResult_ErrorMessage(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DartFunctionResult_ConvexError extends DartFunctionResult {
  const DartFunctionResult_ConvexError(this.field0): super._();
  

@override final  DartConvexError field0;

/// Create a copy of DartFunctionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DartFunctionResult_ConvexErrorCopyWith<DartFunctionResult_ConvexError> get copyWith => _$DartFunctionResult_ConvexErrorCopyWithImpl<DartFunctionResult_ConvexError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DartFunctionResult_ConvexError&&(identical(other.field0, field0) || other.field0 == field0));
}


@override
int get hashCode => Object.hash(runtimeType,field0);

@override
String toString() {
  return 'DartFunctionResult.convexError(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $DartFunctionResult_ConvexErrorCopyWith<$Res> implements $DartFunctionResultCopyWith<$Res> {
  factory $DartFunctionResult_ConvexErrorCopyWith(DartFunctionResult_ConvexError value, $Res Function(DartFunctionResult_ConvexError) _then) = _$DartFunctionResult_ConvexErrorCopyWithImpl;
@useResult
$Res call({
 DartConvexError field0
});




}
/// @nodoc
class _$DartFunctionResult_ConvexErrorCopyWithImpl<$Res>
    implements $DartFunctionResult_ConvexErrorCopyWith<$Res> {
  _$DartFunctionResult_ConvexErrorCopyWithImpl(this._self, this._then);

  final DartFunctionResult_ConvexError _self;
  final $Res Function(DartFunctionResult_ConvexError) _then;

/// Create a copy of DartFunctionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(DartFunctionResult_ConvexError(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as DartConvexError,
  ));
}


}

// dart format on
