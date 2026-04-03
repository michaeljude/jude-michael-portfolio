import 'package:auto_route/auto_route.dart';

import '../shell/app_shell_page.dart';
import '../../features/contact/presentation/pages/contact_page.dart';
import '../../features/experience/presentation/pages/experience_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/projects/presentation/pages/projects_page.dart';
import '../../features/skills/presentation/pages/skills_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: AppShellRoute.page,
          initial: true,
          children: <AutoRoute>[
            AutoRoute(page: HomeRoute.page, path: ''),
            AutoRoute(page: ProjectsRoute.page, path: 'projects'),
            AutoRoute(page: ExperienceRoute.page, path: 'experience'),
            AutoRoute(page: SkillsRoute.page, path: 'skills'),
            AutoRoute(page: ContactRoute.page, path: 'contact'),
          ],
        ),
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}

