import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AppTextStyles {
  static TextTheme textTheme(ColorScheme scheme) {
    // High-contrast editorial scaling tuned for the
    // \"Digital Blueprint\" portfolio design.
    final base = ThemeData.dark(useMaterial3: true).textTheme;

    // Stitch design: Space Grotesk for display, Inter for
    // body & labels in this project.
    final headline = GoogleFonts.spaceGroteskTextTheme(base);
    final body = GoogleFonts.interTextTheme(base);
    final labels = GoogleFonts.interTextTheme(base);

    TextStyle? withColor(TextStyle? style, Color color) =>
        style?.copyWith(color: color);

    return base.copyWith(
      displayLarge: withColor(
        headline.displayLarge?.copyWith(
          fontWeight: FontWeight.w700,
          height: 1.02,
          letterSpacing: -0.5,
        ),
        scheme.onSurface,
      ),
      displayMedium: withColor(
        headline.displayMedium?.copyWith(
          fontWeight: FontWeight.w600,
          height: 1.06,
          letterSpacing: -0.25,
        ),
        scheme.onSurface,
      ),
      headlineLarge: withColor(
        headline.headlineLarge?.copyWith(fontWeight: FontWeight.w600),
        scheme.onSurface,
      ),
      headlineMedium: withColor(
        headline.headlineMedium?.copyWith(fontWeight: FontWeight.w600),
        scheme.onSurface,
      ),
      titleLarge: withColor(
        body.titleLarge?.copyWith(fontWeight: FontWeight.w600),
        scheme.onSurface,
      ),
      titleMedium: withColor(
        body.titleMedium?.copyWith(fontWeight: FontWeight.w600),
        scheme.onSurface,
      ),
      bodyLarge: withColor(body.bodyLarge, scheme.onSurface),
      bodyMedium: withColor(body.bodyMedium, scheme.onSurface),
      bodySmall: withColor(body.bodySmall, scheme.onSurface),
      labelLarge: withColor(
        labels.labelLarge?.copyWith(letterSpacing: 0.4),
        scheme.onSurfaceVariant,
      ),
      labelMedium: withColor(
        labels.labelMedium?.copyWith(letterSpacing: 0.5),
        scheme.onSurfaceVariant,
      ),
      labelSmall: withColor(
        labels.labelSmall?.copyWith(letterSpacing: 0.6),
        scheme.onSurfaceVariant,
      ),
    );
  }
}

