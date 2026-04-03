import 'package:flutter/material.dart';

enum AppTextVariant {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,
}

enum AppTextTone {
  onSurface,
  muted,
  primary,
  secondary,
  tertiary,
  onPrimary,
  error,
}

abstract final class AppTextStylesResolver {
  static TextStyle? resolve(
    BuildContext context, {
    required AppTextVariant variant,
    AppTextTone tone = AppTextTone.onSurface,
    Color? color,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
    FontStyle? fontStyle,
    TextDecoration? decoration,
  }) {
    final theme = Theme.of(context);
    final base = _baseStyle(theme.textTheme, variant);

    return base?.copyWith(
      color: color ?? _toneColor(theme.colorScheme, tone),
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  static TextStyle? _baseStyle(TextTheme textTheme, AppTextVariant variant) {
    switch (variant) {
      case AppTextVariant.displayLarge:
        return textTheme.displayLarge;
      case AppTextVariant.displayMedium:
        return textTheme.displayMedium;
      case AppTextVariant.displaySmall:
        return textTheme.displaySmall;
      case AppTextVariant.headlineLarge:
        return textTheme.headlineLarge;
      case AppTextVariant.headlineMedium:
        return textTheme.headlineMedium;
      case AppTextVariant.headlineSmall:
        return textTheme.headlineSmall;
      case AppTextVariant.titleLarge:
        return textTheme.titleLarge;
      case AppTextVariant.titleMedium:
        return textTheme.titleMedium;
      case AppTextVariant.titleSmall:
        return textTheme.titleSmall;
      case AppTextVariant.bodyLarge:
        return textTheme.bodyLarge;
      case AppTextVariant.bodyMedium:
        return textTheme.bodyMedium;
      case AppTextVariant.bodySmall:
        return textTheme.bodySmall;
      case AppTextVariant.labelLarge:
        return textTheme.labelLarge;
      case AppTextVariant.labelMedium:
        return textTheme.labelMedium;
      case AppTextVariant.labelSmall:
        return textTheme.labelSmall;
    }
  }

  static Color _toneColor(ColorScheme scheme, AppTextTone tone) {
    switch (tone) {
      case AppTextTone.onSurface:
        return scheme.onSurface;
      case AppTextTone.muted:
        return scheme.onSurfaceVariant;
      case AppTextTone.primary:
        return scheme.primary;
      case AppTextTone.secondary:
        return scheme.secondary;
      case AppTextTone.tertiary:
        return scheme.tertiary;
      case AppTextTone.onPrimary:
        return scheme.onPrimary;
      case AppTextTone.error:
        return scheme.error;
    }
  }
}

class AppText extends StatelessWidget {
  const AppText(
    this.data, {
    super.key,
    required this.variant,
    this.tone = AppTextTone.onSurface,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap,
    this.uppercase = false,
    this.fontWeight,
    this.letterSpacing,
    this.height,
    this.fontStyle,
    this.decoration,
  });

  final String data;
  final AppTextVariant variant;
  final AppTextTone tone;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool? softWrap;
  final bool uppercase;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final double? height;
  final FontStyle? fontStyle;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      uppercase ? data.toUpperCase() : data,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
      style: AppTextStylesResolver.resolve(
        context,
        variant: variant,
        tone: tone,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        height: height,
        fontStyle: fontStyle,
        decoration: decoration,
      ),
    );
  }
}
