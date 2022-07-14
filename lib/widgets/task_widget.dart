import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  TaskWidget({Key? key}) : super(key: key);

  final List<Map> _taskList = [
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVMVhx1EQixMmhQyQAKG_3fBb0ozOf8KZy-GA2j1V4WLfhqEcYkJrbEE0Y6j6YCmxgs78&usqp=CAU",
      "title": "Get Out! Meet a new people today",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVMVhx1EQixMmhQyQAKG_3fBb0ozOf8KZy-GA2j1V4WLfhqEcYkJrbEE0Y6j6YCmxgs78&usqp=CAU",
      "title": "Listen to your favourite tracks",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVMVhx1EQixMmhQyQAKG_3fBb0ozOf8KZy-GA2j1V4WLfhqEcYkJrbEE0Y6j6YCmxgs78&usqp=CAU",
      "title": "Get a job today!",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _taskList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(_taskList[index]["image"]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _taskList[index]["title"],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
