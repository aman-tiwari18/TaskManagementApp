import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:note_app/modals/Task_modal.dart';
import 'package:note_app/widgets/buildCard.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TaskTimeLine extends StatelessWidget {
  final Todo todo;
  TaskTimeLine({required this.todo});

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    String formattedTime = DateFormat.H().format(dateTime);
    return Column(
      children: [
        Row(
          children: [
            _buildTimeLine(todo.bgColor),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    formattedTime + ':00',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  BuildCard(
                    bgColor: todo.bgColor,
                    title: todo.title,
                    slot: todo.slot.toString(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Widget _buildCard(Color bgColor, String title, String slot) {
  //   return Container(
  //     width: 250,
  //     height: 100,
  //     decoration: BoxDecoration(
  //       color: bgColor,
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(10),
  //         topRight: Radius.circular(10),
  //         bottomRight: Radius.circular(10),
  //       ),
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Padding(
  //           padding: EdgeInsets.all(8.0),
  //           child: Text(
  //             title,
  //             style: TextStyle(
  //               color: Colors.grey.shade900,
  //               fontSize: 18,
  //               fontWeight: FontWeight.w500,
  //             ),
  //           ),
  //         ),
  //         Padding(
  //           padding: EdgeInsets.all(8.0),
  //           child: Text(
  //             slot,
  //             style: TextStyle(
  //                 color: Colors.grey.shade900,
  //                 fontSize: 18,
  //                 fontWeight: FontWeight.w500),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildTimeLine(Color color) {
    return Container(
      width: 20,
      height: 115,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0,
        indicatorStyle: IndicatorStyle(
          indicatorXY: 0,
          width: 20,
          indicator: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: color,
                width: 5,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        afterLineStyle: LineStyle(
          color: color,
          thickness: 2,
        ),
        isFirst: true,
      ),
    );
  }
}
