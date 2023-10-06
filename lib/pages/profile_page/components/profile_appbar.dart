import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Center(
            child: Text(
              'Профиль',
              style: TextStyle(
                fontFamily: 'Rounded',
                fontSize: 32,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(39, 3, 43, 1)
              ),
            ),
          ),
        ),
      ],
    );
  }
}
