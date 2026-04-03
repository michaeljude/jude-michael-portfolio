import '../entities/skill_group.dart';

abstract interface class SkillsRepository {
  Future<List<SkillGroup>> getSkillGroups();
}

