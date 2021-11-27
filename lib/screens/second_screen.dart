import 'package:flutter/material.dart';
import 'package:flutter_mr_foo/widgets/menu.dart';

class SecondScreen extends StatelessWidget {
  //final myPhotos = ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Second Screen Title"),
      ),
      body: Center(
        child: FutureBuilder(
//          future: fetchPhotos(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Center(

            );
          },
        ),
      ),
    );
  }
}
