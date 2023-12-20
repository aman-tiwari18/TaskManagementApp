import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:note_app/modals/Task_modal.dart';
import 'package:note_app/widgets/constants.dart';
import 'package:note_app/widgets/taskCard.dart';

class Tasks extends StatelessWidget {
  final taskList = Task.generateTasks();

  Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          itemCount: taskList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) => taskList[index].isLast
              ? _buildAddTask()
              : _buildTask(context, taskList[index]),
        ));
  }
}

Widget _buildAddTask() {
  return DottedBorder(
    borderType: BorderType.RRect,
    radius: Radius.circular(20),
    color: Colors.grey.shade600,
    strokeWidth: 2,
    dashPattern: [10, 10],
    child: Center(
      child: Icon(
        Icons.add,
        size: 30,
        color: Colors.grey.shade600,
      ),
    ),
  );
}

// Widget _buildTask(BuildContext context, Task taskList) {
//   return Container(
//     padding: EdgeInsets.all(15),
//     decoration: BoxDecoration(
//       color: taskList.bgcolor,
//       borderRadius: BorderRadius.circular(10),
//     ),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [],
//     ),
//   );
// }

Widget _buildTask(
  BuildContext context,
  Task taskList,
) {
  var he = MediaQuery.of(context).size.height;
  return Container(
    height: he * 0.2,
    width: he * 0.2,
    padding: EdgeInsets.only(left: he * 0.02, top: he * 0.02),
    decoration: BoxDecoration(
      color: taskList.bgcolor,
      // border: Border.all(width: 2),
      borderRadius: BorderRadius.circular(he * 0.02),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          taskList.icon,
          color: taskList.iconcolor,
          size: 30,
        ),
        SizedBox(
          height: he * 0.02,
        ),
        Text(
          taskList.title.toString(),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade600,
          ),
        ),
        SizedBox(
          height: he * 0.02,
        ),
        Row(
          children: [
            _buildTaskStatus(taskList.btncolor!, taskList.iconcolor!,
                '${taskList.left} left'),
            SizedBox(
              width: he * 0.01,
            ),
            _buildTaskStatus(
                kwhite, taskList.iconcolor!, '${taskList.done} done'),
          ],
        )
      ],
    ),
  );
}

Widget _buildTaskStatus(Color bgcolor, Color txtColor, String txt) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    decoration: BoxDecoration(
      color: bgcolor,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Text(
      txt,
      style: TextStyle(
        color: txtColor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
