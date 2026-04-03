// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExperienceEntry _$ExperienceEntryFromJson(Map<String, dynamic> json) =>
    _ExperienceEntry(
      id: json['id'] as String,
      role: json['role'] as String,
      dateRange: json['dateRange'] as String,
      highlights:
          (json['highlights'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$ExperienceEntryToJson(_ExperienceEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'dateRange': instance.dateRange,
      'highlights': instance.highlights,
    };
