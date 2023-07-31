import 'package:flutter/material.dart';
import 'main.dart';

class Question extends StatelessWidget {
  final String Qes;

  Question(this.Qes);

  @override
  Widget build(BuildContext context) {
    return Container(color:  isSwitched == false ? Colors.blue : Colors.purple,
      width: double.infinity,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.symmetric(vertical: 30),
      alignment: Alignment.center,
      child: Text(
        Qes,
        style: TextStyle(
            color: isSwitched == false ? Colors.black : Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
