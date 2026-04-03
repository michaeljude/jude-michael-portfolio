import 'package:flutter/material.dart';
import 'package:responsive_breakpoints/extensions_theme.dart';

import '../../core/constants/app_breakpoints.dart';
import 'color_tokens.dart';
import 'radii.dart';
import 'text_styles.dart';

abstract final class AppTheme {
  static ThemeData dark() {
    const scheme = AppColorTokens.colorScheme;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: scheme,
      scaffoldBackgroundColor: AppColorTokens.background,
      textTheme: AppTextStyles.textTheme(scheme),
      extensions: const <ThemeExtension<dynamic>>[
        ResponsiveBreakpointTheme<AppBreakpoint>(breakpoints: AppBreakpoint.all),
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
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColorTokens.surfaceContainerLow,
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
        backgroundColor: AppColorTokens.surfaceContainerLowest,
        side: const BorderSide(color: AppColorTokens.primary),
        shape: const StadiumBorder(),
        labelStyle: TextStyle(color: scheme.onSurface),
      ),
      dividerTheme: const DividerThemeData(
        // No-line rule: dividers should be avoided; when used, keep subtle.
        space: 0,
        thickness: 0,
      ),
    );
  }
}

