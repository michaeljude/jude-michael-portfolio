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
    this.outlineColor = AppColorTokens.outlineVariant,
    this.outlineWidth = 3,
    this.outlined = false,
    this.glow = true,
    this.gradientTint = false,
    required this.child,
  });

  final Color background;
  final EdgeInsets padding;
  final BorderRadius radius;
  final Color outlineColor;
  final double outlineWidth;
  final bool outlined;
  final bool glow;
  final bool gradientTint;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final primaryTintAlpha = gradientTint ? 0.22 : 0.12;
    final tertiaryTintAlpha = gradientTint ? 0.07 : 0.03;
    final glowColor = gradientTint
        ? AppColorTokens.primary.withValues(alpha: 0.18)
        : AppColorTokens.ambientGlow;
    final glowBlur = gradientTint ? 64.0 : 48.0;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        gradient: gradientTint
            ? LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color.alphaBlend(
                    AppColorTokens.primary.withValues(alpha: primaryTintAlpha),
                    background,
                  ),
                  background,
                  Color.alphaBlend(
                    AppColorTokens.tertiary.withValues(
                      alpha: tertiaryTintAlpha,
                    ),
                    background,
                  ),
                ],
                stops: const <double>[0, 0.55, 1],
              )
            : null,
        borderRadius: radius,
        boxShadow: glow
            ? <BoxShadow>[
                BoxShadow(
                  color: glowColor,
                  blurRadius: glowBlur,
                  spreadRadius: 0,
                  offset: const Offset(0, 0),
                ),
              ]
            : null,
        border: outlined
            ? Border.all(
                color: outlineColor.withValues(alpha: 0.15),
                width: outlineWidth,
              )
            : null,
      ),
      child: Padding(padding: padding, child: child),
    );
  }
}
