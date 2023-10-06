import 'task_model.dart';

class TopicModel {
  final int theme;
  final String title;
  final List<TaskModel> tasks;

  TopicModel({
    required this.title,
    required this.theme,
    required this.tasks,
  });
}
