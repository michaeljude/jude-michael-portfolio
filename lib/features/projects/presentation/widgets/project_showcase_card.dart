import 'package:flutter/material.dart';

import '../../../../app/theme/color_tokens.dart';
import '../../../../app/theme/spacing.dart';
import '../../../../core/constants/app_breakpoints.dart';
import '../../../../core/widgets/app_text.dart';
import '../../../../core/widgets/section_surface.dart';
import '../../domain/entities/project.dart';
import 'metric_tile.dart';
import 'project_media_stack.dart';
import 'status_pill.dart';
import 'tag_pills.dart';

class ProjectShowcaseCard extends StatefulWidget {
  const ProjectShowcaseCard({super.key, required this.project});

  final Project project;

  @override
  State<ProjectShowcaseCard> createState() => _ProjectShowcaseCardState();
}

class _ProjectShowcaseCardState extends State<ProjectShowcaseCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final breakpoint = AppBreakpoint.of(context);
    final isDesktop = breakpoint.index >= AppBreakpoint.desktop.index;

    final p = widget.project;
    final narrative = (p.narrative?.trim().isNotEmpty ?? false)
        ? p.narrative!
        : p.summary;

    final left = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (p.statusLabel != null && p.statusLabel!.trim().isNotEmpty) ...<Widget>[
          StatusPill(label: p.statusLabel!),
          const SizedBox(height: AppSpacing.x4),
        ],
        AppText(
          p.title,
          variant: isDesktop ? AppTextVariant.headlineLarge : AppTextVariant.headlineMedium,
          tone: AppTextTone.onSurface,
        ),
        if ((p.role?.trim().isNotEmpty ?? false) ||
            (p.dateRange?.trim().isNotEmpty ?? false)) ...<Widget>[
          const SizedBox(height: AppSpacing.x2),
          AppText(
            [
              if (p.role != null && p.role!.trim().isNotEmpty) p.role!,
              if (p.dateRange != null && p.dateRange!.trim().isNotEmpty) p.dateRange!,
            ].join(' • '),
            variant: AppTextVariant.labelLarge,
            tone: AppTextTone.primary,
            letterSpacing: 1.0,
          ),
        ],
        const SizedBox(height: AppSpacing.x4),
        AppText(
          narrative,
          variant: AppTextVariant.bodyLarge,
          tone: AppTextTone.muted,
        ),
        if (p.metrics.isNotEmpty) ...<Widget>[
          const SizedBox(height: AppSpacing.x5),
          SectionSurface(
            background: AppColorTokens.surfaceContainerLowest,
            padding: EdgeInsets.zero,
            glow: false,
            outlined: true,
            outlineColor: AppColorTokens.outlineVariant,
            outlineWidth: 2,
            child: isDesktop
                ? Row(
                    children: <Widget>[
                      for (var i = 0; i < p.metrics.length; i++) ...<Widget>[
                        Expanded(
                          child: MetricTile(
                            value: p.metrics[i].value,
                            label: p.metrics[i].label,
                          ),
                        ),
                        if (i != p.metrics.length - 1)
                          Container(
                            width: 1,
                            height: 64,
                            color: AppColorTokens.outlineVariant.withValues(alpha: 0.25),
                          ),
                      ],
                    ],
                  )
                : Column(
                    children: <Widget>[
                      for (final m in p.metrics)
                        MetricTile(value: m.value, label: m.label),
                    ],
                  ),
          ),
        ],
        if (p.tags.isNotEmpty) ...<Widget>[
          const SizedBox(height: AppSpacing.x4),
          TagPills(tags: p.tags),
        ],
      ],
    );

    final right = ProjectMediaStack(imagePaths: p.imagePaths);

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedScale(
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOutCubic,
        scale: _hovered ? 1.01 : 1,
        child: SectionSurface(
          background: _hovered
              ? AppColorTokens.surfaceContainerHigh
              : AppColorTokens.surfaceContainerLow,
          outlined: _hovered,
          outlineColor: AppColorTokens.primary,
          outlineWidth: 3,
          padding: const EdgeInsets.all(AppSpacing.x6),
          child: isDesktop
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(child: left),
                    const SizedBox(width: AppSpacing.x6),
                    SizedBox(width: 420, child: right),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    left,
                    const SizedBox(height: AppSpacing.x6),
                    right,
                  ],
                ),
        ),
      ),
    );
  }
}

