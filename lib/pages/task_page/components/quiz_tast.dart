import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../task_page_model.dart';
import 'next_button.dart';

class QuizTask extends StatelessWidget {
  QuizTask({required this.question, required this.answers, super.key});

  final String question;
  final List<String> answers;
  int tempIndex = -1;

  @override
  Widget build(BuildContext context) {
    final model = context.watch<TaskPageViewModel>();
    
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Center(
          child: Text(
            question,
            style: const TextStyle(
              fontFamily: 'gothampro',
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(61, 29, 64, 1),
            ),
          ),
        ),
        const SizedBox(height: 38),
        ...answers.map(
          (e) {
            tempIndex += 1;
            return Column(
              children: [
                AnswerBlock(e, tempIndex),
                const SizedBox(height: 16),
              ],
            );
          },
        ),
        const SizedBox(height: 28),
        NextButton(),
      ],
    );
  }
}

class AnswerBlock extends StatelessWidget {
  const AnswerBlock(this.text, this.index, {super.key});

  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TaskPageViewModel>();

    return GestureDetector(
      onTap: () => viewModel.setQuizAnswer(index),
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(61, 29, 64, 0.2),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Container(
          padding: EdgeInsets.all(viewModel.quizCurrentAnswer == index ? 2 : 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(111, 244, 255, 1),
              Color.fromRGBO(247, 174, 255, 1),
              Color.fromRGBO(254, 211, 81, 1)
            ]),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 22),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(247, 248, 255, 1),
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Text(
              'В этом видео мы изучим тему по географии “Атлас”. В этом видео мы изучим тему по географии “Атлас”.',
              style: TextStyle(
                fontFamily: 'gothampro',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(41, 41, 41, 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
