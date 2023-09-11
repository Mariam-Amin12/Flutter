import 'package:flutter/material.dart';
import '../var.dart';
import 'package:meal_app/pages/category_screen.dart';
class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,

      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(  width:300,
            height: 200,
            margin: const EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xB3A4A4A4),

            ),
            child:  const Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("W",style:TextStyle(fontFamily:'Lobster',fontSize: 38,fontWeight: FontWeight.bold,color:Color(
                          0x90FF0000))),
                      Text("elcome At",style:TextStyle(fontFamily:'Lobster',fontSize: 30,fontWeight: FontWeight.bold,)),

                    ]),

                Text("Encyclopedia of meals",style:TextStyle(fontFamily:'Lobster',fontSize: 30,fontWeight: FontWeight.bold,))
              ],
            ),
          ),
          ElevatedButton(onPressed: (){ Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) =>  CategoryScreen()),
          );},style:ButtonStyle(
            backgroundColor: MaterialStateProperty.all(theme),
            padding: MaterialStateProperty.all(const EdgeInsets.only(top:10,bottom:10,left: 30,right: 30)),

          ), child: const Text("Let's Start",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,fontFamily: 'Montserrat'),),

          ),
        ],
      ),

    );
  }
}
