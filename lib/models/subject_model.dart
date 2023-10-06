class SubjectModel {
  final int id;
  final String title;
  final String topic;
  final String color;
  final PointsModel points;

  SubjectModel({required this.id, required this.title, required this.topic, required this.color, required this.points});
}

class PointsModel {
  final int currentPoints;
  final int maxPoints;

  PointsModel({required this.currentPoints, required this.maxPoints});
}
