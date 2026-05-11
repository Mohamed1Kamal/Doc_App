// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeStates<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStates<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeStates<$T>()';
}


}

/// @nodoc
class $HomeStatesCopyWith<T,$Res>  {
$HomeStatesCopyWith(HomeStates<T> _, $Res Function(HomeStates<T>) __);
}


/// Adds pattern-matching-related methods to [HomeStates].
extension HomeStatesPatterns<T> on HomeStates<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( SpecializationsLoading<T> value)?  specializationsLoading,TResult Function( SpecializationsSuccess<T> value)?  specializationsSuccess,TResult Function( SpecializationsError<T> value)?  specializationsError,TResult Function( DoctorsSuccess<T> value)?  specializationDoctorsSuccess,TResult Function( DoctorsError<T> value)?  specializationDoctorsError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading(_that);case SpecializationsSuccess() when specializationsSuccess != null:
return specializationsSuccess(_that);case SpecializationsError() when specializationsError != null:
return specializationsError(_that);case DoctorsSuccess() when specializationDoctorsSuccess != null:
return specializationDoctorsSuccess(_that);case DoctorsError() when specializationDoctorsError != null:
return specializationDoctorsError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( SpecializationsLoading<T> value)  specializationsLoading,required TResult Function( SpecializationsSuccess<T> value)  specializationsSuccess,required TResult Function( SpecializationsError<T> value)  specializationsError,required TResult Function( DoctorsSuccess<T> value)  specializationDoctorsSuccess,required TResult Function( DoctorsError<T> value)  specializationDoctorsError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SpecializationsLoading():
return specializationsLoading(_that);case SpecializationsSuccess():
return specializationsSuccess(_that);case SpecializationsError():
return specializationsError(_that);case DoctorsSuccess():
return specializationDoctorsSuccess(_that);case DoctorsError():
return specializationDoctorsError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( SpecializationsLoading<T> value)?  specializationsLoading,TResult? Function( SpecializationsSuccess<T> value)?  specializationsSuccess,TResult? Function( SpecializationsError<T> value)?  specializationsError,TResult? Function( DoctorsSuccess<T> value)?  specializationDoctorsSuccess,TResult? Function( DoctorsError<T> value)?  specializationDoctorsError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading(_that);case SpecializationsSuccess() when specializationsSuccess != null:
return specializationsSuccess(_that);case SpecializationsError() when specializationsError != null:
return specializationsError(_that);case DoctorsSuccess() when specializationDoctorsSuccess != null:
return specializationDoctorsSuccess(_that);case DoctorsError() when specializationDoctorsError != null:
return specializationDoctorsError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  specializationsLoading,TResult Function( List<SpecializationsModelData?>? specializationDataList)?  specializationsSuccess,TResult Function( String error)?  specializationsError,TResult Function( List<DoctorsModelData?>? doctorsList)?  specializationDoctorsSuccess,TResult Function( String error)?  specializationDoctorsError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading();case SpecializationsSuccess() when specializationsSuccess != null:
return specializationsSuccess(_that.specializationDataList);case SpecializationsError() when specializationsError != null:
return specializationsError(_that.error);case DoctorsSuccess() when specializationDoctorsSuccess != null:
return specializationDoctorsSuccess(_that.doctorsList);case DoctorsError() when specializationDoctorsError != null:
return specializationDoctorsError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  specializationsLoading,required TResult Function( List<SpecializationsModelData?>? specializationDataList)  specializationsSuccess,required TResult Function( String error)  specializationsError,required TResult Function( List<DoctorsModelData?>? doctorsList)  specializationDoctorsSuccess,required TResult Function( String error)  specializationDoctorsError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SpecializationsLoading():
return specializationsLoading();case SpecializationsSuccess():
return specializationsSuccess(_that.specializationDataList);case SpecializationsError():
return specializationsError(_that.error);case DoctorsSuccess():
return specializationDoctorsSuccess(_that.doctorsList);case DoctorsError():
return specializationDoctorsError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  specializationsLoading,TResult? Function( List<SpecializationsModelData?>? specializationDataList)?  specializationsSuccess,TResult? Function( String error)?  specializationsError,TResult? Function( List<DoctorsModelData?>? doctorsList)?  specializationDoctorsSuccess,TResult? Function( String error)?  specializationDoctorsError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading();case SpecializationsSuccess() when specializationsSuccess != null:
return specializationsSuccess(_that.specializationDataList);case SpecializationsError() when specializationsError != null:
return specializationsError(_that.error);case DoctorsSuccess() when specializationDoctorsSuccess != null:
return specializationDoctorsSuccess(_that.doctorsList);case DoctorsError() when specializationDoctorsError != null:
return specializationDoctorsError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements HomeStates<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeStates<$T>.initial()';
}


}




/// @nodoc


class SpecializationsLoading<T> implements HomeStates<T> {
  const SpecializationsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeStates<$T>.specializationsLoading()';
}


}




/// @nodoc


class SpecializationsSuccess<T> implements HomeStates<T> {
  const SpecializationsSuccess(final  List<SpecializationsModelData?>? specializationDataList): _specializationDataList = specializationDataList;
  

 final  List<SpecializationsModelData?>? _specializationDataList;
 List<SpecializationsModelData?>? get specializationDataList {
  final value = _specializationDataList;
  if (value == null) return null;
  if (_specializationDataList is EqualUnmodifiableListView) return _specializationDataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsSuccessCopyWith<T, SpecializationsSuccess<T>> get copyWith => _$SpecializationsSuccessCopyWithImpl<T, SpecializationsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsSuccess<T>&&const DeepCollectionEquality().equals(other._specializationDataList, _specializationDataList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_specializationDataList));

@override
String toString() {
  return 'HomeStates<$T>.specializationsSuccess(specializationDataList: $specializationDataList)';
}


}

/// @nodoc
abstract mixin class $SpecializationsSuccessCopyWith<T,$Res> implements $HomeStatesCopyWith<T, $Res> {
  factory $SpecializationsSuccessCopyWith(SpecializationsSuccess<T> value, $Res Function(SpecializationsSuccess<T>) _then) = _$SpecializationsSuccessCopyWithImpl;
@useResult
$Res call({
 List<SpecializationsModelData?>? specializationDataList
});




}
/// @nodoc
class _$SpecializationsSuccessCopyWithImpl<T,$Res>
    implements $SpecializationsSuccessCopyWith<T, $Res> {
  _$SpecializationsSuccessCopyWithImpl(this._self, this._then);

  final SpecializationsSuccess<T> _self;
  final $Res Function(SpecializationsSuccess<T>) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specializationDataList = freezed,}) {
  return _then(SpecializationsSuccess<T>(
freezed == specializationDataList ? _self._specializationDataList : specializationDataList // ignore: cast_nullable_to_non_nullable
as List<SpecializationsModelData?>?,
  ));
}


}

/// @nodoc


class SpecializationsError<T> implements HomeStates<T> {
  const SpecializationsError(this.error);
  

 final  String error;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsErrorCopyWith<T, SpecializationsError<T>> get copyWith => _$SpecializationsErrorCopyWithImpl<T, SpecializationsError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeStates<$T>.specializationsError(error: $error)';
}


}

/// @nodoc
abstract mixin class $SpecializationsErrorCopyWith<T,$Res> implements $HomeStatesCopyWith<T, $Res> {
  factory $SpecializationsErrorCopyWith(SpecializationsError<T> value, $Res Function(SpecializationsError<T>) _then) = _$SpecializationsErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$SpecializationsErrorCopyWithImpl<T,$Res>
    implements $SpecializationsErrorCopyWith<T, $Res> {
  _$SpecializationsErrorCopyWithImpl(this._self, this._then);

  final SpecializationsError<T> _self;
  final $Res Function(SpecializationsError<T>) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SpecializationsError<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DoctorsSuccess<T> implements HomeStates<T> {
  const DoctorsSuccess(final  List<DoctorsModelData?>? doctorsList): _doctorsList = doctorsList;
  

 final  List<DoctorsModelData?>? _doctorsList;
 List<DoctorsModelData?>? get doctorsList {
  final value = _doctorsList;
  if (value == null) return null;
  if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsSuccessCopyWith<T, DoctorsSuccess<T>> get copyWith => _$DoctorsSuccessCopyWithImpl<T, DoctorsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsSuccess<T>&&const DeepCollectionEquality().equals(other._doctorsList, _doctorsList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctorsList));

@override
String toString() {
  return 'HomeStates<$T>.specializationDoctorsSuccess(doctorsList: $doctorsList)';
}


}

/// @nodoc
abstract mixin class $DoctorsSuccessCopyWith<T,$Res> implements $HomeStatesCopyWith<T, $Res> {
  factory $DoctorsSuccessCopyWith(DoctorsSuccess<T> value, $Res Function(DoctorsSuccess<T>) _then) = _$DoctorsSuccessCopyWithImpl;
@useResult
$Res call({
 List<DoctorsModelData?>? doctorsList
});




}
/// @nodoc
class _$DoctorsSuccessCopyWithImpl<T,$Res>
    implements $DoctorsSuccessCopyWith<T, $Res> {
  _$DoctorsSuccessCopyWithImpl(this._self, this._then);

  final DoctorsSuccess<T> _self;
  final $Res Function(DoctorsSuccess<T>) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? doctorsList = freezed,}) {
  return _then(DoctorsSuccess<T>(
freezed == doctorsList ? _self._doctorsList : doctorsList // ignore: cast_nullable_to_non_nullable
as List<DoctorsModelData?>?,
  ));
}


}

/// @nodoc


class DoctorsError<T> implements HomeStates<T> {
  const DoctorsError(this.error);
  

 final  String error;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsErrorCopyWith<T, DoctorsError<T>> get copyWith => _$DoctorsErrorCopyWithImpl<T, DoctorsError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeStates<$T>.specializationDoctorsError(error: $error)';
}


}

/// @nodoc
abstract mixin class $DoctorsErrorCopyWith<T,$Res> implements $HomeStatesCopyWith<T, $Res> {
  factory $DoctorsErrorCopyWith(DoctorsError<T> value, $Res Function(DoctorsError<T>) _then) = _$DoctorsErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$DoctorsErrorCopyWithImpl<T,$Res>
    implements $DoctorsErrorCopyWith<T, $Res> {
  _$DoctorsErrorCopyWithImpl(this._self, this._then);

  final DoctorsError<T> _self;
  final $Res Function(DoctorsError<T>) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(DoctorsError<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
