import 'package:flutter/material.dart';
import 'question.dart';
import 'Answer.dart';
import 'main.dart';

class quiz extends StatelessWidget {
  final int count;

  final Function(int s) x;

  quiz(this.x, this.count);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(q[count]['question'].toString()),
        ...(q[count]['ans'] as List<Map<String,Object>>).map((value) {
          return answer(value['text'].toString(),
              int.parse(value['score'].toString()), x);
        }).toList(),
      ],
    );
  }
}
