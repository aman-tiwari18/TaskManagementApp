import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:note_app/modals/Task_modal.dart';
import 'package:note_app/widgets/constants.dart';
import 'package:note_app/widgets/detail.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: ListView(
        children: [
          CategoryCard(
            category: Personal(),
          ),
          const SizedBox(
            height: 20,
          ),
          CategoryCard(
            category: Work(),
          ),
          const SizedBox(
            height: 20,
          ),
          CategoryCard(
            category: Health(),
          ),
          const SizedBox(
            height: 20,
          ),
          CategoryCard(
            category: Other(),
          ),
        ],
      ),
    );
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

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(context) {
    final double he = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(cateogry: category),
          ),
        );
      },
      child: Container(
        height: he * 0.2,
        width: he * 0.2,
        padding: EdgeInsets.only(left: he * 0.02, top: he * 0.035),
        decoration: BoxDecoration(
          color: category.bgColor,
          // border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(he * 0.02),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                category.icon,
                SizedBox(
                  height: he * 0.02,
                ),
                Text(
                  category.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: he * 0.25,
            ),
            Column(
              children: [
                _buildTaskStatus(category.icon.color!, Colors.black,
                    '${category.getLeftTask()} left'),
                SizedBox(
                  height: he * 0.03,
                ),
                _buildTaskStatus(kwhite, Colors.black,
                    '${category.getCompletedTask()} done'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Widget _buildTask(
//   BuildContext context,
//   Task taskList,
// ) {
//   var he = MediaQuery.of(context).size.height;
//   return GestureDetector(
//     onTap: () {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => DetailPage(taskList),
//         ),
//       );
//     },
//     child: Container(
//       height: he * 0.2,
//       width: he * 0.2,
//       padding: EdgeInsets.only(left: he * 0.02, top: he * 0.02),
//       decoration: BoxDecoration(
//         color: taskList.bgcolor,
//         // border: Border.all(width: 2),
//         borderRadius: BorderRadius.circular(he * 0.02),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Icon(
//             taskList.icon,
//             color: taskList.iconcolor,
//             size: 30,
//           ),
//           SizedBox(
//             height: he * 0.02,
//           ),
//           Text(
//             taskList.title.toString(),
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w500,
//               color: Colors.grey.shade600,
//             ),
//           ),
//           SizedBox(
//             height: he * 0.02,
//           ),
//           Row(
//             children: [
//               _buildTaskStatus(taskList.btncolor!, taskList.iconcolor!,
//                   '${taskList.left} left'),
//               SizedBox(
//                 width: he * 0.01,
//               ),
//               _buildTaskStatus(
//                   kwhite, taskList.iconcolor!, '${taskList.done} done'),
//             ],
//           )
//         ],
//       ),
//     ),
//   );
// }

Widget _buildTaskStatus(Color bgColor, Color txtColor, String txt) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Text(
      txt,
      style: TextStyle(
        color: txtColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
