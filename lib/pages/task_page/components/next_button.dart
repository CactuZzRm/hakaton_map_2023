import 'package:flutter/material.dart';
import 'package:hakaton_map_test/pages/task_page/task_page_model.dart';
import 'package:provider/provider.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<TaskPageViewModel>();

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
        onPressed: () => model.setAnswer(),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(vertical: 20),
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))),
        child: const Text(
          'Дальше',
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
