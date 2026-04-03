import '../entities/skill_group.dart';
import '../repositories/skills_repository.dart';

class GetSkillGroupsUseCase {
  const GetSkillGroupsUseCase(this._repository);

  final SkillsRepository _repository;

  Future<List<SkillGroup>> call() => _repository.getSkillGroups();
}

