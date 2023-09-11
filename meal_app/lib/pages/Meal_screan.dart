import 'package:flutter/material.dart';
import 'package:meal_app/Widget/drawer.dart';
import 'package:meal_app/Widget/mealwidget.dart';
import 'package:meal_app/var.dart';
import '../dummy_data.dart';
import 'package:meal_app/var.dart';

class Meal extends StatefulWidget {
  final String category;
  final String title;

  Meal(this.category, this.title);

  @override
  State<Meal> createState() => _MealState();
}

class _MealState extends State<Meal> {
  List? meals;

  void initState() {
    meals = DUMMY_MEALS
        .where((ele) => ele.categories.contains(widget.category))
        .toList();

    if (isVegetarian) {
      meals = (meals ?? []).where((ele) => ele.isVegetarian == true).toList();
    }
    if (isLactoseFree) {
      meals = (meals ?? []).where((ele) => ele.isLactoseFree == true).toList();
    }
    if (isVegan) {
      meals = (meals ?? []).where((ele) => ele.isVegan == true).toList();
    }
    if (isVegan) {
      meals = (meals ?? []).where((ele) => ele.isVegan == true).toList();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme,
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'Lobster',
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: drawer(),
      body: Stack(children: [
        Container(
          color: background,
        ),
        SingleChildScrollView(
            child: Container(
          color: background,
          child: Column(
            children: (meals ?? [])
                .map<Widget>(
                    (ele) => mealwidget(ele.imageUrl, ele.title, ele.id))
                .toList(),
          ),
        )),
      ]),
    );
  }
}
