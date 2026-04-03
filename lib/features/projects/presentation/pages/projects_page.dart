import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/di/di.dart';
import '../../../../app/theme/color_tokens.dart';
import '../../../../app/theme/spacing.dart';
import '../../../../core/constants/app_breakpoints.dart';
import '../../../../core/widgets/max_width.dart';
import '../../../../core/widgets/section_surface.dart';
import '../../domain/entities/project.dart';
import '../cubit/projects_cubit.dart';
import '../cubit/projects_state.dart';

@RoutePage()
class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final cubit = getIt<ProjectsCubit>();
        unawaited(cubit.load());
        return cubit;
      },
      child: const _ProjectsView(),
    );
  }
}

class _ProjectsView extends StatelessWidget {
  const _ProjectsView();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;
    final breakpoint = AppBreakpoint.of(context);
    final crossAxisCount = breakpoint.index >= AppBreakpoint.wide.index
        ? 3
        : breakpoint.index >= AppBreakpoint.desktop.index
        ? 2
        : 1;

    return MaxWidth(
      padding: const EdgeInsets.all(AppSpacing.x6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'SELECTED WORK',
            style: textTheme.labelMedium?.copyWith(color: scheme.primary),
          ),
          const SizedBox(height: AppSpacing.x2),
          Text('Projects', style: textTheme.displaySmall),
          const SizedBox(height: AppSpacing.x4),
          Text(
            'Curated systems, mobile products, and interface experiments staged with the Circuit & Syntax editorial grid.',
            style: textTheme.bodyLarge?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: AppSpacing.x8),
          Expanded(
            child: Stack(
              children: <Widget>[
                BlocSelector<ProjectsCubit, ProjectsState, List<Project>>(
                  selector: (state) => state.projects,
                  builder: (context, projects) {
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        mainAxisSpacing: AppSpacing.x4,
                        crossAxisSpacing: AppSpacing.x4,
                        childAspectRatio: crossAxisCount == 1 ? 1.55 : 1.08,
                      ),
                      itemCount: projects.length,
                      itemBuilder: (context, i) =>
                          _ProjectCard(project: projects[i]),
                    );
                  },
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: BlocSelector<ProjectsCubit, ProjectsState, bool>(
                    selector: (state) => state.isLoading,
                    builder: (context, isLoading) {
                      if (!isLoading) return const SizedBox.shrink();
                      return const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProjectCard extends StatefulWidget {
  const _ProjectCard({required this.project});

  final Project project;

  @override
  State<_ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<_ProjectCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    final project = widget.project;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedScale(
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOutCubic,
        scale: _hovered ? 1.02 : 1,
        child: SectionSurface(
          background: _hovered
              ? AppColorTokens.surfaceContainerHighest
              : AppColorTokens.surfaceContainerHigh,
          outlined: _hovered,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                project.tags.isEmpty
                    ? 'PROJECT'
                    : project.tags.first.toUpperCase(),
                style: textTheme.labelMedium?.copyWith(color: scheme.primary),
              ),
              const SizedBox(height: AppSpacing.x3),
              Text(project.title, style: textTheme.titleLarge),
              const SizedBox(height: AppSpacing.x2),
              Text(
                project.summary,
                style: textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: AppSpacing.x4),
              Wrap(
                spacing: AppSpacing.x2,
                runSpacing: AppSpacing.x2,
                children: project.tags
                    .take(4)
                    .map(
                      (t) => Chip(
                        label: Text(t),
                        visualDensity: VisualDensity.compact,
                      ),
                    )
                    .toList(growable: false),
              ),
              const Spacer(),
              Row(
                children: <Widget>[
                  Text(
                    'View case study',
                    style: textTheme.labelLarge?.copyWith(
                      color: scheme.primary,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.x2),
                  Icon(Icons.arrow_outward, size: 18, color: scheme.primary),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
