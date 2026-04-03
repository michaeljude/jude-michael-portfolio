import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_projects_use_case.dart';
import 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit({
    required GetProjectsUseCase getProjects,
  })  : _getProjects = getProjects,
        super(const ProjectsState());

  final GetProjectsUseCase _getProjects;

  Future<void> load() async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final projects = await _getProjects();
      emit(state.copyWith(isLoading: false, projects: projects));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}

