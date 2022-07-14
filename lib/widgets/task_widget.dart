import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const ListTile(
            title: Text("Ready to answare a few questions?"),
            subtitle: Text("It will only take a minute"),
            leading: Icon(Icons.message_outlined),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text("Yes!")),
              TextButton(onPressed: () {}, child: const Text("Not now!")),
            ],
          )
        ],
      ),
    );
  }
}
