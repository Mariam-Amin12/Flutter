import 'package:flutter/material.dart';
import '../var.dart';
import '../Widget/drawer.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      body: Stack(children: [
        Container(
          color: background,
        ),
        SingleChildScrollView(
          child: Container(
            color: background,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 120,
                  color: theme,
                  child: Text(
                    'About Our App',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lobster',
                        color: Font_color),
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        'Welcome to our Meal App! We are passionate about good food and helping you discover delicious recipes for every occasion.',
                        style: TextStyle(
                            color: Font_color,
                            fontSize: 17,
                            fontFamily: 'montserrat'),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        "Features:",
                        style: TextStyle(
                            color: Font_color,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'montserrat'),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                          '1. Browse a vast collection of recipes from various cuisines.',
                          style: TextStyle(
                              color: Font_color,
                              fontSize: 17,
                              fontFamily: 'montserrat')),
                      Text('2. Save your favorite recipes for quick access.',
                          style: TextStyle(
                              color: Font_color,
                              fontSize: 17,
                              fontFamily: 'montserrat')),
                      Text(
                          '3. you can change the theme of the app from the settings',
                          style: TextStyle(
                              color: Font_color,
                              fontSize: 17,
                              fontFamily: 'montserrat')),
                      Text(
                          '4.you can filter the food acoording to your favourite food',
                          style: TextStyle(
                              color: Font_color,
                              fontSize: 17,
                              fontFamily: 'montserrat')),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        'We hope you enjoy using our app and find it helpful in your culinary adventures!',
                        style: TextStyle(
                            color: Font_color,
                            fontSize: 17,
                            fontFamily: 'montserrat'),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
