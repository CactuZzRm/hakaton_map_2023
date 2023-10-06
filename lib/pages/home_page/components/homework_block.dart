import 'package:flutter/material.dart';
import 'package:hakaton_map_test/models/homework_model.dart';

import '../../../constants/months.dart';

class HomeworkBlock extends StatelessWidget {
  const HomeworkBlock({required this.model, super.key});

  // final String title;
  // final String description;
  // final DateTime date;

  final HomeWorkModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromRGBO(255, 226, 249, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  style: const TextStyle(
                    fontFamily: 'gothampro',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(189, 87, 179, 1),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                 model. description,
                  style: const TextStyle(
                    fontFamily: 'gothampro',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(189, 87, 179, 0.7),
                  ),
                )
              ],
            ),
          ),
          Text(
            '${model.date.day} ${months[model.date.month]}',
            style: const TextStyle(
              fontFamily: 'gothampro',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(189, 87, 179, 1),
            ),
          )
        ],
      ),
    );
  }
}
