import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(111, 244, 255, 1),
            Color.fromRGBO(247, 174, 255, 1),
            Color.fromRGBO(254, 211, 81, 1),
          ],
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
          context.goNamed('Home');
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(vertical: 20),
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))),
        child: const Text(
          'Войти',
          style: TextStyle(
            fontFamily: 'gothampro',
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
