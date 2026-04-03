import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/di/di.dart';
import '../../../../app/theme/color_tokens.dart';
import '../../../../app/theme/spacing.dart';
import '../../../../core/widgets/max_width.dart';
import '../../../../core/widgets/section_surface.dart';
import '../../domain/entities/skill_group.dart';
import '../cubit/skills_cubit.dart';
import '../cubit/skills_state.dart';

@RoutePage()
class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final cubit = getIt<SkillsCubit>();
        unawaited(cubit.load());
        return cubit;
      },
      child: const _SkillsView(),
    );
  }
}

class _SkillsView extends StatelessWidget {
  const _SkillsView();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: AppColorTokens.background,
      body: MaxWidth(
        padding: const EdgeInsets.all(AppSpacing.x6),
        child: ListView(
          children: <Widget>[
            Text('Skills', style: textTheme.displaySmall),
            const SizedBox(height: AppSpacing.x4),
            Text(
              'Grouped, tagged, and tuned for signal.',
              style: textTheme.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
            ),
            const SizedBox(height: AppSpacing.x8),
            Stack(
              children: <Widget>[
                BlocSelector<SkillsCubit, SkillsState, List<SkillGroup>>(
                  selector: (state) => state.groups,
                  builder: (context, groups) {
                    return Column(
                      children: <Widget>[
                        for (var i = 0; i < groups.length; i++) ...<Widget>[
                          SectionSurface(
                            background: i.isEven
                                ? AppColorTokens.surfaceContainer
                                : AppColorTokens.surfaceContainerHigh,
                            child: _SkillGroup(
                              title: groups[i].title,
                              skills: groups[i].skills,
                            ),
                          ),
                          if (i != groups.length - 1)
                            const SizedBox(height: AppSpacing.x4),
                        ],
                      ],
                    );
                  },
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: BlocSelector<SkillsCubit, SkillsState, bool>(
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
          ],
        ),
      ),
    );
  }
}

class _SkillGroup extends StatelessWidget {
  const _SkillGroup({
    required this.title,
    required this.skills,
  });

  final String title;
  final List<String> skills;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: textTheme.titleMedium),
        const SizedBox(height: AppSpacing.x4),
        Wrap(
          spacing: AppSpacing.x2,
          runSpacing: AppSpacing.x2,
          children: skills.map(_SkillChip.new).toList(growable: false),
        ),
      ],
    );
  }
}

class _SkillChip extends StatelessWidget {
  const _SkillChip(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x2),
    );
  }
}

