import 'package:get_it/get_it.dart';

import '../../features/auth/data/repositories/firebase_auth_repository.dart';
import '../../features/auth/data/repositories/noop_auth_repository.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/contact/data/repositories/firebase_contact_repository.dart';
import '../../features/contact/data/repositories/in_memory_contact_repository.dart';
import '../../features/contact/domain/repositories/contact_repository.dart';
import '../../features/contact/domain/usecases/submit_contact_message_use_case.dart';
import '../../features/contact/presentation/cubit/contact_cubit.dart';
import '../../features/experience/data/repositories/in_memory_experience_repository.dart';
import '../../features/experience/domain/repositories/experience_repository.dart';
import '../../features/experience/domain/usecases/get_experience_use_case.dart';
import '../../features/experience/presentation/cubit/experience_cubit.dart';
import '../../features/projects/data/repositories/in_memory_projects_repository.dart';
import '../../features/projects/domain/repositories/projects_repository.dart';
import '../../features/projects/domain/usecases/get_projects_use_case.dart';
import '../../features/projects/presentation/cubit/projects_cubit.dart';
import '../../features/skills/data/repositories/in_memory_skills_repository.dart';
import '../../features/skills/domain/repositories/skills_repository.dart';
import '../../features/skills/domain/usecases/get_skill_groups_use_case.dart';
import '../../features/skills/presentation/cubit/skills_cubit.dart';

final getIt = GetIt.instance;

void configureDependencies({required bool firebaseReady}) {
  // Repositories (data layer)
  getIt
    ..registerLazySingleton<ProjectsRepository>(InMemoryProjectsRepository.new)
    ..registerLazySingleton<SkillsRepository>(InMemorySkillsRepository.new)
    ..registerLazySingleton<ExperienceRepository>(InMemoryExperienceRepository.new)
    ..registerLazySingleton<ContactRepository>(
      firebaseReady ? FirebaseContactRepository.new : InMemoryContactRepository.new,
    )
    ..registerLazySingleton<AuthRepository>(
      firebaseReady ? FirebaseAuthRepository.new : NoopAuthRepository.new,
    );

  // Use cases (domain layer)
  getIt
    ..registerFactory<GetProjectsUseCase>(() => GetProjectsUseCase(getIt()))
    ..registerFactory<GetSkillGroupsUseCase>(() => GetSkillGroupsUseCase(getIt()))
    ..registerFactory<GetExperienceUseCase>(() => GetExperienceUseCase(getIt()))
    ..registerFactory<SubmitContactMessageUseCase>(
      () => SubmitContactMessageUseCase(getIt()),
    );

  // Cubits (presentation layer / view-models)
  getIt
    ..registerFactory<ProjectsCubit>(() => ProjectsCubit(getProjects: getIt()))
    ..registerFactory<SkillsCubit>(() => SkillsCubit(getSkillGroups: getIt()))
    ..registerFactory<ExperienceCubit>(() => ExperienceCubit(getExperience: getIt()))
    ..registerFactory<ContactCubit>(
      () => ContactCubit(submitContactMessage: getIt()),
    );
}

