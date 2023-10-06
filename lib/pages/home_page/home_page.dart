import 'package:flutter/material.dart';
import 'package:hakaton_map_test/pages/home_page/components/deadline_block.dart';
import 'package:hakaton_map_test/pages/home_page/components/homework_block.dart';
import 'package:hakaton_map_test/pages/home_page/components/page_app_bar.dart';
import 'package:hakaton_map_test/pages/home_page/components/topic_gridview.dart';
import 'package:hakaton_map_test/pages/home_page/home_page_model.dart';
import 'package:hakaton_map_test/pages/tabs_page/tabs_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<HomePageViewModel>();

    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const PageAppBar(),
            const SizedBox(height: 4),
            const TopicGridView(),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(
                  child: Text(
                    'Домашние задания',
                    style: TextStyle(
                      fontFamily: 'Rounded',
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(width: 2),
                Image.asset('assets/pictures/homework.jpg'),
              ],
            ),
            const SizedBox(height: 4),
            Column(
              children: [
                ...model.homework.map(
                  (e) {
                    return Column(
                      children: [
                        HomeworkBlock(model: e),
                        const SizedBox(height: 8),
                      ],
                    );
                  },
                )
              ],
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(
                  child: Text(
                    'Дедлайны',
                    style: TextStyle(
                      fontFamily: 'Rounded',
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(width: 2),
                Image.asset('assets/pictures/graduation-hat.png'),
              ],
            ),
            const SizedBox(height: 4),
            Column(
              children: [
                ...model.deadline.map((e) {
                  return Column(
                    children: [
                      DeadlineBlock(model: e),
                      const SizedBox(height: 8),
                    ],
                  );
                })
              ],
            ),
            SizedBox(height: bottomNavBarHeight + 24 + 20),
          ],
        ),
      ),
    );
  }
}
