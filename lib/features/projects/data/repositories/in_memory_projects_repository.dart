import '../../domain/entities/project.dart';
import '../../domain/repositories/projects_repository.dart';

class InMemoryProjectsRepository implements ProjectsRepository {
  const InMemoryProjectsRepository();

  @override
  Future<List<Project>> getProjects() async {
    return const <Project>[
      Project(
        id: 'maya',
        title: 'Maya',
        summary:
            'Architecting robust mobile experiences through clean code patterns and performance-first engineering.',
        statusLabel: 'CURRENTLY LEADING',
        role: 'Senior Mobile Engineer',
        dateRange: '2025 — Present',
        narrative:
            "Leading the architectural evolution of Maya's mobile ecosystem. Orchestrating common modules and cross-functional SDKs to streamline the developer experience for over 100+ engineers.",
        metrics: <ProjectMetric>[
          ProjectMetric(value: '92%', label: 'CODE REUSABILITY'),
          ProjectMetric(value: '0ms', label: 'JANK TOLERANCE'),
        ],
        tags: <String>['Flutter SDK', 'Mentorship', 'TDD'],
        imagePaths: <String>[
          'assets/img/maya_app.png',
          'assets/img/maya_wallet.png',
        ],
      ),
      Project(
        id: 'p1',
        title: 'Precision Blueprint UI System',
        summary:
            'A no-line surface hierarchy with editorial scale, tuned for web + mobile.',
        narrative:
            'A no-line surface hierarchy with editorial scale, tuned for web + mobile. Built around surface stacking, tokenized rhythm, and interactive cards with primary-tinted ambient glow.',
        tags: <String>['Flutter', 'Material 3', 'Responsive'],
        metrics: <ProjectMetric>[
          ProjectMetric(value: 'M3', label: 'THEME SYSTEM'),
          ProjectMetric(value: '4pt', label: 'SPACING SCALE'),
        ],
      ),
      Project(
        id: 'p2',
        title: 'Bloc-driven MVVM Portfolio',
        summary:
            'Feature-first clean architecture with Cubit view-models and narrow rebuilds.',
        narrative:
            'Feature-first clean architecture with Cubit view-models and narrow rebuilds—selecting just the state slices each widget needs.',
        tags: <String>['Bloc', 'MVVM', 'Clean Architecture'],
      ),
      Project(
        id: 'p3',
        title: 'Firebase Contact Pipeline',
        summary:
            'Firestore-backed contact submission with validation, retries, and analytics hooks.',
        narrative:
            'A Firestore-backed contact submission flow with validation and failure-safe retries—designed to be unobtrusive while still measurable and debuggable.',
        tags: <String>['Firebase', 'Firestore', 'Web'],
      ),
      Project(
        id: 'p4',
        title: 'AutoRoute Shell Navigation',
        summary: 'Tab shell with rail on desktop and navigation bar on mobile.',
        narrative:
            'A shell-based navigation system built with AutoRoute—desktop-friendly, responsive, and consistent with the glass + grid blueprint aesthetic.',
        tags: <String>['auto_route', 'Navigation'],
      ),
      Project(
        id: 'p5',
        title: 'Skills Taxonomy',
        summary: 'Grouped skill pills with consistent hierarchy and spacing.',
        narrative:
            'A readable, information-dense skills taxonomy with consistent labeling and spacing—optimized for scanning on both desktop and mobile.',
        tags: <String>['UX', 'Information Architecture'],
      ),
    ];
  }
}

