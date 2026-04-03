import '../entities/experience_entry.dart';
import '../repositories/experience_repository.dart';

class GetExperienceUseCase {
  const GetExperienceUseCase(this._repository);

  final ExperienceRepository _repository;

  Future<List<ExperienceEntry>> call() => _repository.getExperience();
}

