import 'package:flutter/material.dart';
import 'package:note_app/widgets/constants.dart';

class Task {
  IconData? icon;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  num? left;
  List<Map<String, dynamic>>? desc;
  num? done;
  bool isLast;

  Task(
      {this.icon,
      this.title,
      this.bgcolor,
      this.iconcolor,
      this.btncolor,
      this.left,
      this.desc,
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
        desc: [
          {
            'time': '9:00 AM',
            'title': 'Meeting with client',
            'slot': '9:00 AM - 10:00 AM',
            't1cColor': kRedDark,
            'bgColor': kRedLight,
          },
          {
            'time': '10:00 AM',
            'title': 'Watching a movie',
            'slot': '10:00 AM - 11:00 AM',
            't1cColor': kRedDark,
            'bgColor': kRedLight,
          },
          {
            'time': '11:00 AM',
            'title': '',
            'slot': '',
            't1cColor': kRedDark,
            'bgColor': kRedLight,
          },
          {
            'time': '12:00 PM',
            'title': 'Go to the Gym',
            'slot': '12:00 PM - 1:00 PM',
            't1cColor': kRedDark,
            'bgColor': kRedLight,
          },
          {
            'time': '1:00 PM',
            'title': 'call with Client',
            'slot': '1:00 PM - 2:00 PM',
            't1cColor': Colors.grey.withOpacity(0.3),
            'bgColor': kYellowLight,
          },
        ],
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
        icon: Icons.border_outer_sharp,
        title: 'Other',
        bgcolor: kBlue,
        iconcolor: kBlueDark,
        btncolor: Color.fromARGB(255, 133, 172, 203),
        left: 5,
        done: 3,
        isLast: false,
      ),
    ];
  }
}
