import 'package:flutter/material.dart';
import 'package:hakaton_map_test/pages/task_page/task_page_model.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

import '../tabs_page/tabs_page.dart';
import 'components/notes_task.dart';
import 'components/quiz_tast.dart';
import 'components/task_page_appbar.dart';
import 'components/video_task.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({
    required this.type,
    required this.title,
    required this.theme,
    super.key,
  });

  final String type;
  final String title;
  final String theme;

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.read<TaskPageViewModel>();

    print(widget.type);

    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: 28),
            TaskPageAppBar(type: widget.type),
            const SizedBox(height: 20),
            widget.type != 'Квиз'
                ? Column(
                    children: [
                      Center(
                        child: Text(
                          widget.theme,
                          style: const TextStyle(
                              fontFamily: 'gothampro',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(125, 104, 127, 1)),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: Text(
                          widget.title,
                          style: const TextStyle(
                            fontFamily: 'gothampro',
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(61, 29, 64, 1),
                          ),
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Text(
                        '${model.points}/${model.maxPoints}',
                        style: const TextStyle(
                          fontFamily: 'gothampro',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(61, 29, 64, 1),
                        ),
                      ),
                      const SizedBox(height: 12),
                      LinearPercentIndicator(
                        padding: const EdgeInsets.all(0),
                        animation: true,
                        lineHeight: 12.0,
                        animationDuration: 2000,
                        percent: model.points / 100 * model.maxPoints,
                        backgroundColor: const Color.fromRGBO(243, 245, 255, 1),
                        linearGradient: const LinearGradient(colors: [
                          Color.fromRGBO(111, 244, 255, 1),
                          Color.fromRGBO(247, 174, 255, 1),
                          Color.fromRGBO(254, 211, 81, 1)
                        ]),
                        barRadius: const Radius.circular(46),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
            widget.type == 'Видео-урок'
                ? const VideoTask()
                : widget.type != 'Квиз'
                    ? NotesTask()
                    : QuizTask(
                        question: 'Как пользоваться картой?',
                        answers: ['1', '2', '3'],
                      ),
            SizedBox(height: bottomNavBarHeight + 24 + 20),
          ],
        ),
      ),
    );
  }
}
