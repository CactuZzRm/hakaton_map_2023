import 'package:flutter/material.dart';

import '../../models/deadline_model.dart';
import '../../models/homework_model.dart';
import '../../models/subject_model.dart';
import '../../models/task_model.dart';
import '../../models/topic_model.dart';

class TopicDetailsPageModel extends ChangeNotifier {
  final List<HomeWorkModel> homework = [
    HomeWorkModel(name: 'География', description: 'Сделать тест на страницу 181, выполнить квиз', date: DateTime.now()),
    HomeWorkModel(name: 'География', description: 'Сделать тест на страницу 181, выполнить квиз', date: DateTime.now()),
    HomeWorkModel(name: 'География', description: 'Сделать тест на страницу 181, выполнить квиз', date: DateTime.now()),
  ];

  final List<DeadlineModel> deadline = [
    DeadlineModel(
        name: 'География',
        description: 'Сделать тест на страницу 181, выполнить квиз',
        date: DateTime.now(),
        time: '21:00'),
    DeadlineModel(
        name: 'География',
        description: 'Сделать тест на страницу 181, выполнить квиз',
        date: DateTime.now(),
        time: '21:00'),
    DeadlineModel(
        name: 'География',
        description: 'Сделать тест на страницу 181, выполнить квиз',
        date: DateTime.now(),
        time: '21:00'),
  ];

  final List<SubjectModel> subjects = [
    SubjectModel(
      id: 1,
      color: '#888888',
      points: PointsModel(currentPoints: 12, maxPoints: 30),
      title: 'География',
      topic: '12',
    ),
    SubjectModel(
      id: 1,
      color: '#888888',
      points: PointsModel(currentPoints: 12, maxPoints: 30),
      title: 'География',
      topic: '12',
    ),
    SubjectModel(
      id: 1,
      color: '#888888',
      points: PointsModel(currentPoints: 12, maxPoints: 30),
      title: 'География',
      topic: '12',
    ),
  ];

  final List<TopicModel> topics = [
    TopicModel(
      theme: 1,
      title: 'Атлас. Карты',
      tasks: [
        TaskModel(type: 'Видео-урок', title: 'Тема 1', theme: 'Атлас. Как его использовать', isComplete: false),
        TaskModel(type: 'Конспект', title: 'Тема 1', theme: 'Атлас. Как его использовать', isComplete: true),
        TaskModel(type: 'Квиз', title: 'Тема 1', theme: 'Атлас. Как его использовать', isComplete: false),
      ],
    ),
    TopicModel(
      theme: 1,
      title: 'Атлас. Карты',
      tasks: [
        TaskModel(type: 'Видео-урок', title: 'Тема 1', theme: 'Атлас. Как его использовать', isComplete: false),
        TaskModel(type: 'Конспект', title: 'Тема 1', theme: 'Атлас. Как его использовать', isComplete: true),
        TaskModel(type: 'Квиз', title: 'Тема 1', theme: 'Атлас. Как его использовать', isComplete: false),
      ],
    ),
    TopicModel(
      theme: 1,
      title: 'Атлас. Карты',
      tasks: [
        TaskModel(type: 'видео-урок', title: 'Тема 1', theme: 'Атлас. Как его использовать', isComplete: false),
        TaskModel(type: 'конспект', title: 'Тема 1', theme: 'Атлас. Как его использовать', isComplete: true),
        TaskModel(type: 'квиз', title: 'Тема 1', theme: 'Атлас. Как его использовать', isComplete: false),
      ],
    ),
  ];
}
