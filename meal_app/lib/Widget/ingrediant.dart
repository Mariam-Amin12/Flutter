import 'package:flutter/material.dart';
import 'package:meal_app/var.dart';

class ingradiant extends StatelessWidget {
  final String s;
  final String num;
   ingradiant(this.s,this.num);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
        child: Row(

          children: [
            Container(
              margin: EdgeInsets.all(9),
              width: 20,
              height: 3,
              decoration: BoxDecoration(color:theme),
              // child:Text('#${num}',textAlign: TextAlign.center,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),maxLines: 2,) ,
            ),
            Expanded(child: Text(s,style:TextStyle(fontSize: 15,fontFamily: 'montserrat'),maxLines: 2,)),
          ],

        ));
  }
}
