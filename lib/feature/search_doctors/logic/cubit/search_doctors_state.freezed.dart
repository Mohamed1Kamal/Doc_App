// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_doctors_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchDoctorsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDoctorsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchDoctorsState()';
}


}

/// @nodoc
class $SearchDoctorsStateCopyWith<$Res>  {
$SearchDoctorsStateCopyWith(SearchDoctorsState _, $Res Function(SearchDoctorsState) __);
}


/// Adds pattern-matching-related methods to [SearchDoctorsState].
extension SearchDoctorsStatePatterns on SearchDoctorsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchDoctorsFailure value)?  searchDoctorsFailure,TResult Function( SearchDoctorsInitial value)?  searchDoctorsInitial,TResult Function( SearchDoctorsLoading value)?  searchDoctorsLoading,TResult Function( SearchDoctorsSuccess value)?  searchDoctorsSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchDoctorsFailure() when searchDoctorsFailure != null:
return searchDoctorsFailure(_that);case SearchDoctorsInitial() when searchDoctorsInitial != null:
return searchDoctorsInitial(_that);case SearchDoctorsLoading() when searchDoctorsLoading != null:
return searchDoctorsLoading(_that);case SearchDoctorsSuccess() when searchDoctorsSuccess != null:
return searchDoctorsSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchDoctorsFailure value)  searchDoctorsFailure,required TResult Function( SearchDoctorsInitial value)  searchDoctorsInitial,required TResult Function( SearchDoctorsLoading value)  searchDoctorsLoading,required TResult Function( SearchDoctorsSuccess value)  searchDoctorsSuccess,}){
final _that = this;
switch (_that) {
case SearchDoctorsFailure():
return searchDoctorsFailure(_that);case SearchDoctorsInitial():
return searchDoctorsInitial(_that);case SearchDoctorsLoading():
return searchDoctorsLoading(_that);case SearchDoctorsSuccess():
return searchDoctorsSuccess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchDoctorsFailure value)?  searchDoctorsFailure,TResult? Function( SearchDoctorsInitial value)?  searchDoctorsInitial,TResult? Function( SearchDoctorsLoading value)?  searchDoctorsLoading,TResult? Function( SearchDoctorsSuccess value)?  searchDoctorsSuccess,}){
final _that = this;
switch (_that) {
case SearchDoctorsFailure() when searchDoctorsFailure != null:
return searchDoctorsFailure(_that);case SearchDoctorsInitial() when searchDoctorsInitial != null:
return searchDoctorsInitial(_that);case SearchDoctorsLoading() when searchDoctorsLoading != null:
return searchDoctorsLoading(_that);case SearchDoctorsSuccess() when searchDoctorsSuccess != null:
return searchDoctorsSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  searchDoctorsFailure,TResult Function()?  searchDoctorsInitial,TResult Function()?  searchDoctorsLoading,TResult Function( List<DoctorsData>? doctors)?  searchDoctorsSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchDoctorsFailure() when searchDoctorsFailure != null:
return searchDoctorsFailure(_that.error);case SearchDoctorsInitial() when searchDoctorsInitial != null:
return searchDoctorsInitial();case SearchDoctorsLoading() when searchDoctorsLoading != null:
return searchDoctorsLoading();case SearchDoctorsSuccess() when searchDoctorsSuccess != null:
return searchDoctorsSuccess(_that.doctors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  searchDoctorsFailure,required TResult Function()  searchDoctorsInitial,required TResult Function()  searchDoctorsLoading,required TResult Function( List<DoctorsData>? doctors)  searchDoctorsSuccess,}) {final _that = this;
switch (_that) {
case SearchDoctorsFailure():
return searchDoctorsFailure(_that.error);case SearchDoctorsInitial():
return searchDoctorsInitial();case SearchDoctorsLoading():
return searchDoctorsLoading();case SearchDoctorsSuccess():
return searchDoctorsSuccess(_that.doctors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  searchDoctorsFailure,TResult? Function()?  searchDoctorsInitial,TResult? Function()?  searchDoctorsLoading,TResult? Function( List<DoctorsData>? doctors)?  searchDoctorsSuccess,}) {final _that = this;
switch (_that) {
case SearchDoctorsFailure() when searchDoctorsFailure != null:
return searchDoctorsFailure(_that.error);case SearchDoctorsInitial() when searchDoctorsInitial != null:
return searchDoctorsInitial();case SearchDoctorsLoading() when searchDoctorsLoading != null:
return searchDoctorsLoading();case SearchDoctorsSuccess() when searchDoctorsSuccess != null:
return searchDoctorsSuccess(_that.doctors);case _:
  return null;

}
}

}

/// @nodoc


class SearchDoctorsFailure implements SearchDoctorsState {
  const SearchDoctorsFailure(this.error);
  

 final  String error;

/// Create a copy of SearchDoctorsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchDoctorsFailureCopyWith<SearchDoctorsFailure> get copyWith => _$SearchDoctorsFailureCopyWithImpl<SearchDoctorsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDoctorsFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SearchDoctorsState.searchDoctorsFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $SearchDoctorsFailureCopyWith<$Res> implements $SearchDoctorsStateCopyWith<$Res> {
  factory $SearchDoctorsFailureCopyWith(SearchDoctorsFailure value, $Res Function(SearchDoctorsFailure) _then) = _$SearchDoctorsFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$SearchDoctorsFailureCopyWithImpl<$Res>
    implements $SearchDoctorsFailureCopyWith<$Res> {
  _$SearchDoctorsFailureCopyWithImpl(this._self, this._then);

  final SearchDoctorsFailure _self;
  final $Res Function(SearchDoctorsFailure) _then;

/// Create a copy of SearchDoctorsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SearchDoctorsFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchDoctorsInitial implements SearchDoctorsState {
  const SearchDoctorsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDoctorsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchDoctorsState.searchDoctorsInitial()';
}


}




/// @nodoc


class SearchDoctorsLoading implements SearchDoctorsState {
  const SearchDoctorsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDoctorsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchDoctorsState.searchDoctorsLoading()';
}


}




/// @nodoc


class SearchDoctorsSuccess implements SearchDoctorsState {
  const SearchDoctorsSuccess(final  List<DoctorsData>? doctors): _doctors = doctors;
  

 final  List<DoctorsData>? _doctors;
 List<DoctorsData>? get doctors {
  final value = _doctors;
  if (value == null) return null;
  if (_doctors is EqualUnmodifiableListView) return _doctors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SearchDoctorsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchDoctorsSuccessCopyWith<SearchDoctorsSuccess> get copyWith => _$SearchDoctorsSuccessCopyWithImpl<SearchDoctorsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDoctorsSuccess&&const DeepCollectionEquality().equals(other._doctors, _doctors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctors));

@override
String toString() {
  return 'SearchDoctorsState.searchDoctorsSuccess(doctors: $doctors)';
}


}

/// @nodoc
abstract mixin class $SearchDoctorsSuccessCopyWith<$Res> implements $SearchDoctorsStateCopyWith<$Res> {
  factory $SearchDoctorsSuccessCopyWith(SearchDoctorsSuccess value, $Res Function(SearchDoctorsSuccess) _then) = _$SearchDoctorsSuccessCopyWithImpl;
@useResult
$Res call({
 List<DoctorsData>? doctors
});




}
/// @nodoc
class _$SearchDoctorsSuccessCopyWithImpl<$Res>
    implements $SearchDoctorsSuccessCopyWith<$Res> {
  _$SearchDoctorsSuccessCopyWithImpl(this._self, this._then);

  final SearchDoctorsSuccess _self;
  final $Res Function(SearchDoctorsSuccess) _then;

/// Create a copy of SearchDoctorsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? doctors = freezed,}) {
  return _then(SearchDoctorsSuccess(
freezed == doctors ? _self._doctors : doctors // ignore: cast_nullable_to_non_nullable
as List<DoctorsData>?,
  ));
}


}

// dart format on
