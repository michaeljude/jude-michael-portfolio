import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/app_breakpoints.dart';
import '../../core/widgets/grid_background.dart';
import '../../core/widgets/max_width.dart';
import '../../core/widgets/primary_gradient_button.dart';
import '../router/app_router.dart';
import '../theme/color_tokens.dart';
import '../theme/radii.dart';
import '../theme/spacing.dart';

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
          body: Stack(
            children: <Widget>[
              const Positioned.fill(child: GridBackground()),
              SafeArea(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: AppSpacing.x4),
                    _TopNavBar(
                      activeIndex: tabsRouter.activeIndex,
                      onSelected: tabsRouter.setActiveIndex,
                      isDesktop: isDesktop,
                    ),
                    const SizedBox(height: AppSpacing.x5),
                    Expanded(child: child),
                  ],
                ),
              ),
            ],
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
    final horizontalPadding = isDesktop ? AppSpacing.x6 : AppSpacing.x4;

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

      return AnimatedContainer(
        duration: const Duration(milliseconds: 260),
        curve: Curves.easeOutCubic,
        decoration: BoxDecoration(
          color: selected
              ? AppColorTokens.surfaceBright.withValues(alpha: 0.75)
              : Colors.transparent,
          borderRadius: AppRadii.chip,
        ),
        child: InkWell(
          onTap: () => onSelected(index),
          borderRadius: BorderRadius.circular(AppRadii.rFull),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.x3,
              vertical: AppSpacing.x2,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(label, style: textStyle),
                const SizedBox(height: 3),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 220),
                  curve: Curves.easeOutCubic,
                  height: 2,
                  width: selected ? 34 : 10,
                  decoration: BoxDecoration(
                    gradient: selected ? AppColorTokens.primaryGradient : null,
                    color: selected ? null : scheme.outlineVariant,
                    borderRadius: BorderRadius.circular(AppRadii.rFull),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    final navRow = Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        for (var i = 0; i < labels.length; i++) ...<Widget>[
          navItem(i, labels[i]),
          if (i != labels.length - 1) const SizedBox(width: AppSpacing.x4),
        ],
      ],
    );

    final Widget navContent = isDesktop
        ? navRow
        : SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: navRow,
          );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: MaxWidth(
        child: ClipRRect(
          borderRadius: AppRadii.glass,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColorTokens.glassSurface,
                borderRadius: AppRadii.glass,
                border: Border.all(color: AppColorTokens.glassBorder),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: AppColorTokens.ambientGlow,
                    blurRadius: 48,
                    offset: Offset(0, 18),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isDesktop ? AppSpacing.x5 : AppSpacing.x4,
                  vertical: AppSpacing.x4,
                ),
                child: isDesktop
                    ? Row(
                        children: <Widget>[
                          const _BrandBlock(),
                          const SizedBox(width: AppSpacing.x6),
                          Expanded(child: Center(child: navContent)),
                          const SizedBox(width: AppSpacing.x5),
                          PrimaryGradientButton(
                            label: 'Resume',
                            icon: Icons.arrow_outward,
                            onPressed: () {
                              // Hook up to resume link or download if available.
                            },
                          ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              const Expanded(child: _BrandBlock()),
                              const SizedBox(width: AppSpacing.x3),
                              PrimaryGradientButton(
                                label: 'Resume',
                                icon: Icons.arrow_outward,
                                onPressed: () {
                                  // Hook up to resume link or download if available.
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSpacing.x4),
                          navContent,
                        ],
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BrandBlock extends StatelessWidget {
  const _BrandBlock();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'CIRCUIT & SYNTAX',
          style: theme.textTheme.labelMedium?.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(height: AppSpacing.x1),
        Text(
          'JUDE MICHAEL',
          style: GoogleFonts.spaceGrotesk(
            textStyle: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
              letterSpacing: 4,
            ),
          ),
        ),
      ],
    );
  }
}
