import 'package:flutter/material.dart';

const Color kYellowLight = Color.fromARGB(255, 242, 217, 181);
const Color kYellowDark = Color.fromARGB(255, 232, 159, 70);
const Color kYellow = Color.fromARGB(255, 181, 144, 63);

const Color kBlueLight = Color.fromARGB(255, 172, 197, 231);
const Color kBlueDark = Color.fromARGB(255, 11, 56, 147);
const Color kBlue = Color.fromARGB(255, 180, 196, 215);

const Color kred = Color.fromARGB(255, 195, 35, 48);
const Color kRedDark = Color.fromARGB(255, 75, 2, 6);
const Color kRedLight = Color.fromARGB(255, 241, 172, 172);

const Color kwhite = Colors.white;
Color kdark = Colors.grey.shade900;
Color kLightGrey = Colors.grey.shade200;

class MyThemeColor {
  static const Color backgroundColor = Colors.white;
  static const Color textColor = Colors.black;
  static const Color subText = Color(0xFFC6C6C6);
}

// List<Map<String,dynamic>>category = ['Work': 'hell', 'Personal', 'Health', 'Other'];
List<Map<String, dynamic>> category = [
  {
    "name": "Work",
    "icon": Icons.work,
  },
  {
    "name": "Personal",
    "icon": Icons.person,
  },
  {
    "name": "Health",
    "icon": Icons.health_and_safety,
  },
  {
    "name": "Other",
    "icon": Icons.more_horiz,
  },
];
