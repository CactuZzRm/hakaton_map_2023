import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class TaskPageAppBar extends StatelessWidget {
  const TaskPageAppBar({required this.type, super.key});

  final String type;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => context.pop(),
          icon: SvgPicture.asset('assets/svg_icons/arrow_left.svg'),
          style: const ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        ),
        Expanded(
          child: Center(
            child: GradientText(
              type,
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
        const SizedBox(height: 24, width: 24),
      ],
    );
  }
}
