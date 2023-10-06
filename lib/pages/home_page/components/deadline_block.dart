import 'package:flutter/material.dart';

import '../../../constants/months.dart';
import '../../../models/deadline_model.dart';

class DeadlineBlock extends StatelessWidget {
  const DeadlineBlock({required this.model, super.key});

  final DeadlineModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromRGBO(156, 172, 255, 0.3),
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
                    color: Color.fromRGBO(126, 87, 189, 1),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  model.description,
                  style: const TextStyle(
                    fontFamily: 'gothampro',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(107, 70, 167, 0.7),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Text(
                model.time,
                style: const TextStyle(
                  fontFamily: 'gothampro',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(126, 87, 189, 1),
                ),
              ),
              Text(
                '${model.date.day} ${months[model.date.month]}',
                style: const TextStyle(
                  fontFamily: 'gothampro',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(126, 87, 189, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
