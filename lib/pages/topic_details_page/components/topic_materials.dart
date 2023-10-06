import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../models/task_model.dart';

class TopicMaterials extends StatelessWidget {
  const TopicMaterials({this.isNeed = true, required this.model, super.key});

  final TaskModel model;

  final isNeed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isNeed ? () => context.pushNamed('TaskPage', queryParameters: {'type': model.type, 'title': model.title, 'theme': model.theme}) : () {},
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 18,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromRGBO(238, 241, 255, 0.5),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              model.type == 'Видео-урок'
                  ? 'assets/svg_icons/play_button.svg'
                  : model.type == 'Конспект'
                      ? 'assets/svg_icons/Note.svg'
                      : 'assets/svg_icons/Compass.svg',
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.type,
                  style: const TextStyle(
                      fontFamily: 'gothampro',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(39, 3, 42, 0.6)),
                ),
                const SizedBox(height: 8),
                Text(
                  model.title,
                  style: const TextStyle(
                      fontFamily: 'gothampro',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(39, 3, 42, 1)),
                ),
                const SizedBox(height: 16),
                IsComplete(model.isComplete),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class IsComplete extends StatelessWidget {
  const IsComplete(this.isComplete, {super.key});
  final bool isComplete;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(isComplete ? 'assets/svg_icons/complete.svg' : 'assets/svg_icons/no_complete.svg'),
        const SizedBox(width: 4),
        Text(
          'Пройдено',
          style: TextStyle(
            fontFamily: 'gothampro',
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: isComplete ? const Color.fromRGBO(69, 177, 119, 1) : const Color.fromRGBO(255, 74, 107, 1),
          ),
        ),
      ],
    );
  }
}
