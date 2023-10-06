import 'package:flutter/material.dart';

import '../../models/deadline_model.dart';
import '../../models/homework_model.dart';
import '../../models/subject_model.dart';

class HomePageViewModel extends ChangeNotifier {
  final List<HomeWorkModel> homework = [
    HomeWorkModel(name: 'География', description: 'Сделать тест на страницу 181, выполнить квиз', date: DateTime.now()),
    HomeWorkModel(name: 'География', description: 'Сделать тест на страницу 181, выполнить квиз', date: DateTime.now()),
    HomeWorkModel(name: 'География', description: 'Сделать тест на страницу 181, выполнить квиз', date: DateTime.now()),
  ];

  final List<DeadlineModel> deadline = [
    DeadlineModel(name: 'География', description: 'Сделать тест на страницу 181, выполнить квиз', date: DateTime.now(), time: '21:00'),
    DeadlineModel(name: 'География', description: 'Сделать тест на страницу 181, выполнить квиз', date: DateTime.now(), time: '21:00'),
    DeadlineModel(name: 'География', description: 'Сделать тест на страницу 181, выполнить квиз', date: DateTime.now(), time: '21:00'),
  ];

  final List<SubjectModel> subjects = [
    SubjectModel(id: 1, color: '#888888', points: PointsModel(currentPoints: 12, maxPoints: 30), title: 'География', topic: '12',),
    SubjectModel(id: 1, color: '#888888', points: PointsModel(currentPoints: 12, maxPoints: 30), title: 'География', topic: '12',),
    SubjectModel(id: 1, color: '#888888', points: PointsModel(currentPoints: 12, maxPoints: 30), title: 'География', topic: '12',),
  ];
}