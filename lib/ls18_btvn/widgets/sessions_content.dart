import 'package:flutter/material.dart';
import 'package:flutter_learning/lesson_18_assignment/widgets/filter_section.dart';
import 'package:flutter_learning/lesson_18_assignment/widgets/group_by_section.dart';
import 'package:flutter_learning/lesson_18_assignment/widgets/show_time_item.dart';

class SessionsContent extends StatelessWidget {
  const SessionsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FilterSection(),
        const GroupBySection(),
        Expanded(
            child: ListView(
          children: const [
            ShowtimeItem(
                time: "14:40",
                typeOfTheater: "Pyc",
                theaterName: "Eurasia Cinema7",
                listPriceByPriceType: [2200, 1000, 1500, null]),
            ShowtimeItem(
                time: "14:40",
                typeOfTheater: "Pyc",
                theaterName: "Eurasia Cinema7",
                listPriceByPriceType: [2200, 1000, 1500, null]),
            ShowtimeItem(
                time: "14:40",
                typeOfTheater: "Pyc",
                theaterName: "Eurasia Cinema7",
                listPriceByPriceType: [2200, 1000, 1500, null]),
            ShowtimeItem(
                time: "14:40",
                typeOfTheater: "Pyc",
                theaterName: "Eurasia Cinema7",
                listPriceByPriceType: [2200, 1000, 1500, null]),
            ShowtimeItem(
                time: "14:40",
                typeOfTheater: "Pyc",
                theaterName: "Eurasia Cinema7",
                listPriceByPriceType: [2200, 1000, 1500, null]),
            ShowtimeItem(
                time: "14:40",
                typeOfTheater: "Pyc",
                theaterName: "Eurasia Cinema7",
                listPriceByPriceType: [2200, 1000, 1500, null]),
            ShowtimeItem(
                time: "14:40",
                typeOfTheater: "Pyc",
                theaterName: "Eurasia Cinema7",
                listPriceByPriceType: [2200, 1000, 1500, null]),
            ShowtimeItem(
                time: "14:40",
                typeOfTheater: "Pyc",
                theaterName: "Eurasia Cinema7",
                listPriceByPriceType: [2200, 1000, 1500, null]),
            ShowtimeItem(
                time: "14:40",
                typeOfTheater: "Pyc",
                theaterName: "Eurasia Cinema7",
                listPriceByPriceType: [2200, 1000, 1500, null]),
            ShowtimeItem(
                time: "14:40",
                typeOfTheater: "Pyc",
                theaterName: "Eurasia Cinema7",
                listPriceByPriceType: [2200, 1000, 1500, null]),
            ShowtimeItem(
                time: "14:40",
                typeOfTheater: "Pyc",
                theaterName: "Eurasia Cinema7",
                listPriceByPriceType: [2200, 1000, 1500, null]),
          ],
        ))
      ],
    );
  }
}
