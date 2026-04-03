// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'experience_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExperienceState {

 bool get isLoading; List<ExperienceEntry> get entries; String? get errorMessage;
/// Create a copy of ExperienceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExperienceStateCopyWith<ExperienceState> get copyWith => _$ExperienceStateCopyWithImpl<ExperienceState>(this as ExperienceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExperienceState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.entries, entries)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(entries),errorMessage);

@override
String toString() {
  return 'ExperienceState(isLoading: $isLoading, entries: $entries, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ExperienceStateCopyWith<$Res>  {
  factory $ExperienceStateCopyWith(ExperienceState value, $Res Function(ExperienceState) _then) = _$ExperienceStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<ExperienceEntry> entries, String? errorMessage
});




}
/// @nodoc
class _$ExperienceStateCopyWithImpl<$Res>
    implements $ExperienceStateCopyWith<$Res> {
  _$ExperienceStateCopyWithImpl(this._self, this._then);

  final ExperienceState _self;
  final $Res Function(ExperienceState) _then;

/// Create a copy of ExperienceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? entries = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<ExperienceEntry>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExperienceState].
extension ExperienceStatePatterns on ExperienceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExperienceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExperienceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExperienceState value)  $default,){
final _that = this;
switch (_that) {
case _ExperienceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExperienceState value)?  $default,){
final _that = this;
switch (_that) {
case _ExperienceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<ExperienceEntry> entries,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExperienceState() when $default != null:
return $default(_that.isLoading,_that.entries,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<ExperienceEntry> entries,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ExperienceState():
return $default(_that.isLoading,_that.entries,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<ExperienceEntry> entries,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ExperienceState() when $default != null:
return $default(_that.isLoading,_that.entries,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ExperienceState implements ExperienceState {
  const _ExperienceState({this.isLoading = false, final  List<ExperienceEntry> entries = const <ExperienceEntry>[], this.errorMessage}): _entries = entries;
  

@override@JsonKey() final  bool isLoading;
 final  List<ExperienceEntry> _entries;
@override@JsonKey() List<ExperienceEntry> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}

@override final  String? errorMessage;

/// Create a copy of ExperienceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExperienceStateCopyWith<_ExperienceState> get copyWith => __$ExperienceStateCopyWithImpl<_ExperienceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExperienceState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._entries, _entries)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_entries),errorMessage);

@override
String toString() {
  return 'ExperienceState(isLoading: $isLoading, entries: $entries, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ExperienceStateCopyWith<$Res> implements $ExperienceStateCopyWith<$Res> {
  factory _$ExperienceStateCopyWith(_ExperienceState value, $Res Function(_ExperienceState) _then) = __$ExperienceStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<ExperienceEntry> entries, String? errorMessage
});




}
/// @nodoc
class __$ExperienceStateCopyWithImpl<$Res>
    implements _$ExperienceStateCopyWith<$Res> {
  __$ExperienceStateCopyWithImpl(this._self, this._then);

  final _ExperienceState _self;
  final $Res Function(_ExperienceState) _then;

/// Create a copy of ExperienceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? entries = null,Object? errorMessage = freezed,}) {
  return _then(_ExperienceState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<ExperienceEntry>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
