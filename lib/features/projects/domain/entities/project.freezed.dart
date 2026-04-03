// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProjectMetric {

 String get value; String get label;
/// Create a copy of ProjectMetric
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectMetricCopyWith<ProjectMetric> get copyWith => _$ProjectMetricCopyWithImpl<ProjectMetric>(this as ProjectMetric, _$identity);

  /// Serializes this ProjectMetric to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectMetric&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,label);

@override
String toString() {
  return 'ProjectMetric(value: $value, label: $label)';
}


}

/// @nodoc
abstract mixin class $ProjectMetricCopyWith<$Res>  {
  factory $ProjectMetricCopyWith(ProjectMetric value, $Res Function(ProjectMetric) _then) = _$ProjectMetricCopyWithImpl;
@useResult
$Res call({
 String value, String label
});




}
/// @nodoc
class _$ProjectMetricCopyWithImpl<$Res>
    implements $ProjectMetricCopyWith<$Res> {
  _$ProjectMetricCopyWithImpl(this._self, this._then);

  final ProjectMetric _self;
  final $Res Function(ProjectMetric) _then;

/// Create a copy of ProjectMetric
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? label = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProjectMetric].
extension ProjectMetricPatterns on ProjectMetric {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProjectMetric value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProjectMetric() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProjectMetric value)  $default,){
final _that = this;
switch (_that) {
case _ProjectMetric():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProjectMetric value)?  $default,){
final _that = this;
switch (_that) {
case _ProjectMetric() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value,  String label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProjectMetric() when $default != null:
return $default(_that.value,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value,  String label)  $default,) {final _that = this;
switch (_that) {
case _ProjectMetric():
return $default(_that.value,_that.label);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value,  String label)?  $default,) {final _that = this;
switch (_that) {
case _ProjectMetric() when $default != null:
return $default(_that.value,_that.label);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProjectMetric implements ProjectMetric {
  const _ProjectMetric({required this.value, required this.label});
  factory _ProjectMetric.fromJson(Map<String, dynamic> json) => _$ProjectMetricFromJson(json);

@override final  String value;
@override final  String label;

/// Create a copy of ProjectMetric
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectMetricCopyWith<_ProjectMetric> get copyWith => __$ProjectMetricCopyWithImpl<_ProjectMetric>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectMetricToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProjectMetric&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,label);

@override
String toString() {
  return 'ProjectMetric(value: $value, label: $label)';
}


}

/// @nodoc
abstract mixin class _$ProjectMetricCopyWith<$Res> implements $ProjectMetricCopyWith<$Res> {
  factory _$ProjectMetricCopyWith(_ProjectMetric value, $Res Function(_ProjectMetric) _then) = __$ProjectMetricCopyWithImpl;
@override @useResult
$Res call({
 String value, String label
});




}
/// @nodoc
class __$ProjectMetricCopyWithImpl<$Res>
    implements _$ProjectMetricCopyWith<$Res> {
  __$ProjectMetricCopyWithImpl(this._self, this._then);

  final _ProjectMetric _self;
  final $Res Function(_ProjectMetric) _then;

/// Create a copy of ProjectMetric
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? label = null,}) {
  return _then(_ProjectMetric(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Project {

 String get id; String get title; String get summary; String? get eyebrow; String? get statusLabel; String? get role; String? get dateRange; String? get narrative; List<ProjectMetric> get metrics; List<String> get tags; List<String> get imagePaths; String? get link;
/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectCopyWith<Project> get copyWith => _$ProjectCopyWithImpl<Project>(this as Project, _$identity);

  /// Serializes this Project to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Project&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.eyebrow, eyebrow) || other.eyebrow == eyebrow)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.role, role) || other.role == role)&&(identical(other.dateRange, dateRange) || other.dateRange == dateRange)&&(identical(other.narrative, narrative) || other.narrative == narrative)&&const DeepCollectionEquality().equals(other.metrics, metrics)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.imagePaths, imagePaths)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,summary,eyebrow,statusLabel,role,dateRange,narrative,const DeepCollectionEquality().hash(metrics),const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(imagePaths),link);

@override
String toString() {
  return 'Project(id: $id, title: $title, summary: $summary, eyebrow: $eyebrow, statusLabel: $statusLabel, role: $role, dateRange: $dateRange, narrative: $narrative, metrics: $metrics, tags: $tags, imagePaths: $imagePaths, link: $link)';
}


}

/// @nodoc
abstract mixin class $ProjectCopyWith<$Res>  {
  factory $ProjectCopyWith(Project value, $Res Function(Project) _then) = _$ProjectCopyWithImpl;
@useResult
$Res call({
 String id, String title, String summary, String? eyebrow, String? statusLabel, String? role, String? dateRange, String? narrative, List<ProjectMetric> metrics, List<String> tags, List<String> imagePaths, String? link
});




}
/// @nodoc
class _$ProjectCopyWithImpl<$Res>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._self, this._then);

  final Project _self;
  final $Res Function(Project) _then;

/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? summary = null,Object? eyebrow = freezed,Object? statusLabel = freezed,Object? role = freezed,Object? dateRange = freezed,Object? narrative = freezed,Object? metrics = null,Object? tags = null,Object? imagePaths = null,Object? link = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,eyebrow: freezed == eyebrow ? _self.eyebrow : eyebrow // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: freezed == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,dateRange: freezed == dateRange ? _self.dateRange : dateRange // ignore: cast_nullable_to_non_nullable
as String?,narrative: freezed == narrative ? _self.narrative : narrative // ignore: cast_nullable_to_non_nullable
as String?,metrics: null == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as List<ProjectMetric>,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,imagePaths: null == imagePaths ? _self.imagePaths : imagePaths // ignore: cast_nullable_to_non_nullable
as List<String>,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Project].
extension ProjectPatterns on Project {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Project value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Project() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Project value)  $default,){
final _that = this;
switch (_that) {
case _Project():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Project value)?  $default,){
final _that = this;
switch (_that) {
case _Project() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String summary,  String? eyebrow,  String? statusLabel,  String? role,  String? dateRange,  String? narrative,  List<ProjectMetric> metrics,  List<String> tags,  List<String> imagePaths,  String? link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Project() when $default != null:
return $default(_that.id,_that.title,_that.summary,_that.eyebrow,_that.statusLabel,_that.role,_that.dateRange,_that.narrative,_that.metrics,_that.tags,_that.imagePaths,_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String summary,  String? eyebrow,  String? statusLabel,  String? role,  String? dateRange,  String? narrative,  List<ProjectMetric> metrics,  List<String> tags,  List<String> imagePaths,  String? link)  $default,) {final _that = this;
switch (_that) {
case _Project():
return $default(_that.id,_that.title,_that.summary,_that.eyebrow,_that.statusLabel,_that.role,_that.dateRange,_that.narrative,_that.metrics,_that.tags,_that.imagePaths,_that.link);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String summary,  String? eyebrow,  String? statusLabel,  String? role,  String? dateRange,  String? narrative,  List<ProjectMetric> metrics,  List<String> tags,  List<String> imagePaths,  String? link)?  $default,) {final _that = this;
switch (_that) {
case _Project() when $default != null:
return $default(_that.id,_that.title,_that.summary,_that.eyebrow,_that.statusLabel,_that.role,_that.dateRange,_that.narrative,_that.metrics,_that.tags,_that.imagePaths,_that.link);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Project implements Project {
  const _Project({required this.id, required this.title, required this.summary, this.eyebrow, this.statusLabel, this.role, this.dateRange, this.narrative, final  List<ProjectMetric> metrics = const <ProjectMetric>[], final  List<String> tags = const <String>[], final  List<String> imagePaths = const <String>[], this.link}): _metrics = metrics,_tags = tags,_imagePaths = imagePaths;
  factory _Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);

@override final  String id;
@override final  String title;
@override final  String summary;
@override final  String? eyebrow;
@override final  String? statusLabel;
@override final  String? role;
@override final  String? dateRange;
@override final  String? narrative;
 final  List<ProjectMetric> _metrics;
@override@JsonKey() List<ProjectMetric> get metrics {
  if (_metrics is EqualUnmodifiableListView) return _metrics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_metrics);
}

 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<String> _imagePaths;
@override@JsonKey() List<String> get imagePaths {
  if (_imagePaths is EqualUnmodifiableListView) return _imagePaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagePaths);
}

@override final  String? link;

/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectCopyWith<_Project> get copyWith => __$ProjectCopyWithImpl<_Project>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Project&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.eyebrow, eyebrow) || other.eyebrow == eyebrow)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.role, role) || other.role == role)&&(identical(other.dateRange, dateRange) || other.dateRange == dateRange)&&(identical(other.narrative, narrative) || other.narrative == narrative)&&const DeepCollectionEquality().equals(other._metrics, _metrics)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._imagePaths, _imagePaths)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,summary,eyebrow,statusLabel,role,dateRange,narrative,const DeepCollectionEquality().hash(_metrics),const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_imagePaths),link);

@override
String toString() {
  return 'Project(id: $id, title: $title, summary: $summary, eyebrow: $eyebrow, statusLabel: $statusLabel, role: $role, dateRange: $dateRange, narrative: $narrative, metrics: $metrics, tags: $tags, imagePaths: $imagePaths, link: $link)';
}


}

/// @nodoc
abstract mixin class _$ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$ProjectCopyWith(_Project value, $Res Function(_Project) _then) = __$ProjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String summary, String? eyebrow, String? statusLabel, String? role, String? dateRange, String? narrative, List<ProjectMetric> metrics, List<String> tags, List<String> imagePaths, String? link
});




}
/// @nodoc
class __$ProjectCopyWithImpl<$Res>
    implements _$ProjectCopyWith<$Res> {
  __$ProjectCopyWithImpl(this._self, this._then);

  final _Project _self;
  final $Res Function(_Project) _then;

/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? summary = null,Object? eyebrow = freezed,Object? statusLabel = freezed,Object? role = freezed,Object? dateRange = freezed,Object? narrative = freezed,Object? metrics = null,Object? tags = null,Object? imagePaths = null,Object? link = freezed,}) {
  return _then(_Project(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,eyebrow: freezed == eyebrow ? _self.eyebrow : eyebrow // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: freezed == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,dateRange: freezed == dateRange ? _self.dateRange : dateRange // ignore: cast_nullable_to_non_nullable
as String?,narrative: freezed == narrative ? _self.narrative : narrative // ignore: cast_nullable_to_non_nullable
as String?,metrics: null == metrics ? _self._metrics : metrics // ignore: cast_nullable_to_non_nullable
as List<ProjectMetric>,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,imagePaths: null == imagePaths ? _self._imagePaths : imagePaths // ignore: cast_nullable_to_non_nullable
as List<String>,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
