import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/di/di.dart';
import '../../../../app/theme/spacing.dart';
import '../../../../core/constants/app_breakpoints.dart';
import '../../../../core/widgets/max_width.dart';
import '../../domain/entities/project.dart';
import '../cubit/projects_cubit.dart';
import '../cubit/projects_state.dart';
import '../widgets/project_showcase_card.dart';
import '../widgets/projects_editorial_header.dart';

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
    final breakpoint = AppBreakpoint.of(context);
    final isDesktop = breakpoint.index >= AppBreakpoint.desktop.index;

    return MaxWidth(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? AppSpacing.x6 : AppSpacing.x4,
        vertical: isDesktop ? AppSpacing.x8 : AppSpacing.x6,
      ),
      child: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              const ProjectsEditorialHeader(
                eyebrow: 'SELECTED WORK',
                titlePrimary: 'Digital',
                titleSecondaryItalic: 'Ecosystems',
                description:
                    'Architecting robust mobile experiences through clean code patterns and performance-first engineering. A decade of building for millions.',
              ),
              const SizedBox(height: AppSpacing.x12),
              BlocSelector<ProjectsCubit, ProjectsState, List<Project>>(
                selector: (state) => state.projects,
                builder: (context, projects) {
                  return Column(
                    children: <Widget>[
                      for (var i = 0; i < projects.length; i++) ...<Widget>[
                        ProjectShowcaseCard(project: projects[i]),
                        if (i != projects.length - 1)
                          const SizedBox(height: AppSpacing.x8),
                      ],
                    ],
                  );
                },
              ),
              const SizedBox(height: AppSpacing.x12),
            ],
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
    );
  }
}
