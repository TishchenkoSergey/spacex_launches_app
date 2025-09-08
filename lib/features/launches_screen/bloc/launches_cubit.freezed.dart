// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launches_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LaunchesState {

 int get currentIndex; List<LaunchModel> get launchesList; List<LaunchModel> get sortedLaunchesList; List<RocketModel> get rocketsInfo; String? get rocketsError; String? get launchesError;
/// Create a copy of LaunchesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LaunchesStateCopyWith<LaunchesState> get copyWith => _$LaunchesStateCopyWithImpl<LaunchesState>(this as LaunchesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LaunchesState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&const DeepCollectionEquality().equals(other.launchesList, launchesList)&&const DeepCollectionEquality().equals(other.sortedLaunchesList, sortedLaunchesList)&&const DeepCollectionEquality().equals(other.rocketsInfo, rocketsInfo)&&(identical(other.rocketsError, rocketsError) || other.rocketsError == rocketsError)&&(identical(other.launchesError, launchesError) || other.launchesError == launchesError));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,const DeepCollectionEquality().hash(launchesList),const DeepCollectionEquality().hash(sortedLaunchesList),const DeepCollectionEquality().hash(rocketsInfo),rocketsError,launchesError);

@override
String toString() {
  return 'LaunchesState(currentIndex: $currentIndex, launchesList: $launchesList, sortedLaunchesList: $sortedLaunchesList, rocketsInfo: $rocketsInfo, rocketsError: $rocketsError, launchesError: $launchesError)';
}


}

/// @nodoc
abstract mixin class $LaunchesStateCopyWith<$Res>  {
  factory $LaunchesStateCopyWith(LaunchesState value, $Res Function(LaunchesState) _then) = _$LaunchesStateCopyWithImpl;
@useResult
$Res call({
 int currentIndex, List<LaunchModel> launchesList, List<LaunchModel> sortedLaunchesList, List<RocketModel> rocketsInfo, String? rocketsError, String? launchesError
});




}
/// @nodoc
class _$LaunchesStateCopyWithImpl<$Res>
    implements $LaunchesStateCopyWith<$Res> {
  _$LaunchesStateCopyWithImpl(this._self, this._then);

  final LaunchesState _self;
  final $Res Function(LaunchesState) _then;

/// Create a copy of LaunchesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentIndex = null,Object? launchesList = null,Object? sortedLaunchesList = null,Object? rocketsInfo = null,Object? rocketsError = freezed,Object? launchesError = freezed,}) {
  return _then(_self.copyWith(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,launchesList: null == launchesList ? _self.launchesList : launchesList // ignore: cast_nullable_to_non_nullable
as List<LaunchModel>,sortedLaunchesList: null == sortedLaunchesList ? _self.sortedLaunchesList : sortedLaunchesList // ignore: cast_nullable_to_non_nullable
as List<LaunchModel>,rocketsInfo: null == rocketsInfo ? _self.rocketsInfo : rocketsInfo // ignore: cast_nullable_to_non_nullable
as List<RocketModel>,rocketsError: freezed == rocketsError ? _self.rocketsError : rocketsError // ignore: cast_nullable_to_non_nullable
as String?,launchesError: freezed == launchesError ? _self.launchesError : launchesError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LaunchesState].
extension LaunchesStatePatterns on LaunchesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LaunchesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LaunchesState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LaunchesState value)  $default,){
final _that = this;
switch (_that) {
case _LaunchesState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LaunchesState value)?  $default,){
final _that = this;
switch (_that) {
case _LaunchesState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentIndex,  List<LaunchModel> launchesList,  List<LaunchModel> sortedLaunchesList,  List<RocketModel> rocketsInfo,  String? rocketsError,  String? launchesError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LaunchesState() when $default != null:
return $default(_that.currentIndex,_that.launchesList,_that.sortedLaunchesList,_that.rocketsInfo,_that.rocketsError,_that.launchesError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentIndex,  List<LaunchModel> launchesList,  List<LaunchModel> sortedLaunchesList,  List<RocketModel> rocketsInfo,  String? rocketsError,  String? launchesError)  $default,) {final _that = this;
switch (_that) {
case _LaunchesState():
return $default(_that.currentIndex,_that.launchesList,_that.sortedLaunchesList,_that.rocketsInfo,_that.rocketsError,_that.launchesError);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentIndex,  List<LaunchModel> launchesList,  List<LaunchModel> sortedLaunchesList,  List<RocketModel> rocketsInfo,  String? rocketsError,  String? launchesError)?  $default,) {final _that = this;
switch (_that) {
case _LaunchesState() when $default != null:
return $default(_that.currentIndex,_that.launchesList,_that.sortedLaunchesList,_that.rocketsInfo,_that.rocketsError,_that.launchesError);case _:
  return null;

}
}

}

/// @nodoc


class _LaunchesState extends LaunchesState {
  const _LaunchesState({this.currentIndex = 0, final  List<LaunchModel> launchesList = const [], final  List<LaunchModel> sortedLaunchesList = const [], final  List<RocketModel> rocketsInfo = const [], this.rocketsError = null, this.launchesError = null}): _launchesList = launchesList,_sortedLaunchesList = sortedLaunchesList,_rocketsInfo = rocketsInfo,super._();
  

@override@JsonKey() final  int currentIndex;
 final  List<LaunchModel> _launchesList;
@override@JsonKey() List<LaunchModel> get launchesList {
  if (_launchesList is EqualUnmodifiableListView) return _launchesList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_launchesList);
}

 final  List<LaunchModel> _sortedLaunchesList;
@override@JsonKey() List<LaunchModel> get sortedLaunchesList {
  if (_sortedLaunchesList is EqualUnmodifiableListView) return _sortedLaunchesList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sortedLaunchesList);
}

 final  List<RocketModel> _rocketsInfo;
@override@JsonKey() List<RocketModel> get rocketsInfo {
  if (_rocketsInfo is EqualUnmodifiableListView) return _rocketsInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rocketsInfo);
}

@override@JsonKey() final  String? rocketsError;
@override@JsonKey() final  String? launchesError;

/// Create a copy of LaunchesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LaunchesStateCopyWith<_LaunchesState> get copyWith => __$LaunchesStateCopyWithImpl<_LaunchesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LaunchesState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&const DeepCollectionEquality().equals(other._launchesList, _launchesList)&&const DeepCollectionEquality().equals(other._sortedLaunchesList, _sortedLaunchesList)&&const DeepCollectionEquality().equals(other._rocketsInfo, _rocketsInfo)&&(identical(other.rocketsError, rocketsError) || other.rocketsError == rocketsError)&&(identical(other.launchesError, launchesError) || other.launchesError == launchesError));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,const DeepCollectionEquality().hash(_launchesList),const DeepCollectionEquality().hash(_sortedLaunchesList),const DeepCollectionEquality().hash(_rocketsInfo),rocketsError,launchesError);

@override
String toString() {
  return 'LaunchesState(currentIndex: $currentIndex, launchesList: $launchesList, sortedLaunchesList: $sortedLaunchesList, rocketsInfo: $rocketsInfo, rocketsError: $rocketsError, launchesError: $launchesError)';
}


}

/// @nodoc
abstract mixin class _$LaunchesStateCopyWith<$Res> implements $LaunchesStateCopyWith<$Res> {
  factory _$LaunchesStateCopyWith(_LaunchesState value, $Res Function(_LaunchesState) _then) = __$LaunchesStateCopyWithImpl;
@override @useResult
$Res call({
 int currentIndex, List<LaunchModel> launchesList, List<LaunchModel> sortedLaunchesList, List<RocketModel> rocketsInfo, String? rocketsError, String? launchesError
});




}
/// @nodoc
class __$LaunchesStateCopyWithImpl<$Res>
    implements _$LaunchesStateCopyWith<$Res> {
  __$LaunchesStateCopyWithImpl(this._self, this._then);

  final _LaunchesState _self;
  final $Res Function(_LaunchesState) _then;

/// Create a copy of LaunchesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentIndex = null,Object? launchesList = null,Object? sortedLaunchesList = null,Object? rocketsInfo = null,Object? rocketsError = freezed,Object? launchesError = freezed,}) {
  return _then(_LaunchesState(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,launchesList: null == launchesList ? _self._launchesList : launchesList // ignore: cast_nullable_to_non_nullable
as List<LaunchModel>,sortedLaunchesList: null == sortedLaunchesList ? _self._sortedLaunchesList : sortedLaunchesList // ignore: cast_nullable_to_non_nullable
as List<LaunchModel>,rocketsInfo: null == rocketsInfo ? _self._rocketsInfo : rocketsInfo // ignore: cast_nullable_to_non_nullable
as List<RocketModel>,rocketsError: freezed == rocketsError ? _self.rocketsError : rocketsError // ignore: cast_nullable_to_non_nullable
as String?,launchesError: freezed == launchesError ? _self.launchesError : launchesError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
