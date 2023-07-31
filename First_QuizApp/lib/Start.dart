import 'package:flutter/material.dart';
import 'main.dart';

class start extends StatelessWidget {
  final Function() s;

  start({super.key, required this.s});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        child: ElevatedButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
              backgroundColor: MaterialStateProperty.all(
                  isSwitched == false ? Colors.blue : Colors.purple)),
          onPressed: () {
            s();
          },
          child: Text(
            "Start",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: isSwitched == false ? Colors.black : Colors.white),
          ),
        ),
      ),
    );
  }
}
