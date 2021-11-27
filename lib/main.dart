import 'package:flutter/material.dart';
import 'login_page.dart';
import 'screens/home_screen.dart';
import 'screens/second_screen.dart';
import 'screens/third_screen.dart';
import 'utils/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      theme: myThemeData,
      debugShowCheckedModeBanner: false,
      //home: HomeScreen(),
      // routes and home conn't work together
      initialRoute: '/',    //true ? '/' : '/third', //any screen in the single quotation
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomeScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
      },
    );
  }
}
