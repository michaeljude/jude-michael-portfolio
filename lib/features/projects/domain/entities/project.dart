import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
sealed class ProjectMetric with _$ProjectMetric {
  const factory ProjectMetric({
    required String value,
    required String label,
  }) = _ProjectMetric;

  factory ProjectMetric.fromJson(Map<String, dynamic> json) =>
      _$ProjectMetricFromJson(json);
}

@freezed
sealed class Project with _$Project {
  const factory Project({
    required String id,
    required String title,
    required String summary,
    String? eyebrow,
    String? statusLabel,
    String? role,
    String? dateRange,
    String? narrative,
    @Default(<ProjectMetric>[]) List<ProjectMetric> metrics,
    @Default(<String>[]) List<String> tags,
    @Default(<String>[]) List<String> imagePaths,
    String? link,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
}

