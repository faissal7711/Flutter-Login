import 'package:flutter/material.dart';
import 'package:flutter_mr_foo/widgets/menu.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Third Screen Title"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/foo.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
