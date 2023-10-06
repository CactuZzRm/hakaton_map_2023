import 'package:flutter/material.dart';
import 'package:hakaton_map_test/pages/profile_page/components/profile_appbar.dart';
import 'package:hakaton_map_test/pages/profile_page/profile_page_model.dart';
import 'package:provider/provider.dart';

import '../../constants/days.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<ProfilePageViewModel>();
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const ProfileAppBar(),
          const SizedBox(height: 32),
          Row(
            children: [
              ClipOval(
                child: SizedBox(
                  height: 77,
                  width: 77,
                  child: ClipOval(
                      child: Image.network('https://www.conic.org.br/portal/images/dim_2023_d.jpg', fit: BoxFit.cover)),
                ),
              ),
              const SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${model.firstName} ${model.lastName}',
                    style: const TextStyle(
                      fontFamily: 'gothampro',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '${model.classIndex} класс',
                    style: const TextStyle(
                      fontFamily: 'gothampro',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 28),
          const Text(
            '3 дня без перерыва',
            style: TextStyle(
              fontFamily: 'gothampro',
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(247, 248, 255, 1),
              borderRadius: BorderRadius.circular(13),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DayOfWeek(0),
                DayOfWeek(1),
                DayOfWeek(2),
                DayOfWeek(3),
                DayOfWeek(4),
                DayOfWeek(5),
                DayOfWeek(6)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DayOfWeek extends StatelessWidget {
  const DayOfWeek(this.dayIndex, {super.key});

  final int dayIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(days[dayIndex]),
        Container(
          width: 35,
          height: 35,
          padding: EdgeInsets.all(dayIndex <= DateTime.now().day ? 2 : 1),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: dayIndex <= DateTime.now().day
                ? const LinearGradient(
                    colors: [
                      Color.fromRGBO(111, 244, 255, 1),
                      Color.fromRGBO(247, 174, 255, 1),
                      Color.fromRGBO(254, 211, 81, 1),
                    ],
                  )
                : null,
            color: const Color.fromRGBO(94, 51, 115, 0.6),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  dayIndex < DateTime.now().day && dayIndex != DateTime.now().day ? Colors.transparent : Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
