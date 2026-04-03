import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/color_tokens.dart';
import '../../../../app/theme/spacing.dart';
import '../../../../app/theme/radii.dart';
import '../../../../core/constants/app_breakpoints.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/app_text.dart';
import '../../../../core/widgets/max_width.dart';
import '../../../../core/widgets/primary_gradient_button.dart';
import '../../../../core/widgets/secondary_button.dart';
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
      child: ListView(children: <Widget>[_Hero(isDesktop: isDesktop)]),
    );
  }
}

class _Hero extends StatelessWidget {
  const _Hero({required this.isDesktop});

  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    final left = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
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
                const AppText(
                  'AVIALABLE FOR NEW PROJECTS',
                  variant: AppTextVariant.labelMedium,
                  tone: AppTextTone.primary,
                  letterSpacing: 1.2,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.x3),
        Builder(
          builder: (context) {
            final parts = AppStrings.heroName.split(' ');
            final last = parts.isNotEmpty ? parts.last : '';
            final first = parts.length > 1
                ? parts.sublist(0, parts.length - 1).join(' ')
                : AppStrings.heroName;

            return Text.rich(
              TextSpan(
                style: AppTextStylesResolver.resolve(
                  context,
                  variant: isDesktop
                      ? AppTextVariant.displayLarge
                      : AppTextVariant.displayMedium,
                ),
                children: <InlineSpan>[
                  TextSpan(text: '$first '),
                  TextSpan(
                    text: last,
                    style: AppTextStylesResolver.resolve(
                      context,
                      variant: isDesktop
                          ? AppTextVariant.displayLarge
                          : AppTextVariant.displayMedium,
                      tone: AppTextTone.primary,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        const SizedBox(height: AppSpacing.x4),
        Padding(
          padding: const EdgeInsets.only(right: 70),
          child: Text.rich(
            TextSpan(
              style: AppTextStylesResolver.resolve(
                context,
                variant: AppTextVariant.titleMedium,
                tone: AppTextTone.muted,
              ),
              children: const <InlineSpan>[
                TextSpan(
                  text: 'Senior Mobile Software Engineer. ',
                  style: TextStyle(fontSize: 32),
                ),
                TextSpan(
                  text:
                      'Specialist in Clean Architecture, Scalable Mobile Systems, and AI Integration.',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.x5),
        const Padding(
          padding: EdgeInsets.only(right: 200),
          child: AppText(
            AppStrings.heroDescription,
            variant: AppTextVariant.bodyLarge,
            tone: AppTextTone.muted,
          ),
        ),
        const SizedBox(height: AppSpacing.x12),
        Wrap(
          spacing: AppSpacing.x3,
          runSpacing: AppSpacing.x3,
          children: <Widget>[
            PrimaryGradientButton(
              label: 'View engineering portfolio',
              icon: Icons.layers,
              onPressed: () => context.tabsRouter.setActiveIndex(1),
            ),
            SecondaryButton(
              onPressed: () => context.tabsRouter.setActiveIndex(4),
              label: 'Get in touch',
              foregroundColor: Colors.white,
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.x6),
      ],
    );

    const right = Padding(
      padding: EdgeInsets.only(top: 48.0),
      child: SectionSurface(
        background: AppColorTokens.surfaceContainerLowest,
        outlined: true,
        outlineColor: AppColorTokens.primary,
        outlineWidth: 5,
        child: _SignalArchitectureImage(),
      ),
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

class _SignalArchitectureImage extends StatelessWidget {
  const _SignalArchitectureImage();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: AppRadii.card,
      child: AspectRatio(
        aspectRatio: 390 / 384, // matches reference card screenshot
        child: Image.asset(
          'assets/img/home-code.png',
          fit: BoxFit.contain,
          width: 390,
          height: 384,
        ),
      ),
    );
  }
}
