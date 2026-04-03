import 'package:flutter/material.dart';

import '../../../../app/theme/spacing.dart';
import '../../../../core/constants/app_breakpoints.dart';
import '../../../../core/widgets/app_text.dart';

class ProjectsEditorialHeader extends StatelessWidget {
  const ProjectsEditorialHeader({
    super.key,
    required this.eyebrow,
    required this.titlePrimary,
    required this.titleSecondaryItalic,
    required this.description,
  });

  final String eyebrow;
  final String titlePrimary;
  final String titleSecondaryItalic;
  final String description;

  @override
  Widget build(BuildContext context) {
    final breakpoint = AppBreakpoint.of(context);
    final isDesktop = breakpoint.index >= AppBreakpoint.desktop.index;

    final displayVariant =
        isDesktop ? AppTextVariant.displayLarge : AppTextVariant.displayMedium;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AppText(
          eyebrow,
          variant: AppTextVariant.labelMedium,
          tone: AppTextTone.primary,
          letterSpacing: 1.4,
          uppercase: true,
        ),
        const SizedBox(height: AppSpacing.x3),
        Text.rich(
          TextSpan(
            style: AppTextStylesResolver.resolve(
              context,
              variant: displayVariant,
              tone: AppTextTone.onSurface,
            ),
            children: <InlineSpan>[
              TextSpan(text: '$titlePrimary\n'),
              TextSpan(
                text: titleSecondaryItalic,
                style: AppTextStylesResolver.resolve(
                  context,
                  variant: displayVariant,
                  tone: AppTextTone.muted,
                  fontStyle: FontStyle.italic,
                )?.copyWith(height: 1.02),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.x4),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 820),
          child: AppText(
            description,
            variant: AppTextVariant.bodyLarge,
            tone: AppTextTone.muted,
          ),
        ),
      ],
    );
  }
}

