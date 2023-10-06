import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hakaton_map_test/widgets/hex_color.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TopicBlock extends StatelessWidget {
  const TopicBlock({
    required this.topicTitle,
    required this.topicTheme,
    required this.currentPoints,
    required this.color,
    required this.maxPoints,
    super.key,
  });

  final String topicTitle;
  final String? topicTheme;
  final int currentPoints;
  final String color;
  final int maxPoints;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed('TopicDetailsPage'),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: const Color.fromRGBO(154, 170, 255, 1),
          color: color.toColor(),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: SvgPicture.asset(
                'assets/svg_icons/1.svg',
                color: Color.fromARGB(54, 255, 255, 255),
              ),
            ),
            Positioned(
              right: 0,
              child: SvgPicture.asset(
                'assets/svg_icons/2.svg',
                color: Color.fromARGB(54, 255, 255, 255),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    topicTitle,
                    style: const TextStyle(
                      fontFamily: 'gothampro',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    topicTheme ?? '',
                    style: const TextStyle(
                      fontFamily: 'gothampro',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Text(
                    '$currentPoints/$maxPoints',
                    style: const TextStyle(
                      fontFamily: 'gothampro',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(46),
                      color: Colors.white,
                    ),
                    child: LinearPercentIndicator(
                      padding: const EdgeInsets.all(0),
                      animation: true,
                      lineHeight: 6.0,
                      animationDuration: 2000,
                      percent: 0.9,
                      backgroundColor: Colors.white,
                      linearGradient: const LinearGradient(colors: [
                        Color.fromRGBO(111, 244, 255, 1),
                        Color.fromRGBO(247, 174, 255, 1),
                        Color.fromRGBO(254, 211, 81, 1)
                      ]),
                      barRadius: const Radius.circular(46),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
