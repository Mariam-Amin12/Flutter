
import 'package:flutter/material.dart';
bool darkmode=false;
var theme =Color(0xFFC39180);
var background=darkmode?Colors.black:Colors.white;
var Font_color=darkmode?Colors.white:Colors.black;
void toggle_background (){
  theme=theme==Colors.white? Colors.black :Colors.white;
}
void toggle_font (){
  theme=theme==Colors.white? Colors.black :Colors.white;
}
const String homeRoute = '/';
const String aboutRoute = '/about';
const String settingsRoute = '/setting';
const String mealRoute = '/setting';
bool isGlutenFree=false;
bool isLactoseFree =false;
bool isVegan=false;
bool isVegetarian=false;