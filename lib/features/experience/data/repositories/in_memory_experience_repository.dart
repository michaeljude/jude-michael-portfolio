import '../../domain/entities/experience_entry.dart';
import '../../domain/repositories/experience_repository.dart';

class InMemoryExperienceRepository implements ExperienceRepository {
  const InMemoryExperienceRepository();

  @override
  Future<List<ExperienceEntry>> getExperience() async {
    return const <ExperienceEntry>[
      ExperienceEntry(
        id: 'e1',
        role: 'Senior Flutter Engineer',
        dateRange: '2025 — Present',
        highlights: <String>[
          'Shipped responsive Flutter web experiences with strict design tokens.',
          'Standardized MVVM with BlocSelector-first rebuild strategy.',
        ],
      ),
      ExperienceEntry(
        id: 'e2',
        role: 'Mobile Engineer',
        dateRange: '2023 — 2025',
        highlights: <String>[
          'Built clean-architecture feature modules with Freezed models.',
          'Improved release cadence via CI/CD and automated QA gates.',
        ],
      ),
      ExperienceEntry(
        id: 'e3',
        role: 'Software Engineer',
        dateRange: '2021 — 2023',
        highlights: <String>[
          'Designed data layers with repository patterns and typed domain entities.',
          'Partnered with design to deliver accessible, performant UI systems.',
        ],
      ),
    ];
  }
}

