import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../var.dart';
import '../pages/about.dart';
import '../pages/Home.dart';
import 'package:meal_app/pages/category_screen.dart';
import '../pages/setting.dart';
import '../pages/favourit.dart';
class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  var home_name = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: background,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: theme,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.local_restaurant,
                  size: 40,
                ),
                Text(
                  'Cooking Up',
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            leading: Icon(
              Icons.home,
              color: theme,
            ),
            title: Text('Home',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Font_color,
                    fontFamily: 'Montserrat')),
            trailing: Icon(
              Icons.chevron_right,
              color: theme,
            ),
            // splashColor:theme,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          ),
        
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            leading: Icon(
              Icons.star,
              color: theme,
            ),
            title: Text('Favourate',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Font_color,
                    fontFamily: 'Montserrat')),
            subtitle: Text(
              "See your favourate meals",
              style: TextStyle(
                color: Font_color,
                fontFamily: 'Montserrat',
              ),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: theme,
            ),
            // splashColor:theme,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>  Favourit()),
              );
            },
          ),

          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            leading: Icon(
              Icons.restaurant,
              color: theme,
            ),
            title: Text('category',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Font_color,
                    fontFamily: 'Montserrat')),
            subtitle: Text(
              "A lot of meals around the world ",
              style: TextStyle(
                color: Font_color,
                fontFamily: 'Montserrat',
              ),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: theme,
            ),
            // splashColor:theme,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => CategoryScreen()),
              );
            },
          ),

          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            leading: Icon(
              Icons.settings,
              color: theme,
            ),
            title: Text('Settings',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Font_color,
                    fontFamily: 'Montserrat')),
            subtitle: Text(
              "More options",
              style: TextStyle(color: Font_color, fontFamily: 'Montserrat'),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: theme,
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
              );
            },
          ),

          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            leading: Icon(
              Icons.settings_accessibility_rounded,
              color: theme,
            ),
            title: Text('About',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Font_color,
                    fontFamily: 'Montserrat')),
            subtitle: Text(
              "Know more about ",
              style: TextStyle(color: Font_color, fontFamily: 'Montserrat'),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: theme,
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          ),

          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            leading: Icon(
              Icons.exit_to_app,
              color: theme,
            ),
            title: Text('Exit',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Font_color,
                    fontFamily: 'Montserrat')),
            onTap: () {
              SystemNavigator.pop();
              // Do something when the item is tapped
            },
          ),
        ],
      ),
    );
  }
}
