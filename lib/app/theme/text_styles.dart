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

    TextStyle? display(TextStyle? style, FontWeight weight) =>
        style?.copyWith(fontWeight: weight, height: 1.02, letterSpacing: -0.8);

    TextStyle? editorialHeadline(TextStyle? style) => style?.copyWith(
      fontWeight: FontWeight.w600,
      height: 1.08,
      letterSpacing: -0.35,
    );

    return base.copyWith(
      displayLarge: withColor(
        display(headline.displayLarge, FontWeight.w700),
        scheme.onSurface,
      ),
      displayMedium: withColor(
        display(headline.displayMedium, FontWeight.w700),
        scheme.onSurface,
      ),
      displaySmall: withColor(
        display(headline.displaySmall, FontWeight.w600),
        scheme.onSurface,
      ),
      headlineLarge: withColor(
        editorialHeadline(headline.headlineLarge),
        scheme.onSurface,
      ),
      headlineMedium: withColor(
        editorialHeadline(headline.headlineMedium),
        scheme.onSurface,
      ),
      headlineSmall: withColor(
        editorialHeadline(headline.headlineSmall),
        scheme.onSurface,
      ),
      titleLarge: withColor(
        body.titleLarge?.copyWith(fontWeight: FontWeight.w600, height: 1.18),
        scheme.onSurface,
      ),
      titleMedium: withColor(
        body.titleMedium?.copyWith(fontWeight: FontWeight.w600, height: 1.2),
        scheme.onSurface,
      ),
      titleSmall: withColor(
        body.titleSmall?.copyWith(fontWeight: FontWeight.w600, height: 1.2),
        scheme.onSurface,
      ),
      bodyLarge: withColor(body.bodyLarge, scheme.onSurface),
      bodyMedium: withColor(body.bodyMedium, scheme.onSurface),
      bodySmall: withColor(body.bodySmall, scheme.onSurface),
      labelLarge: withColor(
        labels.labelLarge?.copyWith(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.6,
        ),
        scheme.onSurfaceVariant,
      ),
      labelMedium: withColor(
        labels.labelMedium?.copyWith(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.8,
        ),
        scheme.onSurfaceVariant,
      ),
      labelSmall: withColor(
        labels.labelSmall?.copyWith(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.9,
        ),
        scheme.onSurfaceVariant,
      ),
    );
  }
}
