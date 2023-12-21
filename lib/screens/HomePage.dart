// import 'dart:js';
// import 'dart:js';

import 'package:flutter/material.dart';
// import 'package:note_app/components/upper_header.dart';
// import 'package:note_app/modals/Task_modal.dart';
import 'package:note_app/screens/ProfilePage.dart';
import 'package:note_app/widgets/constants.dart';
import 'package:note_app/widgets/task.dart';
// import 'package:note_app/widgets/premium.dart';
// import 'package:note_app/widgets/taskCard.dart';
import 'package:note_app/screens/MenuPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _pages = [
    HomePage(),
    ProfilePage(),
  ];

  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            backgroundColor: kwhite,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  size: 30,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_rounded,
                  size: 30,
                ),
                label: 'Person',
              ),
            ],
            currentIndex: _activeIndex,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() {
                _activeIndex = index;
              });
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showMyDialog(context);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: kdark,
        child: Icon(
          Icons.add,
          color: kLightGrey,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[_activeIndex],
    );
  }
}

AppBar _buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kwhite,
    elevation: 0,
    title: Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10, top: 5),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: kLightGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/profilePhoto.jpg'),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          'Hello, Aman',
          style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.more_vert,
          color: Colors.grey.shade600,
          size: 35,
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const menuPage()));
        },
      ),
    ],
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(15),
          child: Text(
            'Tasks',
            style: TextStyle(
              color: Colors.grey.shade800,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        Expanded(
          child: Tasks(),
        )
      ],
    );
  }
}

const List<String> list = <String>['Work', 'Personal', 'Health', 'Other'];

Future<void> _showMyDialog(BuildContext parentContext) async {
  var he = MediaQuery.of(parentContext).size.height;

  return showDialog<void>(
    context: parentContext,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) => Dialog(
      child: Container(
        height: he * 0.4,
        width: he * 0.4,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: he * 0.009,
                  bottom: he * 0.009,
                  right: he * 0.04,
                  left: he * 0.04),
            ),
            Text(
              "Add Task",
              style: TextStyle(
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w500,
                fontSize: he * 0.04,
              ),
            ),
            SizedBox(
              height: he * 0.04,
            ),
            const DropdownButtonExample(),
            SizedBox(
              height: he * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: he * 0.06, right: he * 0.06),
              child: const TextField(
                decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  hintText: 'Enter task name',
                ),
              ),
            ),
            SizedBox(
              height: he * 0.02,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.blue.shade600),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ))
          ],
        ),
      ),
    ),
  );
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(
        color: Colors.deepPurple,
        fontSize: 16,
      ),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
