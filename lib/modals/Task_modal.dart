import 'package:flutter/material.dart';
import 'package:note_app/widgets/constants.dart';

class Task {
  IconData? icon;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  num? left;
  num? done;
  bool isLast;

  Task(
      {this.icon,
      this.title,
      this.bgcolor,
      this.iconcolor,
      this.btncolor,
      this.left,
      this.done,
      this.isLast = false});

  static List<Task> generateTasks() {
    return [
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: Color.fromARGB(255, 133, 172, 203),
        left: 5,
        done: 3,
        isLast: false,
      ),
      Task(
        icon: Icons.work,
        title: 'Work',
        bgcolor: kYellowLight,
        iconcolor: kYellowDark,
        btncolor: const Color.fromARGB(255, 218, 212, 152),
        left: 5,
        done: 3,
        isLast: false,
      ),
      Task(
        icon: Icons.favorite_rounded,
        title: 'Health',
        bgcolor: kRedLight,
        iconcolor: Colors.red,
        btncolor: const Color.fromARGB(255, 223, 146, 141),
        left: 5,
        done: 3,
        isLast: false,
      ),
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlue,
        iconcolor: kwhite,
        btncolor: kBlue,
        left: 5,
        done: 3,
        isLast: true,
      ),
    ];
  }
}
