import 'package:flutter/material.dart';
import 'package:note_app/widgets/constants.dart';

import 'dart:math';

abstract class Category {
  String get title;
  Icon get icon;
  Color get bgColor;
  List<Todo> get todos;

  void add(Todo todo);
  int getCompletedTask();
  int getLeftTask();
}

class Personal extends Category {
  static final Personal _instance = Personal._internal();

  factory Personal() {
    return _instance;
  }

  Personal._internal();

  final String _title = "Personal";
  final Icon _icon = const Icon(
    Icons.person_rounded,
    color: kBlueDark,
  );
  final Color _bgColor = kBlueLight;
  final List<Todo> _todos = [];

  @override
  List<Todo> get todos => _todos;

  @override
  void add(Todo todo) {
    _todos.add(todo);
  }

  @override
  int getCompletedTask() {
    return _todos.where((element) => element.completed == true).length;
  }

  @override
  int getLeftTask() {
    return _todos.where((element) => element.completed == false).length;
  }

  @override
  Color get bgColor => _bgColor;

  @override
  Icon get icon => _icon;

  @override
  String get title => _title;
}

class Work extends Category {
  final String _title = "Work";
  final Icon _icon = const Icon(
    Icons.work,
    color: kYellowDark,
  );
  final Color _bgColor = kYellowLight;
  final List<Todo> _todos = [];

  static final Work _instance = Work._internal();

  Work._internal();

  factory Work() {
    return _instance;
  }

  @override
  List<Todo> get todos => _todos;

  @override
  void add(Todo todo) {
    _todos.add(todo);
  }

  @override
  int getCompletedTask() {
    return _todos.map((todo) => todo.completed).toList().length;
  }

  @override
  int getLeftTask() {
    return _todos.map((todo) => !todo.completed).toList().length;
  }

  @override
  Color get bgColor => _bgColor;

  @override
  Icon get icon => _icon;

  @override
  String get title => _title;
}

class Health extends Category {
  final String _title = "Health";
  final Icon _icon = const Icon(
    Icons.favorite,
    color: Colors.red,
  );
  final Color _bgColor = kRedLight;
  final List<Todo> _todos = [];

  static final Health _instance = Health._internal();

  Health._internal();

  factory Health() {
    return _instance;
  }

  @override
  List<Todo> get todos => _todos;

  @override
  void add(Todo todo) {
    _todos.add(todo);
  }

  @override
  int getCompletedTask() {
    return _todos.map((todo) => todo.completed).toList().length;
  }

  @override
  int getLeftTask() {
    return _todos.map((todo) => !todo.completed).toList().length;
  }

  @override
  Color get bgColor => _bgColor;

  @override
  Icon get icon => _icon;

  @override
  String get title => _title;
}

class Other extends Category {
  final String _title = "Other";
  final Icon _icon = const Icon(
    Icons.open_with_rounded,
    color: kBlueDark,
  );
  final Color _bgColor = kBlueLight;
  final List<Todo> _todos = [];

  static final Other _instance = Other._internal();

  Other._internal();

  factory Other() {
    return _instance;
  }

  @override
  List<Todo> get todos => _todos;

  @override
  void add(Todo todo) {
    _todos.add(todo);
  }

  @override
  int getCompletedTask() {
    return _todos.map((todo) => todo.completed).toList().length;
  }

  @override
  int getLeftTask() {
    return _todos.map((todo) => !todo.completed).toList().length;
  }

  @override
  Color get bgColor => _bgColor;

  @override
  Icon get icon => _icon;

  @override
  String get title => _title;
}

class Todo {
  final int id;
  final String title;
  final String slot;
  final bool completed;

  late final Color bgColor;
  final List<Color> _colors = [kBlue, kred, kYellow];

  void _createBgColor() {
    final int seed = Random().nextInt(3);
    bgColor = _colors[seed];
  }

  Todo({
    required this.id,
    required this.title,
    required this.slot,
    this.completed = false,
  }) {
    _createBgColor();
  }
}
