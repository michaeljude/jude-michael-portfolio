import 'package:flutter/material.dart';

import '../../app/theme/color_tokens.dart';
import '../../app/theme/radii.dart';
import '../../app/theme/spacing.dart';

class SectionSurface extends StatelessWidget {
  const SectionSurface({
    super.key,
    this.background = AppColorTokens.surfaceContainer,
    this.padding = const EdgeInsets.all(AppSpacing.x6),
    this.radius = AppRadii.card,
    required this.child,
  });

  final Color background;
  final EdgeInsets padding;
  final BorderRadius radius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        borderRadius: radius,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: AppColorTokens.indigoAmbientShadow,
            blurRadius: 48,
            spreadRadius: 0,
            offset: Offset(0, 0),
          ),
        ],
        border: Border.all(
          color: AppColorTokens.outlineVariant.withValues(alpha: 0.15),
        ),
      ),
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}

