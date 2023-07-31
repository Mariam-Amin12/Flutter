import 'package:flutter/material.dart';
import 'main.dart';

class answer extends StatelessWidget {
  final String ans;
  final int score;
  final Function(int s) x;

  answer(this.ans, this.score, this.x);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: () {
          x(score);
        },
        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.all(20)),
            backgroundColor: MaterialStateProperty.all(
                isSwitched == false ? Colors.blue : Colors.purple)),
        child: Text(
          ans,
          style: TextStyle(
            color: isSwitched == false ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
