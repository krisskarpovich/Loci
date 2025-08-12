// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_review_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddReviewState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddReviewState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddReviewState()';
}


}

/// @nodoc
class $AddReviewStateCopyWith<$Res>  {
$AddReviewStateCopyWith(AddReviewState _, $Res Function(AddReviewState) __);
}


/// Adds pattern-matching-related methods to [AddReviewState].
extension AddReviewStatePatterns on AddReviewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddReviewInitial value)?  initial,TResult Function( AddReviewLoading value)?  loading,TResult Function( AddReviewSuccess value)?  success,TResult Function( AddReviewError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddReviewInitial() when initial != null:
return initial(_that);case AddReviewLoading() when loading != null:
return loading(_that);case AddReviewSuccess() when success != null:
return success(_that);case AddReviewError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddReviewInitial value)  initial,required TResult Function( AddReviewLoading value)  loading,required TResult Function( AddReviewSuccess value)  success,required TResult Function( AddReviewError value)  error,}){
final _that = this;
switch (_that) {
case AddReviewInitial():
return initial(_that);case AddReviewLoading():
return loading(_that);case AddReviewSuccess():
return success(_that);case AddReviewError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddReviewInitial value)?  initial,TResult? Function( AddReviewLoading value)?  loading,TResult? Function( AddReviewSuccess value)?  success,TResult? Function( AddReviewError value)?  error,}){
final _that = this;
switch (_that) {
case AddReviewInitial() when initial != null:
return initial(_that);case AddReviewLoading() when loading != null:
return loading(_that);case AddReviewSuccess() when success != null:
return success(_that);case AddReviewError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddReviewInitial() when initial != null:
return initial();case AddReviewLoading() when loading != null:
return loading();case AddReviewSuccess() when success != null:
return success();case AddReviewError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case AddReviewInitial():
return initial();case AddReviewLoading():
return loading();case AddReviewSuccess():
return success();case AddReviewError():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case AddReviewInitial() when initial != null:
return initial();case AddReviewLoading() when loading != null:
return loading();case AddReviewSuccess() when success != null:
return success();case AddReviewError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class AddReviewInitial implements AddReviewState {
  const AddReviewInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddReviewInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddReviewState.initial()';
}


}




/// @nodoc


class AddReviewLoading implements AddReviewState {
  const AddReviewLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddReviewLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddReviewState.loading()';
}


}




/// @nodoc


class AddReviewSuccess implements AddReviewState {
  const AddReviewSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddReviewSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddReviewState.success()';
}


}




/// @nodoc


class AddReviewError implements AddReviewState {
  const AddReviewError(this.message);
  

 final  String message;

/// Create a copy of AddReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddReviewErrorCopyWith<AddReviewError> get copyWith => _$AddReviewErrorCopyWithImpl<AddReviewError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddReviewError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AddReviewState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $AddReviewErrorCopyWith<$Res> implements $AddReviewStateCopyWith<$Res> {
  factory $AddReviewErrorCopyWith(AddReviewError value, $Res Function(AddReviewError) _then) = _$AddReviewErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AddReviewErrorCopyWithImpl<$Res>
    implements $AddReviewErrorCopyWith<$Res> {
  _$AddReviewErrorCopyWithImpl(this._self, this._then);

  final AddReviewError _self;
  final $Res Function(AddReviewError) _then;

/// Create a copy of AddReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AddReviewError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
