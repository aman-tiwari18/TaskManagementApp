import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:note_app/screens/ContactPage.dart';
import 'package:note_app/screens/HomePage.dart';
import 'package:note_app/screens/Settings.dart';

class menuPage extends StatefulWidget {
  const menuPage({super.key});

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: EdgeInsets.only(top: he * 0.03, bottom: he * 0.03),
              child: Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                    child: Icon(
                      Icons.close_rounded,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: he * 0.13,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) => ContactUs(),
                  ),
                );
              },
              child: Text(
                "Contact Us",
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: he * 0.03,
            ),
            Text(
              "Help",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: he * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => settingsPage(),
                    ));
              },
              child: Text(
                "Settings",
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: he * 0.03,
            ),
            GestureDetector(
              onTap: () => SystemNavigator.pop(),
              child: Text(
                "Quit",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
