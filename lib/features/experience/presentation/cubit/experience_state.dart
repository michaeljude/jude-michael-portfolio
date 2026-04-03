import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/experience_entry.dart';

part 'experience_state.freezed.dart';

@freezed
sealed class ExperienceState with _$ExperienceState {
  const factory ExperienceState({
    @Default(false) bool isLoading,
    @Default(<ExperienceEntry>[]) List<ExperienceEntry> entries,
    String? errorMessage,
  }) = _ExperienceState;
}

