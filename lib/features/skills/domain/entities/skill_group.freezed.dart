// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skill_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SkillGroup {

 String get title; List<String> get skills;
/// Create a copy of SkillGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkillGroupCopyWith<SkillGroup> get copyWith => _$SkillGroupCopyWithImpl<SkillGroup>(this as SkillGroup, _$identity);

  /// Serializes this SkillGroup to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkillGroup&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.skills, skills));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(skills));

@override
String toString() {
  return 'SkillGroup(title: $title, skills: $skills)';
}


}

/// @nodoc
abstract mixin class $SkillGroupCopyWith<$Res>  {
  factory $SkillGroupCopyWith(SkillGroup value, $Res Function(SkillGroup) _then) = _$SkillGroupCopyWithImpl;
@useResult
$Res call({
 String title, List<String> skills
});




}
/// @nodoc
class _$SkillGroupCopyWithImpl<$Res>
    implements $SkillGroupCopyWith<$Res> {
  _$SkillGroupCopyWithImpl(this._self, this._then);

  final SkillGroup _self;
  final $Res Function(SkillGroup) _then;

/// Create a copy of SkillGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? skills = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [SkillGroup].
extension SkillGroupPatterns on SkillGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkillGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkillGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkillGroup value)  $default,){
final _that = this;
switch (_that) {
case _SkillGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkillGroup value)?  $default,){
final _that = this;
switch (_that) {
case _SkillGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  List<String> skills)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkillGroup() when $default != null:
return $default(_that.title,_that.skills);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  List<String> skills)  $default,) {final _that = this;
switch (_that) {
case _SkillGroup():
return $default(_that.title,_that.skills);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  List<String> skills)?  $default,) {final _that = this;
switch (_that) {
case _SkillGroup() when $default != null:
return $default(_that.title,_that.skills);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SkillGroup implements SkillGroup {
  const _SkillGroup({required this.title, final  List<String> skills = const <String>[]}): _skills = skills;
  factory _SkillGroup.fromJson(Map<String, dynamic> json) => _$SkillGroupFromJson(json);

@override final  String title;
 final  List<String> _skills;
@override@JsonKey() List<String> get skills {
  if (_skills is EqualUnmodifiableListView) return _skills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skills);
}


/// Create a copy of SkillGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkillGroupCopyWith<_SkillGroup> get copyWith => __$SkillGroupCopyWithImpl<_SkillGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkillGroupToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkillGroup&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._skills, _skills));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_skills));

@override
String toString() {
  return 'SkillGroup(title: $title, skills: $skills)';
}


}

/// @nodoc
abstract mixin class _$SkillGroupCopyWith<$Res> implements $SkillGroupCopyWith<$Res> {
  factory _$SkillGroupCopyWith(_SkillGroup value, $Res Function(_SkillGroup) _then) = __$SkillGroupCopyWithImpl;
@override @useResult
$Res call({
 String title, List<String> skills
});




}
/// @nodoc
class __$SkillGroupCopyWithImpl<$Res>
    implements _$SkillGroupCopyWith<$Res> {
  __$SkillGroupCopyWithImpl(this._self, this._then);

  final _SkillGroup _self;
  final $Res Function(_SkillGroup) _then;

/// Create a copy of SkillGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? skills = null,}) {
  return _then(_SkillGroup(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,skills: null == skills ? _self._skills : skills // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
