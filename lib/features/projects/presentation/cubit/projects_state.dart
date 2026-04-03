import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/project.dart';

part 'projects_state.freezed.dart';

@freezed
sealed class ProjectsState with _$ProjectsState {
  const factory ProjectsState({
    @Default(false) bool isLoading,
    @Default(<Project>[]) List<Project> projects,
    String? errorMessage,
  }) = _ProjectsState;
}

