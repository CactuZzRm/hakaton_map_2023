import 'package:flutter/material.dart';
import 'package:hakaton_map_test/pages/home_page/home_page_model.dart';
import 'package:provider/provider.dart';

import 'topic_block.dart';

class TopicGridView extends StatelessWidget {
  const TopicGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<HomePageViewModel>();

    return GridView.count(
      shrinkWrap: true,
      primary: false,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: [
        ...model.subjects.map((e) {
          return TopicBlock(
            topicTitle: e.title,
            topicTheme: e.topic,
            currentPoints: e.points.currentPoints,
            maxPoints: e.points.maxPoints,
            color: '#A8B6FF',
          );
        }),
      ],
    );
  }
}
