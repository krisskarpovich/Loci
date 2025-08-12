// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_place_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchPlaceState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPlaceState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchPlaceState()';
}


}

/// @nodoc
class $SearchPlaceStateCopyWith<$Res>  {
$SearchPlaceStateCopyWith(SearchPlaceState _, $Res Function(SearchPlaceState) __);
}


/// Adds pattern-matching-related methods to [SearchPlaceState].
extension SearchPlaceStatePatterns on SearchPlaceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchPlaceInitial value)?  initial,TResult Function( SearchPlaceLoading value)?  loading,TResult Function( SearchPlaceLoaded value)?  loaded,TResult Function( SearchPlaceError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchPlaceInitial() when initial != null:
return initial(_that);case SearchPlaceLoading() when loading != null:
return loading(_that);case SearchPlaceLoaded() when loaded != null:
return loaded(_that);case SearchPlaceError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchPlaceInitial value)  initial,required TResult Function( SearchPlaceLoading value)  loading,required TResult Function( SearchPlaceLoaded value)  loaded,required TResult Function( SearchPlaceError value)  error,}){
final _that = this;
switch (_that) {
case SearchPlaceInitial():
return initial(_that);case SearchPlaceLoading():
return loading(_that);case SearchPlaceLoaded():
return loaded(_that);case SearchPlaceError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchPlaceInitial value)?  initial,TResult? Function( SearchPlaceLoading value)?  loading,TResult? Function( SearchPlaceLoaded value)?  loaded,TResult? Function( SearchPlaceError value)?  error,}){
final _that = this;
switch (_that) {
case SearchPlaceInitial() when initial != null:
return initial(_that);case SearchPlaceLoading() when loading != null:
return loading(_that);case SearchPlaceLoaded() when loaded != null:
return loaded(_that);case SearchPlaceError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Map<String, dynamic>> places)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchPlaceInitial() when initial != null:
return initial();case SearchPlaceLoading() when loading != null:
return loading();case SearchPlaceLoaded() when loaded != null:
return loaded(_that.places);case SearchPlaceError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Map<String, dynamic>> places)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case SearchPlaceInitial():
return initial();case SearchPlaceLoading():
return loading();case SearchPlaceLoaded():
return loaded(_that.places);case SearchPlaceError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Map<String, dynamic>> places)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case SearchPlaceInitial() when initial != null:
return initial();case SearchPlaceLoading() when loading != null:
return loading();case SearchPlaceLoaded() when loaded != null:
return loaded(_that.places);case SearchPlaceError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class SearchPlaceInitial implements SearchPlaceState {
  const SearchPlaceInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPlaceInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchPlaceState.initial()';
}


}




/// @nodoc


class SearchPlaceLoading implements SearchPlaceState {
  const SearchPlaceLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPlaceLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchPlaceState.loading()';
}


}




/// @nodoc


class SearchPlaceLoaded implements SearchPlaceState {
  const SearchPlaceLoaded(final  List<Map<String, dynamic>> places): _places = places;
  

 final  List<Map<String, dynamic>> _places;
 List<Map<String, dynamic>> get places {
  if (_places is EqualUnmodifiableListView) return _places;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_places);
}


/// Create a copy of SearchPlaceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchPlaceLoadedCopyWith<SearchPlaceLoaded> get copyWith => _$SearchPlaceLoadedCopyWithImpl<SearchPlaceLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPlaceLoaded&&const DeepCollectionEquality().equals(other._places, _places));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_places));

@override
String toString() {
  return 'SearchPlaceState.loaded(places: $places)';
}


}

/// @nodoc
abstract mixin class $SearchPlaceLoadedCopyWith<$Res> implements $SearchPlaceStateCopyWith<$Res> {
  factory $SearchPlaceLoadedCopyWith(SearchPlaceLoaded value, $Res Function(SearchPlaceLoaded) _then) = _$SearchPlaceLoadedCopyWithImpl;
@useResult
$Res call({
 List<Map<String, dynamic>> places
});




}
/// @nodoc
class _$SearchPlaceLoadedCopyWithImpl<$Res>
    implements $SearchPlaceLoadedCopyWith<$Res> {
  _$SearchPlaceLoadedCopyWithImpl(this._self, this._then);

  final SearchPlaceLoaded _self;
  final $Res Function(SearchPlaceLoaded) _then;

/// Create a copy of SearchPlaceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? places = null,}) {
  return _then(SearchPlaceLoaded(
null == places ? _self._places : places // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}


}

/// @nodoc


class SearchPlaceError implements SearchPlaceState {
  const SearchPlaceError(this.message);
  

 final  String message;

/// Create a copy of SearchPlaceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchPlaceErrorCopyWith<SearchPlaceError> get copyWith => _$SearchPlaceErrorCopyWithImpl<SearchPlaceError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPlaceError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SearchPlaceState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $SearchPlaceErrorCopyWith<$Res> implements $SearchPlaceStateCopyWith<$Res> {
  factory $SearchPlaceErrorCopyWith(SearchPlaceError value, $Res Function(SearchPlaceError) _then) = _$SearchPlaceErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SearchPlaceErrorCopyWithImpl<$Res>
    implements $SearchPlaceErrorCopyWith<$Res> {
  _$SearchPlaceErrorCopyWithImpl(this._self, this._then);

  final SearchPlaceError _self;
  final $Res Function(SearchPlaceError) _then;

/// Create a copy of SearchPlaceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SearchPlaceError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
