import 'package:flutter/material.dart';

class ImportantBlock extends StatelessWidget {
  const ImportantBlock({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(111, 244, 255, 1),
            Color.fromRGBO(247, 174, 255, 1),
            Color.fromRGBO(254, 211, 81, 1),
          ],
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(247, 248, 255, 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            // SvgPicture.asset('assets/svg_icons/stationary_jar.svg'),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset('assets/pictures/stationary-jar.jpg')),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  fontFamily: 'gothampro',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(41, 41, 41, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
