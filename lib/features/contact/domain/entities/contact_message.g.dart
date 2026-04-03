// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactMessage _$ContactMessageFromJson(Map<String, dynamic> json) =>
    _ContactMessage(
      name: json['name'] as String,
      email: json['email'] as String,
      message: json['message'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ContactMessageToJson(_ContactMessage instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'message': instance.message,
      'createdAt': instance.createdAt.toIso8601String(),
    };
