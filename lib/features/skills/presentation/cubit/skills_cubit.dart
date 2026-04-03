import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_skill_groups_use_case.dart';
import 'skills_state.dart';

class SkillsCubit extends Cubit<SkillsState> {
  SkillsCubit({
    required GetSkillGroupsUseCase getSkillGroups,
  })  : _getSkillGroups = getSkillGroups,
        super(const SkillsState());

  final GetSkillGroupsUseCase _getSkillGroups;

  Future<void> load() async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final groups = await _getSkillGroups();
      emit(state.copyWith(isLoading: false, groups: groups));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}

