import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'components/bottom_nav_bar.dart';

double bottomNavBarHeight = 90;

class TabsPage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const TabsPage(this.navigationShell, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            navigationShell,
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavBar(navigationShell),
            )
          ],
        ));
  }
}
