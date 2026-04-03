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

    return Scaffold(
      backgroundColor: AppColorTokens.background,
      body: MaxWidth(
        padding: const EdgeInsets.all(AppSpacing.x6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Projects', style: textTheme.displaySmall),
            const SizedBox(height: AppSpacing.x4),
            Text(
              'Curated work, staged with intentional asymmetry.',
              style: textTheme.bodyMedium?.copyWith(
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
                          childAspectRatio: crossAxisCount == 1 ? 2.2 : 1.25,
                        ),
                        itemCount: projects.length,
                        itemBuilder: (context, i) => _ProjectCard(project: projects[i]),
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
      ),
    );
  }
}

class _ProjectCard extends StatelessWidget {
  const _ProjectCard({
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    return SectionSurface(
      background: AppColorTokens.surfaceContainerHigh,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(project.title, style: textTheme.titleLarge),
          const SizedBox(height: AppSpacing.x2),
          Text(
            project.summary,
            style: textTheme.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
            maxLines: 3,
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
              Icon(Icons.arrow_outward, size: 18, color: scheme.primary),
              const SizedBox(width: AppSpacing.x1),
              Text('View', style: textTheme.labelLarge?.copyWith(color: scheme.primary)),
            ],
          ),
        ],
      ),
    );
  }
}

