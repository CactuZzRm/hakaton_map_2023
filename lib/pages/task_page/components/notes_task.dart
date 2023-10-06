import 'package:flutter/material.dart';
import 'package:hakaton_map_test/pages/task_page/components/important_block.dart';
import 'package:hakaton_map_test/pages/task_page/components/next_button.dart';

class NotesTask extends StatelessWidget {
  const NotesTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const SizedBox(height: 20),
        const ImportantBlock(
            text:
                'ВАЖНО! этом видео мы изучим тему по географии “Атлас”. В этом видео мы изучим тему по географии “Атлас”.'),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(254, 231, 245, 1),
                Color.fromRGBO(251, 214, 255, 1),
                Color.fromRGBO(251, 222, 134, 1),
              ],
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.only(left: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
              color: Colors.white,
            ),
            child: const Row(
              children: [
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'В этом видео мы изучим тему по географии “Атлас”. В этом видео мы изучим тему по географии “Атлас”.В этом видео мы изучим тему по географии “Атлас”.В этом видео мы изучим тему по географии “Атлас  этом видео мы изучим тему по географии “Атлас”. В этом видео мы изучим тему по географии “Атлас”.В этом видео мы изучим тему по географии “Атлас”.В этом видео мы изучим тему по географии “Атлас”.',
                    style: TextStyle(
                      fontFamily: 'gothampro',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(41, 41, 41, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'В этом видео мы изучим тему по географии “Атлас”. В этом видео мы изучим тему по географии “Атлас”.В этом видео мы изучим тему по географии “Атлас”.В этом видео мы изучим тему по географии “Атлас”.',
          style: TextStyle(
            fontFamily: 'gothampro',
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(39, 3, 42, 0.8),
          ),
        ),
        const SizedBox(height: 28),
        NextButton(),
      ],
    );
  }
}
