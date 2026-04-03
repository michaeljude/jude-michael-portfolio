import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience_entry.freezed.dart';
part 'experience_entry.g.dart';

@freezed
sealed class ExperienceEntry with _$ExperienceEntry {
  const factory ExperienceEntry({
    required String id,
    required String role,
    required String dateRange,
    @Default(<String>[]) List<String> highlights,
  }) = _ExperienceEntry;

  factory ExperienceEntry.fromJson(Map<String, dynamic> json) =>
      _$ExperienceEntryFromJson(json);
}

