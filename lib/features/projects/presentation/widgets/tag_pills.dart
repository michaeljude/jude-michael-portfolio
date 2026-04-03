import 'package:flutter/material.dart';

import '../../../../app/theme/color_tokens.dart';
import '../../../../app/theme/radii.dart';
import '../../../../app/theme/spacing.dart';
import '../../../../core/widgets/app_text.dart';

class TagPills extends StatelessWidget {
  const TagPills({super.key, required this.tags});

  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    if (tags.isEmpty) return const SizedBox.shrink();

    return Wrap(
      spacing: AppSpacing.x2,
      runSpacing: AppSpacing.x2,
      children: tags
          .map(
            (t) => DecoratedBox(
              decoration: BoxDecoration(
                color: AppColorTokens.surfaceContainerLowest,
                borderRadius: AppRadii.chip,
                border: Border.all(
                  color: AppColorTokens.outlineVariant.withValues(alpha: 0.22),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.x3,
                  vertical: AppSpacing.x2,
                ),
                child: AppText(
                  t,
                  variant: AppTextVariant.labelSmall,
                  tone: AppTextTone.muted,
                  letterSpacing: 0.8,
                  uppercase: true,
                ),
              ),
            ),
          )
          .toList(growable: false),
    );
  }
}

