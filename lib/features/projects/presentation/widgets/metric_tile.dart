import 'package:flutter/material.dart';

import '../../../../app/theme/spacing.dart';
import '../../../../core/widgets/app_text.dart';

class MetricTile extends StatelessWidget {
  const MetricTile({super.key, required this.value, required this.label});

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.x4,
        vertical: AppSpacing.x3,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppText(
            value,
            variant: AppTextVariant.headlineSmall,
            tone: AppTextTone.primary,
          ),
          const SizedBox(height: 6),
          AppText(
            label,
            variant: AppTextVariant.labelSmall,
            tone: AppTextTone.muted,
            letterSpacing: 1.0,
            uppercase: true,
          ),
        ],
      ),
    );
  }
}

