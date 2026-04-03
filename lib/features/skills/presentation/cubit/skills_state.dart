import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/skill_group.dart';

part 'skills_state.freezed.dart';

@freezed
sealed class SkillsState with _$SkillsState {
  const factory SkillsState({
    @Default(false) bool isLoading,
    @Default(<SkillGroup>[]) List<SkillGroup> groups,
    String? errorMessage,
  }) = _SkillsState;
}

