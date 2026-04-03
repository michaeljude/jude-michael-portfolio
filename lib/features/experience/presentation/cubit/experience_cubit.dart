import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_experience_use_case.dart';
import 'experience_state.dart';

class ExperienceCubit extends Cubit<ExperienceState> {
  ExperienceCubit({
    required GetExperienceUseCase getExperience,
  })  : _getExperience = getExperience,
        super(const ExperienceState());

  final GetExperienceUseCase _getExperience;

  Future<void> load() async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final entries = await _getExperience();
      emit(state.copyWith(isLoading: false, entries: entries));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}

