import 'package:flutter/material.dart';
import 'var.dart';
import 'app.dart';
import 'result.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  updateweight(int i) {
    setState(() {
      Weight += i;
    });
  }

  updatage(int i) {
    setState(() {
      age += i;
    });
  }

  updategender(String Type) {
    setState(() {
      if (Type == "male") {
        gender = "Male";
        gendercolormale = const Color(0x960B473B);
        if (gendercolorfemale == const Color(0x960B473B)) {
          gendercolorfemale = const Color(0x964F9C7E);
        }
      } else {
        gender = "Female";
        gendercolorfemale = const Color(0x960B473B);
        if (gendercolormale == const Color(0x960B473B)) {
          gendercolormale = const Color(0x964F9C7E);
        }
      }
    });
  }

  updateSlider(double val) {
    setState(() {
      height = val;
    });
  }

  reset() {
    setState(() {
      gender = "";
      gendercolormale = const Color(0x964F9C7E);
      gendercolorfemale = const Color(0x964F9C7E);
      height = 0.0;
      Weight = 20;
      age = 10;
      Calculate = false;
    });
  }

  start() {
    setState(() {
      Calculate = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
          headlineSmall: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
              headlineMedium: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0x96144A3A),
          elevation: 2,
          shadowColor: Colors.black,
          centerTitle: true,
          title: const Text(
            "Body Mass Index",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: Calculate
            ? Data(reset)
            : BMI(updateweight, updatage, updateSlider, start, updategender),
      ),
    );
  }
}
