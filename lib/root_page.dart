//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_project/screens/home_screen.dart';
//import 'auth_provider.dart';
//import 'login_page.dart';
//
//class RootPage extends StatefulWidget {
//  /*
//  final BaseAuth auth;
//  RootPage({this.auth});
//  */
//
//  @override
//  State<StatefulWidget> createState() => new _RootPage();
//}
//
//enum AuthStatus{
//  notSignedIn,
//  signedIn
//}
//
//class _RootPage extends State<RootPage> {
//
//  AuthStatus authStatus = AuthStatus.notSignedIn;
//
//  @override
//  void didChangeDependencies() {
//    super.didChangeDependencies();
//    var auth = AuthProvider.of(context).auth;
//    auth.currentUser().then((userId){
//      setState(() {
//        authStatus = userId == null? AuthStatus.notSignedIn: AuthStatus.signedIn;
//      });
//    });
//  }
//
//  void _signedIn(){
//    setState(() {
//      authStatus = AuthStatus.signedIn;
//    });
//  }
//
//  void _singedOut() {
//    setState(() {
//      authStatus = AuthStatus.notSignedIn;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    switch(authStatus){
//      case AuthStatus.notSignedIn:
//        return new LoginPage(
//          /*auth: widget.auth,*/
//          onSignedIn: _signedIn,
//        );
//      case AuthStatus.signedIn:
//        return HomeScreen(
//          onSignedOut: _singedOut,
//        );
//    }
//    return null;
//  }
//
//}
