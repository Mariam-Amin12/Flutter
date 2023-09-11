

import "package:flutter/material.dart";
import 'package:meal_app/Widget/drawer.dart';
import 'package:meal_app/Widget/welcome.dart';
import '../Widget/Carousel.dart';
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      body: Stack(
        children: [
          carousel(),
          welcome(),
        ],
      ) ,
    )
     ;
  }
}