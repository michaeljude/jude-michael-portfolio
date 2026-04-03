import 'package:flutter/material.dart';

import '../../app/theme/color_tokens.dart';
import '../../app/theme/radii.dart';
import '../../app/theme/spacing.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.label,
    this.onPressed,
    this.icon,
    this.foregroundColor,
    this.backgroundColor,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final Color? foregroundColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final foreground = foregroundColor ?? scheme.onPrimary;
    final child = Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (icon != null) ...<Widget>[
          Icon(icon, size: 18, color: foreground),
          const SizedBox(width: AppSpacing.x2),
        ],
        Text(
          label,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: foreground,
            letterSpacing: 0.4,
          ),
        ),
      ],
    );

    return Opacity(
      opacity: onPressed == null ? 0.45 : 1,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: AppColorTokens.secondaryButtonGradient,
          borderRadius: AppRadii.button,
          border: Border.all(
            color: AppColorTokens.outlineVariant.withValues(alpha: 0.15),
          ),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: AppColorTokens.ambientGlow,
              blurRadius: 36,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: AppRadii.button,
            onTap: onPressed,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.x5,
                vertical: AppSpacing.x3,
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
