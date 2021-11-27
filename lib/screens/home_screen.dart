import 'package:flutter/material.dart';
import 'package:flutter_mr_foo/models/add_new_medicine.dart';
import 'package:flutter_mr_foo/widgets/menu.dart';

import '../auth_provider.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  /*final BaseAuth auth;*/
  final VoidCallback onSignedOut;

  HomeScreen({Key key, this.title, /*this.auth,*/ this.onSignedOut}) : super(key: key);

//  void _signOut(BuildContext context) async {
//    try {
//      var auth = AuthProvider.of(context).auth;
//      await auth.signOut();
//      onSignedOut();
//    } catch (e) {
//      print(e);
//    }
//  }


  final GlobalKey<ScaffoldState> _scaffold = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: MyDrawer(), // appBar must shown her because the Drawer shows
      appBar: AppBar(
        title: Text("Welcome"),
        actions: <Widget>[
          FlatButton(
            child: Text(
              "Logout",
              style: TextStyle(fontSize: 17.0, color: Colors.white),
            ),
//            onPressed: () => _signOut(context),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Add New Medican "),
                  Icon(Icons.add_circle_outline),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MedicineForm()),
                );
                _showDialog();
              },
            ),
          ],
        ),
      ),
    );
  }

  _testingForFutuer() {
    print('Start');
    // we can write any number of the seconds
    Future.delayed(Duration(seconds: 3), () {
      //after 3 seconds print this message
      print('it\'s me after 3 seconds');
    });
  }

  _showDialog() {
    final snkBar = SnackBar(
      content: Text('Medican has saved'),
      action: SnackBarAction(
        label: "Undo",
        onPressed: () {
          _showDialog();
        },
      ),
    );
    _scaffold.currentState.showSnackBar(snkBar);
  }
}
