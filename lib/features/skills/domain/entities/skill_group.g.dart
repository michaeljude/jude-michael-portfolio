// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SkillGroup _$SkillGroupFromJson(Map<String, dynamic> json) => _SkillGroup(
  title: json['title'] as String,
  skills:
      (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$SkillGroupToJson(_SkillGroup instance) =>
    <String, dynamic>{'title': instance.title, 'skills': instance.skills};
