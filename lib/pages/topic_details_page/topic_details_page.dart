import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hakaton_map_test/pages/topic_details_page/components/topic_details_appbar.dart';
import 'package:hakaton_map_test/pages/topic_details_page/components/topic_materials.dart';
import 'package:hakaton_map_test/pages/topic_details_page/topic_details_page_model.dart';
import 'package:provider/provider.dart';

import '../../models/task_model.dart';
import '../tabs_page/tabs_page.dart';

class TopicDetailsPage extends StatelessWidget {
  const TopicDetailsPage({super.key});

  final String theme = 'Атлас. Карты';

  @override
  Widget build(BuildContext context) {
    final model = context.read<TopicDetailsPageModel>();

    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: 28),
            const TopicDetailsAppBar(),
            const SizedBox(height: 16),
            ...model.topics.map(
              (e) {
                return ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Center(
                      child: Text(
                        'Тема ${e.theme}',
                        style: const TextStyle(
                          fontFamily: 'gothampro',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        e.title,
                        style: const TextStyle(
                          fontFamily: 'gothampro',
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Column(
                      children: [
                        ...e.tasks.map(
                          (e) {
                            return Column(
                              children: [
                                TopicMaterials(model: e),
                                const SizedBox(height: 8),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    TopicMaterialssss(
                      model: TaskModel(
                          type: 'Работа с картой',
                          title: 'Тема 1',
                          theme: 'Атлас. Как его использовать',
                          isComplete: false),
                    ),
                    const SizedBox(height: 28),
                  ],
                );
              },
            ),
            SizedBox(height: bottomNavBarHeight + 24 + 20 - 28),
          ],
        ),
      ),
    );
  }
}

class TopicMaterialssss extends StatelessWidget {
  const TopicMaterialssss({this.isNeed = false, required this.model, super.key});

  final TaskModel model;

  final isNeed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed('MapPage'),
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
