import 'package:flutter/material.dart';
import 'package:meal_app/pages/mealitem_screen.dart';
import 'package:meal_app/var.dart';

class mealwidget extends StatefulWidget {
  final String imgurl;
  final String title;
  final String id;

  mealwidget(this.imgurl, this.title, this.id);

  @override
  State<mealwidget> createState() => _mealwidgetState();
}

class _mealwidgetState extends State<mealwidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => mealitem(widget.id)),
        );
      },
      child: Container(

        margin: const EdgeInsets.only(top: 20,bottom: 20,left: 5,right: 5),
        decoration: BoxDecoration(color: background,borderRadius: BorderRadius.circular(20) ,),
        // width: double.infinity,


        child: Column(
          // mainAxisSize:MainAxisSize.max ,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Image.asset(
                    widget.imgurl,
                    fit: BoxFit.fitWidth,
                  )),
            ),
            Text(
              widget.title,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: theme,
                  fontFamily: 'PlayfairDisplay'),
            ),
          ],
        ),
      ),
    );
  }
}
