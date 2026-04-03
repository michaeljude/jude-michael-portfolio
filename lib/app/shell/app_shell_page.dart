import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/app_router.dart';
import '../theme/color_tokens.dart';
import '../theme/radii.dart';
import '../theme/spacing.dart';
import '../../core/constants/app_breakpoints.dart';

@RoutePage()
class AppShellPage extends StatelessWidget {
  const AppShellPage({super.key});

  static const _tabs = <PageRouteInfo>[
    HomeRoute(),
    ProjectsRoute(),
    ExperienceRoute(),
    SkillsRoute(),
    ContactRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: _tabs,
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        final breakpoint = AppBreakpoint.of(context);
        final isDesktop = breakpoint.index >= AppBreakpoint.desktop.index;

        return Scaffold(
          backgroundColor: AppColorTokens.background,
          body: SafeArea(
            child: Column(
              children: <Widget>[
                _TopNavBar(
                  activeIndex: tabsRouter.activeIndex,
                  onSelected: tabsRouter.setActiveIndex,
                  isDesktop: isDesktop,
                ),
                const SizedBox(height: AppSpacing.x6),
                Expanded(
                  child: ColoredBox(
                    color: AppColorTokens.background,
                    child: child,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _TopNavBar extends StatelessWidget {
  const _TopNavBar({
    required this.activeIndex,
    required this.onSelected,
    required this.isDesktop,
  });

  final int activeIndex;
  final ValueChanged<int> onSelected;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    const labels = <String>[
      'Home',
      'Projects',
      'Experience',
      'Skills',
      'Contact',
    ];

    Widget navItem(int index, String label) {
      final selected = activeIndex == index;
      final textStyle = theme.textTheme.labelLarge?.copyWith(
        color: selected ? scheme.primary : scheme.onSurfaceVariant,
      );

      return InkWell(
        onTap: () => onSelected(index),
        borderRadius: BorderRadius.circular(AppRadii.rFull),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.x2,
            vertical: AppSpacing.x1,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(label, style: textStyle),
              const SizedBox(height: 2),
              AnimatedContainer(
                duration: const Duration(milliseconds: 180),
                curve: Curves.easeOut,
                height: 2,
                width: selected ? 32 : 0,
                decoration: BoxDecoration(
                  color: scheme.primary,
                  borderRadius: BorderRadius.circular(999),
                ),
              ),
            ],
          ),
        ),
      );
    }

    final navRow = Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        for (var i = 0; i < labels.length; i++) ...<Widget>[
          navItem(i, labels[i]),
          if (i != labels.length - 1)
            const SizedBox(width: AppSpacing.x4),
        ],
      ],
    );

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? AppSpacing.x6 : AppSpacing.x4,
        vertical: AppSpacing.x3,
      ),
      child: Row(
        children: <Widget>[
          Text(
            'JUDE MICHAEL',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
              letterSpacing: 2,
            ),
          ),
          const Spacer(),
          if (isDesktop)
            navRow
          else
            Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: navRow,
              ),
            ),
          const SizedBox(width: AppSpacing.x4),
          FilledButton(
            onPressed: () {
              // Hook up to resume link or download if available.
            },
            style: FilledButton.styleFrom(
              backgroundColor: AppColorTokens.primary,
              foregroundColor: Colors.black,
            ),
            child: const Text('Resume'),
          ),
        ],
      ),
    );
  }
}

