import 'package:flutter/material.dart';
import 'Quiz.dart';
import 'Start.dart';
import 'end.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

double total = 0;
bool isSwitched = false;

List<Map<String, Object>> q = [
  {
    'question': "What is the size of the int data type?",
    'ans': [
      {'text': "4 bytes", "score": 1},
      {'text': "8 bytes", "score": 0},
      {'text': "2 bytes", "score": 0},
      {'text': "1 bytes", "score": 0}
    ],
  },
  {
    'question': "What is std in C++?",
    'ans': [
      {'text': "std is a standard class in C++", "score": 1},
      {'text': "std is a standard file reading header", "score": 0},
      {'text': "std is a standard header file", "score": 0},
      {'text': "std is a standard namespace", "score": 0}
    ],
  },
  {
    'question': "Which of the following is not a member of a class?",
    'ans': [
      {'text': "Static function", "score": 0},
      {'text': " Virtual function", "score": 0},
      {'text': "Const function", "score": 0},
      {'text': "Friend function", "score": 1}
    ],
  },
  {
    'question':
    "What should be the correct statement about string objects in C++?",
    'ans': [
      {
        'text':
        "String objects should necessarily be terminated by a null character",
        "score": 0
      },
      {'text': "String objects have a static size", "score": 0},
      {'text': "String objects have a dynamic size", "score": 1},
      {'text': "String objects use extra memory than required", "score": 0}
    ],
  },
];

class _MyAppState extends State<MyApp> {
  final int QuestionCount = 4;
  int count = -1;

  void starting() {
    setState(() {
      total = 0;
      count = 0;
    });
  }

  void reset() {
    setState(() {
      total = 0;
      count = -1;
    });
  }

  void fun(int score) {
    setState(() {
      total += score;
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:isSwitched?Colors.purple:Colors.blue,
          actions: [
            Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                })
          ],
          title: const Text("Quiz",textAlign: TextAlign.center,),
        ),
        body: count == -1
            ? start(s: starting)
            : (-1 != count && count < QuestionCount)
            ? quiz(fun, count)
            : end(reset),
      ),
    );
  }
}
