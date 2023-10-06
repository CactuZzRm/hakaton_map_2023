import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hakaton_map_test/pages/tabs_page/tabs_page.dart';

class BottomNavBar extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavBar(this.navigationShell, {super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<String> icons = [
    'assets/svg_icons/Home.svg',
    'assets/svg_icons/Edit.svg',
    'assets/svg_icons/Notification.svg',
    'assets/svg_icons/Profile.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      padding: const EdgeInsets.only(top: 21, bottom: 21),
      height: bottomNavBarHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(154, 170, 255, 1),
        borderRadius: BorderRadius.circular(64),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        for (int i = 0; i < icons.length; i++) ...[
          GestureDetector(
            onTap: () => setState(() {
              _currentIndex = i;
              widget.navigationShell.goBranch(_currentIndex);
            }),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  icons[i],
                  color: _currentIndex == i ? Colors.white : const Color.fromRGBO(226, 231, 255, 1),
                ),
                if (_currentIndex == i)
                  Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
              ],
            ),
          ),
        ]
      ]),
    );
  }
}
