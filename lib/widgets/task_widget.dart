import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        ),
        Expanded(
          flex: 6,
          child: InkWell(
            onDoubleTap: () {
              SystemNavigator.pop();
            },
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child: const Text("Press twich to exit!"),
              ),
            ),
          ),
        )
      ],
    );
  }
}
