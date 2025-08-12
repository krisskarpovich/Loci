// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthenticatedAuthState value)?  authenticated,TResult Function( UnauthenticatedAuthState value)?  unauthenticated,TResult Function( UnknownAuthState value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthenticatedAuthState() when authenticated != null:
return authenticated(_that);case UnauthenticatedAuthState() when unauthenticated != null:
return unauthenticated(_that);case UnknownAuthState() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthenticatedAuthState value)  authenticated,required TResult Function( UnauthenticatedAuthState value)  unauthenticated,required TResult Function( UnknownAuthState value)  unknown,}){
final _that = this;
switch (_that) {
case AuthenticatedAuthState():
return authenticated(_that);case UnauthenticatedAuthState():
return unauthenticated(_that);case UnknownAuthState():
return unknown(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthenticatedAuthState value)?  authenticated,TResult? Function( UnauthenticatedAuthState value)?  unauthenticated,TResult? Function( UnknownAuthState value)?  unknown,}){
final _that = this;
switch (_that) {
case AuthenticatedAuthState() when authenticated != null:
return authenticated(_that);case UnauthenticatedAuthState() when unauthenticated != null:
return unauthenticated(_that);case UnknownAuthState() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  authenticated,TResult Function()?  unauthenticated,TResult Function()?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthenticatedAuthState() when authenticated != null:
return authenticated();case UnauthenticatedAuthState() when unauthenticated != null:
return unauthenticated();case UnknownAuthState() when unknown != null:
return unknown();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  authenticated,required TResult Function()  unauthenticated,required TResult Function()  unknown,}) {final _that = this;
switch (_that) {
case AuthenticatedAuthState():
return authenticated();case UnauthenticatedAuthState():
return unauthenticated();case UnknownAuthState():
return unknown();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  authenticated,TResult? Function()?  unauthenticated,TResult? Function()?  unknown,}) {final _that = this;
switch (_that) {
case AuthenticatedAuthState() when authenticated != null:
return authenticated();case UnauthenticatedAuthState() when unauthenticated != null:
return unauthenticated();case UnknownAuthState() when unknown != null:
return unknown();case _:
  return null;

}
}

}

/// @nodoc


class AuthenticatedAuthState implements AuthState {
  const AuthenticatedAuthState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticatedAuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.authenticated()';
}


}




/// @nodoc


class UnauthenticatedAuthState implements AuthState {
  const UnauthenticatedAuthState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnauthenticatedAuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.unauthenticated()';
}


}




/// @nodoc


class UnknownAuthState implements AuthState {
  const UnknownAuthState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownAuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.unknown()';
}


}




// dart format on
