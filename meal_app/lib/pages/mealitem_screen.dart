import 'package:flutter/material.dart';
import 'package:meal_app/var.dart';
import '../Widget/drawer.dart';
import '../Widget/ingrediant.dart';
import '../dummy_data.dart';

class mealitem extends StatefulWidget {
  final String id;

  mealitem(this.id);

  @override
  State<mealitem> createState() => _mealitemState();
}

class _mealitemState extends State<mealitem> {
  var obj;

  void initState() {
    obj = DUMMY_MEALS.firstWhere((ele) => ele.id == widget.id);
    super.initState();
  }

  String iscomplexity(s) {
    switch (s) {
      case 'Complexity.Simple':
        return 'Simple';
      case 'Complexity.Challenging':
        return 'Challenging';
      case 'Complexity.Hard':
        return 'Hard';
      default:
        return "none";
    }
  }

  String isAffordability(s) {
    switch (s) {
      case 'Affordability.Affordable':
        return 'Affordable';
      case 'Affordability.Pricey':
        return 'Pricey';
      case 'Affordability.Luxurious':
        return 'Luxurious';
      default:
        return "none";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      floatingActionButton: FloatingActionButton(
          backgroundColor:theme,
        onPressed: (){
            setState(() {
              obj.isselected=obj.isselected?false:true;
            });

        },
        child:obj.isselected==true?Icon(Icons.star,color:Colors.white):Icon(Icons.star_border),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: background),
          child: Column(
            children: [
              Container(
                child: Image.asset(obj.imageUrl,fit: BoxFit.fill,),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Text(obj.title,
                    style: TextStyle(
                        fontFamily: 'KaushanScript',
                        fontSize: 25,
                        color: theme,
                        backgroundColor: background)),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: theme,
                          ),
                          Text(obj.duration.toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Font_color),),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.shopping_bag_rounded, color: theme),
                          Text(iscomplexity(obj.complexity.toString()),style: TextStyle(fontWeight: FontWeight.bold,color: Font_color)),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.attach_money, color: theme),
                          Text(isAffordability(obj.affordability.toString()),style: TextStyle(fontWeight: FontWeight.bold,color: Font_color)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(border: Border.all(color: theme,width: 2),color:Color(
                    0xfffffafa)),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.start,


                  children: [
                    Container(
                      child: Text(
                        'Ingrediants',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'montserrat',
                            color: theme),
                      ),
                      margin: EdgeInsets.all(20),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: obj.ingredients.map<Widget>((ele) {
                          return ingradiant(ele,'1');
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(border: Border.all(color: theme,width: 2),color:Color(
                    0xfffef8f8)),
                child: Column(



                  children: [
                    Container(

                      child: Text(
                        'Steps',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'mon'
                                'tserrat',
                            color: theme),
                      ),
                      margin: EdgeInsets.all(20),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: obj.steps.map<Widget>((ele) {
                          return ingradiant(ele,'1');
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
