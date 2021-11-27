import 'package:flutter/material.dart';
import 'my_menu_itmes.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            Center(
              child: UserAccountsDrawerHeader(
                accountEmail: Text("FaissolFoo@yahoo.com"),
                accountName: Text("Faissal Gomaa Faissal"),
                currentAccountPicture: Image.asset("assets/images/faissol.jpg"),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            MyMenuItems(),
          ],
        ),
      ),
    );
  }
}
