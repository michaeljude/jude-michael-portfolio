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
    final breakpoint = AppBreakpoint.of(context);
    final isDesktop = breakpoint.index >= AppBreakpoint.desktop.index;

    return MaxWidth(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? AppSpacing.x6 : AppSpacing.x4,
        vertical: isDesktop ? AppSpacing.x8 : AppSpacing.x6,
      ),
      child: ListView(
        children: <Widget>[
          _Hero(isDesktop: isDesktop),
          const SizedBox(height: AppSpacing.x14),
          const _SectionHeader(
            eyebrow: 'System principles',
            title: 'Built like a blueprint, not a brochure.',
            body:
                'Every section follows the Circuit & Syntax surface stack: dark foundations, tonal depth, and precise editorial contrast.',
          ),
          const SizedBox(height: AppSpacing.x5),
          if (isDesktop)
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: _HighlightCard(
                    title: 'No-line surfaces',
                    body:
                        'Sections step through tonal plates instead of hard dividers, letting depth come from color and spacing.',
                  ),
                ),
                SizedBox(width: AppSpacing.x4),
                Expanded(
                  child: _HighlightCard(
                    title: 'Intentional asymmetry',
                    body:
                        'Large editorial type is balanced against denser technical panels to create a confident scanning rhythm.',
                  ),
                ),
                SizedBox(width: AppSpacing.x4),
                Expanded(
                  child: _HighlightCard(
                    title: 'Glass + gradient',
                    body:
                        'Navigation and CTAs glow subtly with emerald highlights while keeping the nocturnal interface calm.',
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
                      'Sections step through tonal plates instead of hard dividers, letting depth come from color and spacing.',
                ),
                SizedBox(height: AppSpacing.x4),
                _HighlightCard(
                  title: 'Intentional asymmetry',
                  body:
                      'Large editorial type is balanced against denser technical panels to create a confident scanning rhythm.',
                ),
                SizedBox(height: AppSpacing.x4),
                _HighlightCard(
                  title: 'Glass + gradient',
                  body:
                      'Navigation and CTAs glow subtly with emerald highlights while keeping the nocturnal interface calm.',
                ),
              ],
            ),
        ],
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
        DecoratedBox(
          decoration: BoxDecoration(
            color: Color.alphaBlend(
              AppColorTokens.primary.withValues(alpha: 0.12),
              AppColorTokens.surfaceContainerLowest,
            ),
            borderRadius: BorderRadius.circular(999),
            border: Border.all(
              color: AppColorTokens.primary.withValues(alpha: 0.24),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.x3,
              vertical: AppSpacing.x2,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: scheme.primary,
                  ),
                  child: const SizedBox(width: 8, height: 8),
                ),
                const SizedBox(width: AppSpacing.x2),
                Text(
                  'AVIALABLE FOR NEW PROJECTS',
                  style: textTheme.labelMedium?.copyWith(
                    color: scheme.primary,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.x3),
        Text(
          AppStrings.heroName,
          style: isDesktop ? textTheme.displayLarge : textTheme.displayMedium,
        ),
        const SizedBox(height: AppSpacing.x4),
        Text(
          AppStrings.heroSubtitle,
          style: textTheme.bodyLarge?.copyWith(color: scheme.onSurfaceVariant),
        ),
        const SizedBox(height: AppSpacing.x6),
        Wrap(
          spacing: AppSpacing.x3,
          runSpacing: AppSpacing.x3,
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
        const SizedBox(height: AppSpacing.x6),
        const Wrap(
          spacing: AppSpacing.x2,
          runSpacing: AppSpacing.x2,
          children: <Widget>[
            Chip(label: Text('Flutter')),
            Chip(label: Text('SwiftUI')),
            Chip(label: Text('Firebase')),
            Chip(label: Text('Clean Architecture')),
          ],
        ),
      ],
    );

    const right = Column(
      children: <Widget>[
        SectionSurface(
          background: AppColorTokens.surfaceContainerHigh,
          child: _Stats(),
        ),
        SizedBox(height: AppSpacing.x4),
        SectionSurface(
          background: AppColorTokens.surfaceContainerLowest,
          outlined: true,
          gradientTint: true,
          child: _BlueprintBlock(),
        ),
      ],
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
            style: textTheme.labelMedium?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Signal',
          style: textTheme.labelMedium?.copyWith(color: scheme.primary),
        ),
        const SizedBox(height: AppSpacing.x4),
        Wrap(
          spacing: AppSpacing.x8,
          runSpacing: AppSpacing.x4,
          children: <Widget>[
            stat('Primary', '#3FFF8B'),
            stat('Mode', 'Dark'),
            stat('Rule', 'No-line'),
            stat('Accent', 'Cyber Blue'),
          ],
        ),
      ],
    );
  }
}

class _BlueprintBlock extends StatelessWidget {
  const _BlueprintBlock();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'ARCHITECTURE SIGNAL',
          style: textTheme.labelMedium?.copyWith(color: scheme.secondary),
        ),
        const SizedBox(height: AppSpacing.x3),
        Text(
          'surface -> section -> module -> action',
          style: textTheme.titleMedium?.copyWith(color: scheme.onSurface),
        ),
        const SizedBox(height: AppSpacing.x3),
        Text(
          'Tonal layers replace borders. Motion behaves like a responsive app, not a static landing page.',
          style: textTheme.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
        ),
      ],
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    required this.eyebrow,
    required this.title,
    required this.body,
  });

  final String eyebrow;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          eyebrow.toUpperCase(),
          style: textTheme.labelMedium?.copyWith(color: scheme.primary),
        ),
        const SizedBox(height: AppSpacing.x2),
        Text(title, style: textTheme.headlineMedium),
        const SizedBox(height: AppSpacing.x3),
        Text(
          body,
          style: textTheme.bodyLarge?.copyWith(color: scheme.onSurfaceVariant),
        ),
      ],
    );
  }
}

class _HighlightCard extends StatelessWidget {
  const _HighlightCard({required this.title, required this.body});

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    return SectionSurface(
      background: AppColorTokens.surfaceContainer,
      glow: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '0${title == 'No-line surfaces'
                ? 1
                : title == 'Intentional asymmetry'
                ? 2
                : 3}',
            style: textTheme.labelMedium?.copyWith(color: scheme.primary),
          ),
          const SizedBox(height: AppSpacing.x2),
          Text(title, style: textTheme.titleMedium),
          const SizedBox(height: AppSpacing.x2),
          Text(
            body,
            style: textTheme.bodyMedium?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
