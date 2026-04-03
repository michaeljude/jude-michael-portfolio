import 'package:flutter/material.dart';

abstract final class AppColorTokens {
  // Palette mapped from Stitch designTheme for the
  // "Jude Michael Portfolio" project.
  static const background = Color(0xFF0E0E0E); // namedColors.background
  static const onBackground = Color(0xFFFFFFFF); // namedColors.on_background
  static const neutral = Color(0xFF121212); // overrideNeutralColor

  static const primary = Color(0xFF3FFF8B); // namedColors.primary
  static const primaryContainer = Color(
    0xFF13EA79,
  ); // namedColors.primary_container
  static const onPrimary = Color(0xFF005D2C); // namedColors.on_primary
  static const onPrimaryContainer = Color(
    0xFF004F24,
  ); // namedColors.on_primary_container

  static const secondary = Color(0xFF6E9BFF); // namedColors.secondary
  static const onSecondary = Color(0xFF001D4E); // namedColors.on_secondary
  static const secondaryContainer = Color(
    0xFF0058CA,
  ); // namedColors.secondary_container
  static const onSecondaryContainer = Color(
    0xFFF7F7FF,
  ); // namedColors.on_secondary_container

  static const surface = background; // namedColors.surface
  static const surfaceBright = Color(0xFF2C2C2C); // namedColors.surface_bright
  static const surfaceContainerLowest = Color(
    0xFF000000,
  ); // surface_container_lowest
  static const surfaceContainerLow = Color(0xFF131313); // surface_container_low
  static const surfaceContainer = Color(0xFF1A1A1A); // surface_container
  static const surfaceContainerHigh = Color(
    0xFF20201F,
  ); // surface_container_high
  static const surfaceContainerHighest = Color(
    0xFF262626,
  ); // surface_container_highest
  static const surfaceVariant = Color(
    0xFF262626,
  ); // namedColors.surface_variant

  static const onSurface = Color(0xFFFFFFFF); // namedColors.on_surface
  static const onSurfaceVariant = Color(
    0xFFADAAAA,
  ); // namedColors.on_surface_variant

  static const outline = Color(0xFF767575); // namedColors.outline
  static const outlineVariant = Color(
    0xFF484847,
  ); // namedColors.outline_variant

  static const tertiary = Color(0xFF7AE6FF); // namedColors.tertiary
  static const onTertiary = Color(0xFF005360); // namedColors.on_tertiary
  static const tertiaryContainer = Color(
    0xFF00DCFD,
  ); // namedColors.tertiary_container
  static const onTertiaryContainer = Color(
    0xFF004955,
  ); // namedColors.on_tertiary_container

  static const error = Color(0xFFFF716C); // namedColors.error
  static const onError = Color(0xFF490006); // namedColors.on_error
  static const errorContainer = Color(
    0xFF9F0519,
  ); // namedColors.error_container
  static const onErrorContainer = Color(
    0xFFFFA8A3,
  ); // namedColors.on_error_container

  // Ambient shadow tinted with primary, low opacity (approx. 8%).
  static const ambientGlow = Color(0x143FFF8B);
  static const glassSurface = Color(0x99262626);
  static const glassBorder = Color(0x33484847);
  static const gridLine = Color(0x0D484847);
  static const gridLineStrong = Color(0x143FFF8B);

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[primary, primaryContainer],
  );

  static const ColorScheme colorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: primary,
    onPrimary: onPrimary,
    primaryContainer: primaryContainer,
    onPrimaryContainer: onPrimaryContainer,
    secondary: secondary,
    onSecondary: onSecondary,
    secondaryContainer: secondaryContainer,
    onSecondaryContainer: onSecondaryContainer,
    tertiary: tertiary,
    onTertiary: onTertiary,
    tertiaryContainer: tertiaryContainer,
    onTertiaryContainer: onTertiaryContainer,
    error: error,
    onError: onError,
    errorContainer: errorContainer,
    onErrorContainer: onErrorContainer,
    surface: surface,
    onSurface: onSurface,
    surfaceContainerHighest: surfaceContainerHighest,
    onSurfaceVariant: onSurfaceVariant,
    outline: outline,
    outlineVariant: outlineVariant,
    shadow: ambientGlow,
    scrim: Colors.black,
    inverseSurface: Color(0xFFFCF9F8), // namedColors.inverse_surface
    onInverseSurface: Color(0xFF565555), // namedColors.inverse_on_surface
    inversePrimary: Color(0xFF006E35), // namedColors.inverse_primary
  );
}
