import 'package:flutter/material.dart';
import 'package:responsive_breakpoints/extensions_theme.dart';

import '../../core/constants/app_breakpoints.dart';
import 'color_tokens.dart';
import 'radii.dart';
import 'spacing.dart';
import 'text_styles.dart';

abstract final class AppTheme {
  static ThemeData dark() {
    const scheme = AppColorTokens.colorScheme;
    final textTheme = AppTextStyles.textTheme(scheme);

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: scheme,
      scaffoldBackgroundColor: AppColorTokens.background,
      textTheme: textTheme,
      extensions: const <ThemeExtension<dynamic>>[
        ResponsiveBreakpointTheme<AppBreakpoint>(
          breakpoints: AppBreakpoint.all,
        ),
      ],
      splashFactory: InkSparkle.splashFactory,
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: AppColorTokens.background.withValues(alpha: 0.85),
        foregroundColor: scheme.onSurface,
        centerTitle: false,
      ),
      cardTheme: const CardThemeData(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.zero,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: AppRadii.card),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColorTokens.primary,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: scheme.primary,
          foregroundColor: scheme.onPrimary,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.x5,
            vertical: AppSpacing.x3,
          ),
          textStyle: textTheme.labelLarge?.copyWith(color: scheme.onPrimary),
          shape: const RoundedRectangleBorder(borderRadius: AppRadii.button),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: scheme.primary,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.x4,
            vertical: AppSpacing.x3,
          ),
          textStyle: textTheme.labelLarge?.copyWith(color: scheme.primary),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColorTokens.surfaceContainerLow,
        floatingLabelStyle: TextStyle(color: scheme.primary),
        labelStyle: TextStyle(color: scheme.onSurfaceVariant),
        hintStyle: TextStyle(
          color: scheme.onSurfaceVariant.withValues(alpha: 0.8),
        ),
        border: OutlineInputBorder(
          borderRadius: AppRadii.button,
          borderSide: BorderSide(
            color: AppColorTokens.outlineVariant.withValues(alpha: 0.25),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppRadii.button,
          borderSide: BorderSide(
            color: AppColorTokens.outlineVariant.withValues(alpha: 0.15),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: AppRadii.button,
          borderSide: BorderSide(color: AppColorTokens.primary),
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppColorTokens.secondaryContainer,
        selectedColor: AppColorTokens.secondary,
        side: BorderSide.none,
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.x2,
          vertical: AppSpacing.x1,
        ),
        labelStyle: TextStyle(
          color: scheme.onSecondaryContainer,
          fontWeight: FontWeight.w600,
        ),
      ),
      dividerTheme: const DividerThemeData(
        // No-line rule: dividers should be avoided; when used, keep subtle.
        space: 0,
        thickness: 0,
      ),
    );
  }
}
