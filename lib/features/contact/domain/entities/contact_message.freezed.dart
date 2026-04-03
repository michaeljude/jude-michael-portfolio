// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactMessage {

 String get name; String get email; String get message; DateTime get createdAt;
/// Create a copy of ContactMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactMessageCopyWith<ContactMessage> get copyWith => _$ContactMessageCopyWithImpl<ContactMessage>(this as ContactMessage, _$identity);

  /// Serializes this ContactMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactMessage&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.message, message) || other.message == message)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,message,createdAt);

@override
String toString() {
  return 'ContactMessage(name: $name, email: $email, message: $message, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ContactMessageCopyWith<$Res>  {
  factory $ContactMessageCopyWith(ContactMessage value, $Res Function(ContactMessage) _then) = _$ContactMessageCopyWithImpl;
@useResult
$Res call({
 String name, String email, String message, DateTime createdAt
});




}
/// @nodoc
class _$ContactMessageCopyWithImpl<$Res>
    implements $ContactMessageCopyWith<$Res> {
  _$ContactMessageCopyWithImpl(this._self, this._then);

  final ContactMessage _self;
  final $Res Function(ContactMessage) _then;

/// Create a copy of ContactMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? message = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ContactMessage].
extension ContactMessagePatterns on ContactMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactMessage value)  $default,){
final _that = this;
switch (_that) {
case _ContactMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactMessage value)?  $default,){
final _that = this;
switch (_that) {
case _ContactMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String email,  String message,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactMessage() when $default != null:
return $default(_that.name,_that.email,_that.message,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String email,  String message,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _ContactMessage():
return $default(_that.name,_that.email,_that.message,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String email,  String message,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ContactMessage() when $default != null:
return $default(_that.name,_that.email,_that.message,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContactMessage implements ContactMessage {
  const _ContactMessage({required this.name, required this.email, required this.message, required this.createdAt});
  factory _ContactMessage.fromJson(Map<String, dynamic> json) => _$ContactMessageFromJson(json);

@override final  String name;
@override final  String email;
@override final  String message;
@override final  DateTime createdAt;

/// Create a copy of ContactMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactMessageCopyWith<_ContactMessage> get copyWith => __$ContactMessageCopyWithImpl<_ContactMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactMessage&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.message, message) || other.message == message)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,message,createdAt);

@override
String toString() {
  return 'ContactMessage(name: $name, email: $email, message: $message, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ContactMessageCopyWith<$Res> implements $ContactMessageCopyWith<$Res> {
  factory _$ContactMessageCopyWith(_ContactMessage value, $Res Function(_ContactMessage) _then) = __$ContactMessageCopyWithImpl;
@override @useResult
$Res call({
 String name, String email, String message, DateTime createdAt
});




}
/// @nodoc
class __$ContactMessageCopyWithImpl<$Res>
    implements _$ContactMessageCopyWith<$Res> {
  __$ContactMessageCopyWithImpl(this._self, this._then);

  final _ContactMessage _self;
  final $Res Function(_ContactMessage) _then;

/// Create a copy of ContactMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? message = null,Object? createdAt = null,}) {
  return _then(_ContactMessage(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
