import 'package:flutter/material.dart';

import 'right_arrow_button.dart';

class PageAppBar extends StatelessWidget {
  const PageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Text(
            'Предмет',
            style: TextStyle(
              fontFamily: 'Rounded',
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        // SvgPicture.asset('assets/svg_icons/atom(3).svg', color: Colors.red),
        Image.asset('assets/pictures/atom.jpg'),
        Expanded(child: const RightArrowButton()),
      ],
    );
  }
}
