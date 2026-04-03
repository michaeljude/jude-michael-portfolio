import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill_group.freezed.dart';
part 'skill_group.g.dart';

@freezed
sealed class SkillGroup with _$SkillGroup {
  const factory SkillGroup({
    required String title,
    @Default(<String>[]) List<String> skills,
  }) = _SkillGroup;

  factory SkillGroup.fromJson(Map<String, dynamic> json) =>
      _$SkillGroupFromJson(json);
}

