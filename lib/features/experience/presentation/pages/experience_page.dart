import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/di/di.dart';
import '../../../../app/theme/color_tokens.dart';
import '../../../../app/theme/spacing.dart';
import '../../../../core/widgets/max_width.dart';
import '../../../../core/widgets/section_surface.dart';
import '../../domain/entities/experience_entry.dart';
import '../cubit/experience_cubit.dart';
import '../cubit/experience_state.dart';

@RoutePage()
class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final cubit = getIt<ExperienceCubit>();
        unawaited(cubit.load());
        return cubit;
      },
      child: const _ExperienceView(),
    );
  }
}

class _ExperienceView extends StatelessWidget {
  const _ExperienceView();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    return MaxWidth(
      padding: const EdgeInsets.all(AppSpacing.x6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'CAREER TIMELINE',
            style: textTheme.labelMedium?.copyWith(color: scheme.primary),
          ),
          const SizedBox(height: AppSpacing.x2),
          Text('Experience', style: textTheme.displaySmall),
          const SizedBox(height: AppSpacing.x4),
          Text(
            'A pulse-line timeline with clean hierarchy, tonal modules, and enough space for the engineering story to breathe.',
            style: textTheme.bodyLarge?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: AppSpacing.x8),
          Expanded(
            child: Stack(
              children: <Widget>[
                BlocSelector<
                  ExperienceCubit,
                  ExperienceState,
                  List<ExperienceEntry>
                >(
                  selector: (state) => state.entries,
                  builder: (context, entries) {
                    return ListView.separated(
                      itemCount: entries.length,
                      separatorBuilder: (_, __) =>
                          const SizedBox(height: AppSpacing.x4),
                      itemBuilder: (context, i) =>
                          _TimelineItem(entry: entries[i]),
                    );
                  },
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: BlocSelector<ExperienceCubit, ExperienceState, bool>(
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

class _TimelineItem extends StatelessWidget {
  const _TimelineItem({required this.entry});

  final ExperienceEntry entry;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    return SectionSurface(
      background: AppColorTokens.surfaceContainerLow,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: 10,
                height: 10,
                margin: const EdgeInsets.only(top: 6),
                decoration: BoxDecoration(
                  color: scheme.primary,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(height: AppSpacing.x2),
              Container(
                width: 1,
                height: 96,
                color: scheme.outlineVariant.withValues(alpha: 0.5),
              ),
            ],
          ),
          const SizedBox(width: AppSpacing.x4),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  entry.dateRange.toUpperCase(),
                  style: textTheme.labelMedium?.copyWith(color: scheme.primary),
                ),
                const SizedBox(height: AppSpacing.x2),
                Text(entry.role, style: textTheme.titleMedium),
                const SizedBox(height: AppSpacing.x3),
                for (final h in entry.highlights) ...<Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 5,
                        height: 5,
                        margin: const EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(
                          color: scheme.secondary,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: AppSpacing.x2),
                      Expanded(
                        child: Text(
                          h,
                          style: textTheme.bodyMedium?.copyWith(
                            color: scheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.x2),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
