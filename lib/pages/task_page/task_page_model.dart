import 'package:flutter/material.dart';

class TaskPageViewModel extends ChangeNotifier {
  int? quizCurrentAnswer;

  int points = 0;
  int maxPoints = 10;

  void setQuizAnswer(int i) {
    quizCurrentAnswer = i;

    print(quizCurrentAnswer);

    notifyListeners();
  }

  void setAnswer() {
    print(points);
    if(points + 1 == maxPoints) {
      points = 0;
    }
    points += 1;

    notifyListeners();
  }
}