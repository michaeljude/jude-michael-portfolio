// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'experience_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExperienceEntry {

 String get id; String get role; String get dateRange; List<String> get highlights;
/// Create a copy of ExperienceEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExperienceEntryCopyWith<ExperienceEntry> get copyWith => _$ExperienceEntryCopyWithImpl<ExperienceEntry>(this as ExperienceEntry, _$identity);

  /// Serializes this ExperienceEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExperienceEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.role, role) || other.role == role)&&(identical(other.dateRange, dateRange) || other.dateRange == dateRange)&&const DeepCollectionEquality().equals(other.highlights, highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,role,dateRange,const DeepCollectionEquality().hash(highlights));

@override
String toString() {
  return 'ExperienceEntry(id: $id, role: $role, dateRange: $dateRange, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class $ExperienceEntryCopyWith<$Res>  {
  factory $ExperienceEntryCopyWith(ExperienceEntry value, $Res Function(ExperienceEntry) _then) = _$ExperienceEntryCopyWithImpl;
@useResult
$Res call({
 String id, String role, String dateRange, List<String> highlights
});




}
/// @nodoc
class _$ExperienceEntryCopyWithImpl<$Res>
    implements $ExperienceEntryCopyWith<$Res> {
  _$ExperienceEntryCopyWithImpl(this._self, this._then);

  final ExperienceEntry _self;
  final $Res Function(ExperienceEntry) _then;

/// Create a copy of ExperienceEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? role = null,Object? dateRange = null,Object? highlights = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,dateRange: null == dateRange ? _self.dateRange : dateRange // ignore: cast_nullable_to_non_nullable
as String,highlights: null == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ExperienceEntry].
extension ExperienceEntryPatterns on ExperienceEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExperienceEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExperienceEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExperienceEntry value)  $default,){
final _that = this;
switch (_that) {
case _ExperienceEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExperienceEntry value)?  $default,){
final _that = this;
switch (_that) {
case _ExperienceEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String role,  String dateRange,  List<String> highlights)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExperienceEntry() when $default != null:
return $default(_that.id,_that.role,_that.dateRange,_that.highlights);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String role,  String dateRange,  List<String> highlights)  $default,) {final _that = this;
switch (_that) {
case _ExperienceEntry():
return $default(_that.id,_that.role,_that.dateRange,_that.highlights);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String role,  String dateRange,  List<String> highlights)?  $default,) {final _that = this;
switch (_that) {
case _ExperienceEntry() when $default != null:
return $default(_that.id,_that.role,_that.dateRange,_that.highlights);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExperienceEntry implements ExperienceEntry {
  const _ExperienceEntry({required this.id, required this.role, required this.dateRange, final  List<String> highlights = const <String>[]}): _highlights = highlights;
  factory _ExperienceEntry.fromJson(Map<String, dynamic> json) => _$ExperienceEntryFromJson(json);

@override final  String id;
@override final  String role;
@override final  String dateRange;
 final  List<String> _highlights;
@override@JsonKey() List<String> get highlights {
  if (_highlights is EqualUnmodifiableListView) return _highlights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_highlights);
}


/// Create a copy of ExperienceEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExperienceEntryCopyWith<_ExperienceEntry> get copyWith => __$ExperienceEntryCopyWithImpl<_ExperienceEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExperienceEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExperienceEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.role, role) || other.role == role)&&(identical(other.dateRange, dateRange) || other.dateRange == dateRange)&&const DeepCollectionEquality().equals(other._highlights, _highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,role,dateRange,const DeepCollectionEquality().hash(_highlights));

@override
String toString() {
  return 'ExperienceEntry(id: $id, role: $role, dateRange: $dateRange, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class _$ExperienceEntryCopyWith<$Res> implements $ExperienceEntryCopyWith<$Res> {
  factory _$ExperienceEntryCopyWith(_ExperienceEntry value, $Res Function(_ExperienceEntry) _then) = __$ExperienceEntryCopyWithImpl;
@override @useResult
$Res call({
 String id, String role, String dateRange, List<String> highlights
});




}
/// @nodoc
class __$ExperienceEntryCopyWithImpl<$Res>
    implements _$ExperienceEntryCopyWith<$Res> {
  __$ExperienceEntryCopyWithImpl(this._self, this._then);

  final _ExperienceEntry _self;
  final $Res Function(_ExperienceEntry) _then;

/// Create a copy of ExperienceEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? role = null,Object? dateRange = null,Object? highlights = null,}) {
  return _then(_ExperienceEntry(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,dateRange: null == dateRange ? _self.dateRange : dateRange // ignore: cast_nullable_to_non_nullable
as String,highlights: null == highlights ? _self._highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
