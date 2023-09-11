import 'package:flutter/material.dart';
import '../var.dart';
import '../Widget/drawer.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      body: Container(
        color:background,
        padding: EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Text('Dark Mode',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Font_color,
                        fontFamily: 'Montserrat')),

                trailing: Switch(
                  value: darkmode,
                  onChanged: (val) {
                    setState(() {
                      darkmode = val;
                      background=darkmode?Colors.black:Colors.white;
                      Font_color=darkmode?Colors.white:Colors.black;
                    });
                  },
                  activeColor: theme,
                ),
              ),  Divider(
                color: theme,
                height: 20,
                thickness: 2,
              ),
              ListTile(
                title: Text('isGlutenFree',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Font_color,
                        fontFamily: 'Montserrat')),
                subtitle: Text('who need to follow a gluten-free diet',style: TextStyle(  color: Font_color,),),
                trailing: Switch(
                  value: isGlutenFree,
                  onChanged: (val) {
                    setState(() {
                      isGlutenFree = val;
                    });
                  },
                  activeColor: theme,
                ),
              ),
              Divider(
                color: theme,
                height: 20,
                thickness: 2,
              ),
              ListTile(
                title: Text('isLactoseFree',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Font_color,
                        fontFamily: 'Montserrat')),
                subtitle: Text(
                    'who need to avoid consuming lactose-containing foods to prevent digestive discomfort.',style: TextStyle(  color: Font_color,),),
                trailing: Switch(
                  value: isLactoseFree,
                  onChanged: (val) {
                    setState(() {
                      isLactoseFree = val;
                    });
                  },
                  activeColor: theme,
                ),
              ),

              Divider(
                color: theme,
                height: 20,
                thickness: 2,
              ),
              ListTile(
                title: Text('isVegan',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Font_color,
                        fontFamily: 'Montserrat')),
                subtitle: Text(
                    'adhering to a lifestyle and dietary choice that avoids the consumption or use of animal products, ',style: TextStyle(  color: Font_color,)),
                trailing: Switch(
                  value: isVegan,
                  onChanged: (val) {
                    setState(() {
                      isVegan = val;
                    });
                  },
                  activeColor: theme,
                ),
              ),
              Divider(
                color: theme,
                height: 20,
                thickness: 2,
              ),
              ListTile(
                title: Text('isVegetarian',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Font_color,
                        fontFamily: 'Montserrat')),
                subtitle: Text(' individuals who choose not to consume animal flesh, including meat, poultry, fish, and seafood. ',style: TextStyle(  color: Font_color,)),
                trailing: Switch(
                  value: isVegetarian,
                  onChanged: (val) {
                    setState(() {
                      isVegetarian = val;
                    });
                  },
                  activeColor: theme,
                ),
              ),
              Divider(
                color: theme,
                height: 20,
                thickness: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// final bool isGlutenFree;
// final bool isLactoseFree;
// final bool isVegan;
// final bool isVegetarian ;
