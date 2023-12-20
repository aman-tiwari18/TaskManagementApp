import 'package:flutter/material.dart';
import 'package:note_app/widgets/constants.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Container(
        height: he * 0.2,
        width: he * 0.2,
        padding: EdgeInsets.only(left: he * 0.02, top: he * 0.02),
        decoration: BoxDecoration(
          color: kYellowLight,
          // border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(he * 0.02),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.work,
              size: 30,
            ),
            SizedBox(
              height: he * 0.02,
            ),
            const Text(
              'Work',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: he * 0.02,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: he * 0.01, right: he * 0.01),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kYellowDark,
                  ),
                  child: const Text(
                    '3left',
                  ),
                ),
                SizedBox(
                  width: he * 0.01,
                ),
                Container(
                  padding: EdgeInsets.only(left: he * 0.01, right: he * 0.01),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Text(
                    '1done',
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
