// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProjectMetric _$ProjectMetricFromJson(Map<String, dynamic> json) =>
    _ProjectMetric(
      value: json['value'] as String,
      label: json['label'] as String,
    );

Map<String, dynamic> _$ProjectMetricToJson(_ProjectMetric instance) =>
    <String, dynamic>{'value': instance.value, 'label': instance.label};

_Project _$ProjectFromJson(Map<String, dynamic> json) => _Project(
  id: json['id'] as String,
  title: json['title'] as String,
  summary: json['summary'] as String,
  eyebrow: json['eyebrow'] as String?,
  statusLabel: json['statusLabel'] as String?,
  role: json['role'] as String?,
  dateRange: json['dateRange'] as String?,
  narrative: json['narrative'] as String?,
  metrics:
      (json['metrics'] as List<dynamic>?)
          ?.map((e) => ProjectMetric.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ProjectMetric>[],
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  imagePaths:
      (json['imagePaths'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  link: json['link'] as String?,
);

Map<String, dynamic> _$ProjectToJson(_Project instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'summary': instance.summary,
  'eyebrow': instance.eyebrow,
  'statusLabel': instance.statusLabel,
  'role': instance.role,
  'dateRange': instance.dateRange,
  'narrative': instance.narrative,
  'metrics': instance.metrics,
  'tags': instance.tags,
  'imagePaths': instance.imagePaths,
  'link': instance.link,
};
