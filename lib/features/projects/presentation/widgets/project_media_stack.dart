import 'package:flutter/material.dart';

import '../../../../app/theme/color_tokens.dart';
import '../../../../app/theme/radii.dart';
import '../../../../app/theme/spacing.dart';
import '../../../../core/constants/app_breakpoints.dart';
import '../../../../core/widgets/app_text.dart';
import '../../../../core/widgets/section_surface.dart';

class ProjectMediaStack extends StatelessWidget {
  const ProjectMediaStack({super.key, required this.imagePaths});

  final List<String> imagePaths;

  @override
  Widget build(BuildContext context) {
    if (imagePaths.isEmpty) return const _BlueprintPlaceholderPanel();

    final primary = imagePaths.first;
    final secondary = imagePaths.length > 1 ? imagePaths[1] : null;
    final breakpoint = AppBreakpoint.of(context);
    final isDesktop = breakpoint.index >= AppBreakpoint.desktop.index;
    final height = isDesktop ? 340.0 : 320.0;
    final primaryWidth = isDesktop ? 220.0 : 200.0;
    final secondaryWidth = isDesktop ? 240.0 : 220.0;
    final secondaryRight = isDesktop ? -18.0 : 0.0;
    final secondaryBottom = isDesktop ? -10.0 : 0.0;

    return SizedBox(
      height: height,
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Positioned(
            left: 0,
            top: 18,
            bottom: 0,
            child: _MediaFrame(
              width: primaryWidth,
              child: Image.asset(primary, fit: BoxFit.contain),
            ),
          ),
          if (secondary != null)
            Positioned(
              right: secondaryRight,
              top: 0,
              bottom: secondaryBottom,
              child: _MediaFrame(
                width: secondaryWidth,
                emphasized: true,
                child: Image.asset(secondary, fit: BoxFit.contain),
              ),
            ),
        ],
      ),
    );
  }
}

class _MediaFrame extends StatelessWidget {
  const _MediaFrame({
    required this.width,
    required this.child,
    this.emphasized = false,
  });

  final double width;
  final Widget child;
  final bool emphasized;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: AppRadii.panel,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: (emphasized
                    ? AppColorTokens.primary
                    : AppColorTokens.ambientGlow)
                .withValues(alpha: emphasized ? 0.14 : 0.10),
            blurRadius: emphasized ? 64 : 48,
            offset: const Offset(0, 22),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: AppRadii.panel,
        child: SectionSurface(
          padding: const EdgeInsets.all(AppSpacing.x4),
          background: emphasized
              ? AppColorTokens.surfaceContainerHighest
              : AppColorTokens.surfaceContainerHigh,
          outlined: true,
          outlineColor: AppColorTokens.outlineVariant,
          outlineWidth: 2,
          glow: false,
          child: SizedBox(width: width, child: child),
        ),
      ),
    );
  }
}

class _BlueprintPlaceholderPanel extends StatelessWidget {
  const _BlueprintPlaceholderPanel();

  @override
  Widget build(BuildContext context) {
    return const SectionSurface(
      background: AppColorTokens.surfaceContainerLow,
      gradientTint: true,
      outlined: true,
      outlineColor: AppColorTokens.outlineVariant,
      outlineWidth: 2,
      child: SizedBox(
        height: 260,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.photo_outlined,
                color: AppColorTokens.onSurfaceVariant,
              ),
              SizedBox(height: AppSpacing.x2),
              AppText(
                'MEDIA COMING SOON',
                variant: AppTextVariant.labelMedium,
                tone: AppTextTone.muted,
                letterSpacing: 1.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

