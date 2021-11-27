import 'package:flutter/material.dart';
//import 'package:flutter_project/screens/home_screen.dart';
//import 'package:flutter_project/screens/second_screen.dart';
//import 'package:flutter_project/screens/third_screen.dart';

class MyMenuItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Home Scrren"),
            onTap: () {
              /*
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return HomeScreen();
                  },
                ),
              );
              */
              //Navigator.pop(context);

              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/');

              Navigator.of(context).pushNamed('/');
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Second Scrren"),
            onTap: () {
              /*
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return SecondScreen();
                  },
                ),
              );
              */
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/second');
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Third Scrren"),
            onTap: () {
              /*
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ThirdScreen();
                  },
                ),
              );
              */
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/third');
            },
          ),
        ),
      ],
    );
  }
}
