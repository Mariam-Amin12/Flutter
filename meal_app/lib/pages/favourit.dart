import 'package:flutter/material.dart';

import '../Widget/drawer.dart';
import '../Widget/mealwidget.dart';
import '../dummy_data.dart';
import '../var.dart';

class Favourit extends StatefulWidget {
  const Favourit({super.key});

  @override
  State<Favourit> createState() => _FavouritState();
}

class _FavouritState extends State<Favourit> {
  List? meals;

  void initState() {
    meals = DUMMY_MEALS.where((ele) => ele.isselected == true).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme,
        title: const Text(
          "Favourit",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Lobster',
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: drawer(),
      body: Stack(
        children:[
          Container(
             color: background,
          ),
          Container(
            // padding: const EdgeInsets.only(top: 100),
            // alignment: Alignment.center,
            color: background,
            child: SingleChildScrollView(
              child: Column(
                children: (meals ?? [])
                    .map<Widget>(
                        (ele) => mealwidget(ele.imageUrl, ele.title, ele.id))
                    .toList(),
              ),
            )),
     ] ),
    );
  }
}
