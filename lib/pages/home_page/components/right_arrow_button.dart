import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RightArrowButton extends StatelessWidget {
  const RightArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          'Смотреть всё',
          style: TextStyle(
              fontFamily: 'gothampro',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(126, 87, 189, 1)),
        ),
        SvgPicture.asset(
          'assets/svg_icons/arrow_right.svg',
          color: const Color.fromRGBO(126, 87, 189, 1),
        ),
      ],
    );
  }
}
