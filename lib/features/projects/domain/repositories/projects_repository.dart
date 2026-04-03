import '../entities/project.dart';

abstract interface class ProjectsRepository {
  Future<List<Project>> getProjects();
}

