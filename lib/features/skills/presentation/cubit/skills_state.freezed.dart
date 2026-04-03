// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skills_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SkillsState {

 bool get isLoading; List<SkillGroup> get groups; String? get errorMessage;
/// Create a copy of SkillsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkillsStateCopyWith<SkillsState> get copyWith => _$SkillsStateCopyWithImpl<SkillsState>(this as SkillsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkillsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.groups, groups)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(groups),errorMessage);

@override
String toString() {
  return 'SkillsState(isLoading: $isLoading, groups: $groups, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SkillsStateCopyWith<$Res>  {
  factory $SkillsStateCopyWith(SkillsState value, $Res Function(SkillsState) _then) = _$SkillsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<SkillGroup> groups, String? errorMessage
});




}
/// @nodoc
class _$SkillsStateCopyWithImpl<$Res>
    implements $SkillsStateCopyWith<$Res> {
  _$SkillsStateCopyWithImpl(this._self, this._then);

  final SkillsState _self;
  final $Res Function(SkillsState) _then;

/// Create a copy of SkillsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? groups = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,groups: null == groups ? _self.groups : groups // ignore: cast_nullable_to_non_nullable
as List<SkillGroup>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SkillsState].
extension SkillsStatePatterns on SkillsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkillsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkillsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkillsState value)  $default,){
final _that = this;
switch (_that) {
case _SkillsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkillsState value)?  $default,){
final _that = this;
switch (_that) {
case _SkillsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<SkillGroup> groups,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkillsState() when $default != null:
return $default(_that.isLoading,_that.groups,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<SkillGroup> groups,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SkillsState():
return $default(_that.isLoading,_that.groups,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<SkillGroup> groups,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SkillsState() when $default != null:
return $default(_that.isLoading,_that.groups,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SkillsState implements SkillsState {
  const _SkillsState({this.isLoading = false, final  List<SkillGroup> groups = const <SkillGroup>[], this.errorMessage}): _groups = groups;
  

@override@JsonKey() final  bool isLoading;
 final  List<SkillGroup> _groups;
@override@JsonKey() List<SkillGroup> get groups {
  if (_groups is EqualUnmodifiableListView) return _groups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_groups);
}

@override final  String? errorMessage;

/// Create a copy of SkillsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkillsStateCopyWith<_SkillsState> get copyWith => __$SkillsStateCopyWithImpl<_SkillsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkillsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._groups, _groups)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_groups),errorMessage);

@override
String toString() {
  return 'SkillsState(isLoading: $isLoading, groups: $groups, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SkillsStateCopyWith<$Res> implements $SkillsStateCopyWith<$Res> {
  factory _$SkillsStateCopyWith(_SkillsState value, $Res Function(_SkillsState) _then) = __$SkillsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<SkillGroup> groups, String? errorMessage
});




}
/// @nodoc
class __$SkillsStateCopyWithImpl<$Res>
    implements _$SkillsStateCopyWith<$Res> {
  __$SkillsStateCopyWithImpl(this._self, this._then);

  final _SkillsState _self;
  final $Res Function(_SkillsState) _then;

/// Create a copy of SkillsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? groups = null,Object? errorMessage = freezed,}) {
  return _then(_SkillsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,groups: null == groups ? _self._groups : groups // ignore: cast_nullable_to_non_nullable
as List<SkillGroup>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
