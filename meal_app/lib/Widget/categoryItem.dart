import 'package:flutter/material.dart';
import 'package:meal_app/var.dart';
import '../pages/Meal_screan.dart';

class categoryItem extends StatefulWidget {
  final String title;
  final String id;
  final String url;

  categoryItem(this.title, this.id, this.url);

  @override
  State<categoryItem> createState() => _categoryItemState();
}

class _categoryItemState extends State<categoryItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      // borderRadius: BorderRadius.circular(10),
      // splashColor: Colors.red,
      onTap: () { Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Meal(widget.id,widget.title)),
      );},
      child: Container(
        // width: 200,
        // height: 100,



        margin: EdgeInsets.all(10),
        child: Center(
          child: Stack(

              fit: StackFit.expand,
              clipBehavior: Clip.antiAlias,
              children: [
                Opacity(
                    opacity: .8,
                    child: Image.asset(
                      widget.url,
                      fit: BoxFit.fill,
                    )),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0x80000000),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        // color: Font_color,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
