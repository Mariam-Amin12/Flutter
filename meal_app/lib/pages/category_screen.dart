import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/Widget/categoryItem.dart';
import 'package:meal_app/var.dart';
import '../dummy_data.dart';
import '../Widget/drawer.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  var i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      body: Container(
        // padding: const EdgeInsets.only(top: 100),
        // alignment: Alignment.center,
        color: background,
        child: GridView.count(
          padding: const EdgeInsets.all(10),
          crossAxisCount: 2,
          children: DUMMY_CATEGORIES.map((e) {
            return categoryItem(
                e.title, e.id, e.background);
          }).toList(),
        ),
      ),
    );
  }
}
