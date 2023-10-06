import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class TopicDetailsAppBar extends StatelessWidget {
  const TopicDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => context.pop(),
          icon: SvgPicture.asset('assets/svg_icons/arrow_left.svg'),
          style: ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        ),
        Expanded(
          child: Center(
            child: GradientText(
              'География',
              style: const TextStyle(
                fontFamily: 'Rounded',
                fontSize: 32,
                fontWeight: FontWeight.w400,
              ),
              colors: const [
                Color.fromRGBO(111, 244, 255, 1),
                Color.fromRGBO(247, 174, 255, 1),
                Color.fromRGBO(254, 211, 81, 1)
              ],
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/svg_icons/Apps.svg'),
          style: ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        ),
      ],
    );
  }
}
