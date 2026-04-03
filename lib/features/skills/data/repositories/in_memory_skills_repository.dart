import '../../domain/entities/skill_group.dart';
import '../../domain/repositories/skills_repository.dart';

class InMemorySkillsRepository implements SkillsRepository {
  const InMemorySkillsRepository();

  @override
  Future<List<SkillGroup>> getSkillGroups() async {
    return const <SkillGroup>[
      SkillGroup(
        title: 'Mobile & UI',
        skills: <String>[
          'Flutter',
          'Dart',
          'Material 3',
          'Responsive UI',
          'Accessibility',
        ],
      ),
      SkillGroup(
        title: 'Architecture',
        skills: <String>[
          'Bloc / Cubit',
          'MVVM',
          'Clean Architecture',
          'Freezed',
          'auto_route',
        ],
      ),
      SkillGroup(
        title: 'Backend & Delivery',
        skills: <String>[
          'Firebase',
          'Firestore',
          'CI/CD',
          'Testing',
          'Observability',
        ],
      ),
    ];
  }
}

