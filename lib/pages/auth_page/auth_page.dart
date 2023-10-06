import 'package:flutter/material.dart';
import 'package:hakaton_map_test/pages/auth_page/components/auth_button.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red[100],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/pictures/first-medal.png'),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.35,
                padding: const EdgeInsets.symmetric(vertical: 44, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const Center(
                      child: Text(
                        'авторизация',
                        style: TextStyle(
                          fontFamily: 'Rounded',
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 66),
                    AuthButton(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Зыбали пароль?',
                        style: TextStyle(
                          fontFamily: 'gothampro',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(107, 70, 167, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
