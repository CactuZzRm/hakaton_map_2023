import 'package:flutter/material.dart';
import 'package:hakaton_map_test/pages/task_page/components/video_widget.dart';

import 'next_button.dart';

class VideoTask extends StatelessWidget {
  const VideoTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const SizedBox(
          height: 221,
          width: double.infinity,
          child: VideoPlayerWidget(videoUrl: 'https://www.youtube.com/watch?v=SAWEqJcgPGg'),
        ),
        SizedBox(height: 12),
        // const Center(
        //   child: Text(
        //     'Вы остановились на моменте 2: 00',
        //     style: TextStyle(
        //       fontFamily: 'gothampro',
        //       fontSize: 14,
        //       fontWeight: FontWeight.w400,
        //       color: Color.fromRGBO(61, 29, 64, 1),
        //     ),
        //   ),
        // ),
        const SizedBox(height: 20),
        const Text(
          'Описание',
          style: TextStyle(
            fontFamily: 'gothampro',
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(61, 29, 64, 1),
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
