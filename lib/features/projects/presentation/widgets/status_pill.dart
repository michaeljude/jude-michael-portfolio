import 'package:flutter/material.dart';

import '../../../../app/theme/color_tokens.dart';
import '../../../../app/theme/radii.dart';
import '../../../../app/theme/spacing.dart';
import '../../../../core/widgets/app_text.dart';

class StatusPill extends StatelessWidget {
  const StatusPill({
    super.key,
    required this.label,
    this.toneColor = AppColorTokens.primary,
    this.showDot = true,
  });

  final String label;
  final Color toneColor;
  final bool showDot;

  @override
  Widget build(BuildContext context) {
    final bg = Color.alphaBlend(
      toneColor.withValues(alpha: 0.10),
      AppColorTokens.surfaceContainerLowest,
    );

    return DecoratedBox(
      decoration: BoxDecoration(
        color: bg,
        borderRadius: AppRadii.chip,
        border: Border.all(color: toneColor.withValues(alpha: 0.22)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.x3,
          vertical: AppSpacing.x2,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (showDot) ...<Widget>[
              DecoratedBox(
                decoration: BoxDecoration(shape: BoxShape.circle, color: toneColor),
                child: const SizedBox(width: 8, height: 8),
              ),
              const SizedBox(width: AppSpacing.x2),
            ],
            AppText(
              label,
              variant: AppTextVariant.labelMedium,
              tone: AppTextTone.onSurface,
              color: toneColor,
              letterSpacing: 1.2,
              uppercase: true,
            ),
          ],
        ),
      ),
    );
  }
}

