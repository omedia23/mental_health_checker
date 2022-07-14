import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ///upper card to start the question seasion.
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
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
                ),
              ],
            ),
          ),
        ),

        ///bottom exit button
        GestureDetector(
          onDoubleTap: () {
            //SystemNavigator.pop();
            SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          },
          child: Container(
            padding: const EdgeInsets.all(15),
            height: 60,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: const Text(
              "Press twich to exit!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        )
      ],
    );
  }
}
