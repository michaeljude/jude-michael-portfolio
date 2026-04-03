import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/color_tokens.dart';
import '../../../../app/theme/spacing.dart';
import '../../../../core/constants/app_breakpoints.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/max_width.dart';
import '../../../../core/widgets/primary_gradient_button.dart';
import '../../../../core/widgets/section_surface.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final breakpoint = AppBreakpoint.of(context);
    final isDesktop = breakpoint.index >= AppBreakpoint.desktop.index;

    return Scaffold(
      backgroundColor: AppColorTokens.background,
      body: MaxWidth(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.x6,
          vertical: AppSpacing.x8,
        ),
        child: ListView(
          children: <Widget>[
            _Hero(isDesktop: isDesktop),
            const SizedBox(height: AppSpacing.x10),
            Text('System principles', style: textTheme.titleLarge),
            const SizedBox(height: AppSpacing.x4),
            if (isDesktop)
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: _HighlightCard(
                      title: 'No-line surfaces',
                      body:
                          'Sections step through tonal plates – surface to surface container low – instead of borders.',
                    ),
                  ),
                  SizedBox(width: AppSpacing.x4),
                  Expanded(
                    child: _HighlightCard(
                      title: 'Intentional asymmetry',
                      body:
                          'Large editorial type staged against dense technical data for a "digital blueprint" flow.',
                    ),
                  ),
                ],
              )
            else
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _HighlightCard(
                    title: 'No-line surfaces',
                    body:
                        'Sections step through tonal plates – surface to surface container low – instead of borders.',
                  ),
                  SizedBox(height: AppSpacing.x4),
                  _HighlightCard(
                    title: 'Intentional asymmetry',
                    body:
                        'Large editorial type staged against dense technical data for a "digital blueprint" flow.',
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class _Hero extends StatelessWidget {
  const _Hero({required this.isDesktop});

  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    final left = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(AppStrings.heroName, style: textTheme.displayMedium),
        const SizedBox(height: AppSpacing.x3),
        Text(
          AppStrings.heroSubtitle,
          style: textTheme.bodyLarge?.copyWith(color: scheme.onSurfaceVariant),
        ),
        const SizedBox(height: AppSpacing.x6),
        Row(
          children: <Widget>[
            PrimaryGradientButton(
              label: 'Explore projects',
              icon: Icons.layers,
              onPressed: () => context.tabsRouter.setActiveIndex(1),
            ),
            const SizedBox(width: AppSpacing.x3),
            TextButton(
              onPressed: () => context.tabsRouter.setActiveIndex(4),
              child: const Text('Contact'),
            ),
          ],
        ),
      ],
    );

    const right = SectionSurface(
      background: AppColorTokens.surfaceContainerHigh,
      child: _Stats(),
    );

    if (!isDesktop) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          left,
          const SizedBox(height: AppSpacing.x6),
          right,
        ],
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(child: left),
        const SizedBox(width: AppSpacing.x6),
        const SizedBox(width: 420, child: right),
      ],
    );
  }
}

class _Stats extends StatelessWidget {
  const _Stats();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    Widget stat(String label, String value) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(value, style: textTheme.headlineMedium),
          const SizedBox(height: AppSpacing.x1),
          Text(
            label,
            style: textTheme.labelMedium?.copyWith(color: scheme.onSurfaceVariant),
          ),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Signal', style: textTheme.titleLarge),
        const SizedBox(height: AppSpacing.x4),
        Wrap(
          spacing: AppSpacing.x8,
          runSpacing: AppSpacing.x4,
          children: <Widget>[
            stat('Primary', '#6366F1'),
            stat('Mode', 'Dark'),
            stat('Rule', 'No-line'),
          ],
        ),
      ],
    );
  }
}

class _HighlightCard extends StatelessWidget {
  const _HighlightCard({
    required this.title,
    required this.body,
  });

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    return SectionSurface(
      background: AppColorTokens.surfaceContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title, style: textTheme.titleMedium),
          const SizedBox(height: AppSpacing.x2),
          Text(
            body,
            style: textTheme.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
          ),
        ],
      ),
    );
  }
}

