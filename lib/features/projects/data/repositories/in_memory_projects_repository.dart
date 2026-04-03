import '../../domain/entities/project.dart';
import '../../domain/repositories/projects_repository.dart';

class InMemoryProjectsRepository implements ProjectsRepository {
  const InMemoryProjectsRepository();

  @override
  Future<List<Project>> getProjects() async {
    return const <Project>[
      Project(
        id: 'prophero',
        title: 'PropHero',
        summary:
            'Engineered high-performance property investment dashboards, integrating AI analytics for real-time market insights.',
        role: 'Software Engineer',
        dateRange: '2023 — 2025',
        narrative:
            'Engineered high-performance property investment dashboards. Reduced legacy tech debt with modern navigation patterns and integrated AI analytics for real-time market insights.',
        metrics: <ProjectMetric>[
          ProjectMetric(value: '40%', label: 'CODE COMPLEXITY REDUCTION'),
        ],
        tags: <String>['AI Integration', 'Riverpod'],
        imagePaths: <String>[
          'assets/img/prophero_app.png',
          'assets/img/prophero_portfolio.png',
        ],
      ),
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
        id: 'arena_sports',
        title: 'Arena Sports',
        summary:
            'Implemented Stripe orchestration for seamless booking of premium sports facilities.',
        role: 'Mobile Developer',
        dateRange: '2024 — 2025',
        narrative:
            'Implemented Stripe orchestration for seamless booking of premium sports facilities. Developed using Clean Architecture to ensure modularity for future international scaling.',
        metrics: <ProjectMetric>[
          ProjectMetric(value: '85%', label: 'UNIT TEST COVERAGE TARGET'),
        ],
        tags: <String>['Stripe', 'Clean Architecture', 'Mobile'],
        imagePaths: <String>[
          'assets/img/arena_sports.jpeg',
          'assets/img/arena_sports_lobbies.jpeg',
        ],
      ),
      Project(
        id: 'shopsuki',
        title: 'ShopSuki',
        summary:
            'Architected a Shopify headless commerce experience with measurable performance gains.',
        role: 'Full Stack Engineer',
        dateRange: '2022 — 2024',
        narrative:
            'Architected an e-commerce powerhouse utilizing GraphQL and Shopify headless commerce. Custom caching strategies led to significant performance gains across the mobile web experience.',
        metrics: <ProjectMetric>[
          ProjectMetric(value: '60%', label: 'LOAD PERFORMANCE BOOST'),
        ],
        tags: <String>['GraphQL', 'Shopify'],
        imagePaths: <String>[
          'assets/img/shopsuki_splash.jpeg',
          'assets/img/shopsuki_redeem.jpeg',
        ],
      ),
      Project(
        id: 'pdax',
        title: 'PDAX',
        summary:
            'Built robust Admin Console systems and Crypto-as-a-Service (CaaS) integrations.',
        role: 'Software Engineer',
        dateRange: '2022 — 2023',
        narrative:
            'Built robust Admin Console systems and Crypto-as-a-Service (CaaS) integrations. Focused on high-security financial transactions and real-time trading monitoring tools.',
        tags: <String>['Security', 'Real-time Systems', 'CaaS'],
        imagePaths: <String>['assets/img/pdax_partner_console.png'],
      ),
      Project(
        id: 'gomo_globe',
        title: 'GOMO & Globe Broadband',
        summary: 'Early-career foundations in scalable native Android systems.',
        statusLabel: 'EARLY CAREER FOUNDATIONS',
        dateRange: '2019 — 2021',
        narrative:
            'GOMO Revamp (2020 — 2021): Android development lead for telecom digital revamp, reaching millions of active users.\n\nGlobe Gamification (2019): Native Android feature development and in-app gamification patterns for engagement.',
        tags: <String>['Native Android', 'Scalable Systems'],
        imagePaths: <String>[
          'assets/img/gomo_home.jpeg',
          'assets/img/gomo_shop.jpeg',
          'assets/img/globe_broadband.jpeg',
        ],
      ),
    ];
  }
}
