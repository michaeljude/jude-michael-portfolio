import '../entities/experience_entry.dart';

abstract interface class ExperienceRepository {
  Future<List<ExperienceEntry>> getExperience();
}

