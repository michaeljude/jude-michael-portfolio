import '../../domain/entities/project.dart';
import '../../domain/repositories/projects_repository.dart';

class InMemoryProjectsRepository implements ProjectsRepository {
  const InMemoryProjectsRepository();

  @override
  Future<List<Project>> getProjects() async {
    return const <Project>[
      Project(
        id: 'p1',
        title: 'Precision Blueprint UI System',
        summary:
            'A no-line surface hierarchy with editorial scale, tuned for web + mobile.',
        tags: <String>['Flutter', 'Material 3', 'Responsive'],
      ),
      Project(
        id: 'p2',
        title: 'Bloc-driven MVVM Portfolio',
        summary:
            'Feature-first clean architecture with Cubit view-models and narrow rebuilds.',
        tags: <String>['Bloc', 'MVVM', 'Clean Architecture'],
      ),
      Project(
        id: 'p3',
        title: 'Firebase Contact Pipeline',
        summary:
            'Firestore-backed contact submission with validation, retries, and analytics hooks.',
        tags: <String>['Firebase', 'Firestore', 'Web'],
      ),
      Project(
        id: 'p4',
        title: 'AutoRoute Shell Navigation',
        summary:
            'Tab shell with rail on desktop and navigation bar on mobile.',
        tags: <String>['auto_route', 'Navigation'],
      ),
      Project(
        id: 'p5',
        title: 'Skills Taxonomy',
        summary: 'Grouped skill chips with consistent labels and spacing.',
        tags: <String>['UX', 'Information Architecture'],
      ),
      Project(
        id: 'p6',
        title: 'Experience Timeline',
        summary:
            'Pulse-line timeline cards that read cleanly at any breakpoint.',
        tags: <String>['UI', 'Typography'],
      ),
    ];
  }
}

