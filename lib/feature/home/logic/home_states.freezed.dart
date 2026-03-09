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
mixin _$HomeStates {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeStates()';
}


}

/// @nodoc
class $HomeStatesCopyWith<$Res>  {
$HomeStatesCopyWith(HomeStates _, $Res Function(HomeStates) __);
}


/// Adds pattern-matching-related methods to [HomeStates].
extension HomeStatesPatterns on HomeStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SpecializationsLoading value)?  specializationsLoading,TResult Function( SpecializationsSuccess value)?  specializationsSuccess,TResult Function( SpecializationsError value)?  specializationsError,TResult Function( DoctorsLoading value)?  doctorsLoading,TResult Function( DoctorsSuccess value)?  doctorsSuccess,TResult Function( DoctorsError value)?  doctorsError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading(_that);case SpecializationsSuccess() when specializationsSuccess != null:
return specializationsSuccess(_that);case SpecializationsError() when specializationsError != null:
return specializationsError(_that);case DoctorsLoading() when doctorsLoading != null:
return doctorsLoading(_that);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that);case DoctorsError() when doctorsError != null:
return doctorsError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SpecializationsLoading value)  specializationsLoading,required TResult Function( SpecializationsSuccess value)  specializationsSuccess,required TResult Function( SpecializationsError value)  specializationsError,required TResult Function( DoctorsLoading value)  doctorsLoading,required TResult Function( DoctorsSuccess value)  doctorsSuccess,required TResult Function( DoctorsError value)  doctorsError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SpecializationsLoading():
return specializationsLoading(_that);case SpecializationsSuccess():
return specializationsSuccess(_that);case SpecializationsError():
return specializationsError(_that);case DoctorsLoading():
return doctorsLoading(_that);case DoctorsSuccess():
return doctorsSuccess(_that);case DoctorsError():
return doctorsError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SpecializationsLoading value)?  specializationsLoading,TResult? Function( SpecializationsSuccess value)?  specializationsSuccess,TResult? Function( SpecializationsError value)?  specializationsError,TResult? Function( DoctorsLoading value)?  doctorsLoading,TResult? Function( DoctorsSuccess value)?  doctorsSuccess,TResult? Function( DoctorsError value)?  doctorsError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading(_that);case SpecializationsSuccess() when specializationsSuccess != null:
return specializationsSuccess(_that);case SpecializationsError() when specializationsError != null:
return specializationsError(_that);case DoctorsLoading() when doctorsLoading != null:
return doctorsLoading(_that);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that);case DoctorsError() when doctorsError != null:
return doctorsError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  specializationsLoading,TResult Function( List<SpecializationsModelData?>? specializationDataList)?  specializationsSuccess,TResult Function( String error)?  specializationsError,TResult Function()?  doctorsLoading,TResult Function( List<DoctorsData>? doctorsList)?  doctorsSuccess,TResult Function( String error)?  doctorsError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading();case SpecializationsSuccess() when specializationsSuccess != null:
return specializationsSuccess(_that.specializationDataList);case SpecializationsError() when specializationsError != null:
return specializationsError(_that.error);case DoctorsLoading() when doctorsLoading != null:
return doctorsLoading();case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that.doctorsList);case DoctorsError() when doctorsError != null:
return doctorsError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  specializationsLoading,required TResult Function( List<SpecializationsModelData?>? specializationDataList)  specializationsSuccess,required TResult Function( String error)  specializationsError,required TResult Function()  doctorsLoading,required TResult Function( List<DoctorsData>? doctorsList)  doctorsSuccess,required TResult Function( String error)  doctorsError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SpecializationsLoading():
return specializationsLoading();case SpecializationsSuccess():
return specializationsSuccess(_that.specializationDataList);case SpecializationsError():
return specializationsError(_that.error);case DoctorsLoading():
return doctorsLoading();case DoctorsSuccess():
return doctorsSuccess(_that.doctorsList);case DoctorsError():
return doctorsError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  specializationsLoading,TResult? Function( List<SpecializationsModelData?>? specializationDataList)?  specializationsSuccess,TResult? Function( String error)?  specializationsError,TResult? Function()?  doctorsLoading,TResult? Function( List<DoctorsData>? doctorsList)?  doctorsSuccess,TResult? Function( String error)?  doctorsError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading();case SpecializationsSuccess() when specializationsSuccess != null:
return specializationsSuccess(_that.specializationDataList);case SpecializationsError() when specializationsError != null:
return specializationsError(_that.error);case DoctorsLoading() when doctorsLoading != null:
return doctorsLoading();case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that.doctorsList);case DoctorsError() when doctorsError != null:
return doctorsError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeStates {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeStates.initial()';
}


}




/// @nodoc


class SpecializationsLoading implements HomeStates {
  const SpecializationsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeStates.specializationsLoading()';
}


}




/// @nodoc


class SpecializationsSuccess implements HomeStates {
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
$SpecializationsSuccessCopyWith<SpecializationsSuccess> get copyWith => _$SpecializationsSuccessCopyWithImpl<SpecializationsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsSuccess&&const DeepCollectionEquality().equals(other._specializationDataList, _specializationDataList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_specializationDataList));

@override
String toString() {
  return 'HomeStates.specializationsSuccess(specializationDataList: $specializationDataList)';
}


}

/// @nodoc
abstract mixin class $SpecializationsSuccessCopyWith<$Res> implements $HomeStatesCopyWith<$Res> {
  factory $SpecializationsSuccessCopyWith(SpecializationsSuccess value, $Res Function(SpecializationsSuccess) _then) = _$SpecializationsSuccessCopyWithImpl;
@useResult
$Res call({
 List<SpecializationsModelData?>? specializationDataList
});




}
/// @nodoc
class _$SpecializationsSuccessCopyWithImpl<$Res>
    implements $SpecializationsSuccessCopyWith<$Res> {
  _$SpecializationsSuccessCopyWithImpl(this._self, this._then);

  final SpecializationsSuccess _self;
  final $Res Function(SpecializationsSuccess) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specializationDataList = freezed,}) {
  return _then(SpecializationsSuccess(
freezed == specializationDataList ? _self._specializationDataList : specializationDataList // ignore: cast_nullable_to_non_nullable
as List<SpecializationsModelData?>?,
  ));
}


}

/// @nodoc


class SpecializationsError implements HomeStates {
  const SpecializationsError(this.error);
  

 final  String error;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsErrorCopyWith<SpecializationsError> get copyWith => _$SpecializationsErrorCopyWithImpl<SpecializationsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeStates.specializationsError(error: $error)';
}


}

/// @nodoc
abstract mixin class $SpecializationsErrorCopyWith<$Res> implements $HomeStatesCopyWith<$Res> {
  factory $SpecializationsErrorCopyWith(SpecializationsError value, $Res Function(SpecializationsError) _then) = _$SpecializationsErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$SpecializationsErrorCopyWithImpl<$Res>
    implements $SpecializationsErrorCopyWith<$Res> {
  _$SpecializationsErrorCopyWithImpl(this._self, this._then);

  final SpecializationsError _self;
  final $Res Function(SpecializationsError) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SpecializationsError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DoctorsLoading implements HomeStates {
  const DoctorsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeStates.doctorsLoading()';
}


}




/// @nodoc


class DoctorsSuccess implements HomeStates {
  const DoctorsSuccess(final  List<DoctorsData>? doctorsList): _doctorsList = doctorsList;
  

 final  List<DoctorsData>? _doctorsList;
 List<DoctorsData>? get doctorsList {
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
$DoctorsSuccessCopyWith<DoctorsSuccess> get copyWith => _$DoctorsSuccessCopyWithImpl<DoctorsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsSuccess&&const DeepCollectionEquality().equals(other._doctorsList, _doctorsList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctorsList));

@override
String toString() {
  return 'HomeStates.doctorsSuccess(doctorsList: $doctorsList)';
}


}

/// @nodoc
abstract mixin class $DoctorsSuccessCopyWith<$Res> implements $HomeStatesCopyWith<$Res> {
  factory $DoctorsSuccessCopyWith(DoctorsSuccess value, $Res Function(DoctorsSuccess) _then) = _$DoctorsSuccessCopyWithImpl;
@useResult
$Res call({
 List<DoctorsData>? doctorsList
});




}
/// @nodoc
class _$DoctorsSuccessCopyWithImpl<$Res>
    implements $DoctorsSuccessCopyWith<$Res> {
  _$DoctorsSuccessCopyWithImpl(this._self, this._then);

  final DoctorsSuccess _self;
  final $Res Function(DoctorsSuccess) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? doctorsList = freezed,}) {
  return _then(DoctorsSuccess(
freezed == doctorsList ? _self._doctorsList : doctorsList // ignore: cast_nullable_to_non_nullable
as List<DoctorsData>?,
  ));
}


}

/// @nodoc


class DoctorsError implements HomeStates {
  const DoctorsError(this.error);
  

 final  String error;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsErrorCopyWith<DoctorsError> get copyWith => _$DoctorsErrorCopyWithImpl<DoctorsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeStates.doctorsError(error: $error)';
}


}

/// @nodoc
abstract mixin class $DoctorsErrorCopyWith<$Res> implements $HomeStatesCopyWith<$Res> {
  factory $DoctorsErrorCopyWith(DoctorsError value, $Res Function(DoctorsError) _then) = _$DoctorsErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$DoctorsErrorCopyWithImpl<$Res>
    implements $DoctorsErrorCopyWith<$Res> {
  _$DoctorsErrorCopyWithImpl(this._self, this._then);

  final DoctorsError _self;
  final $Res Function(DoctorsError) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(DoctorsError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
