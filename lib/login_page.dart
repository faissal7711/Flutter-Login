import 'package:flutter/material.dart';

class EmailFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Email can\'t be empty!' : null;
  }
}

class PasswordFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Password can\'t be empty!' : null;
  }
}

class NameFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Name can\'t be empty!' : null;
  }
}

class LoginPage extends StatefulWidget {
  final VoidCallback onSignedIn;

  /*final BaseAuth auth;*/

  LoginPage({/*this.auth,*/ this.onSignedIn});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

enum FormType {
  login,
  register,
}

class _LoginPageState extends State<LoginPage> {
  final formKey = new GlobalKey<FormState>();

//  String _email, _password;
  FormType _formType = FormType.register;

  ///////////////////////////////////////
  ///////////////////////////////////////

//  bool validateAndSave() {
//    final form = formKey.currentState;
//    if (form.validate()) {
//      form.save();
//      return true;
//    }
//    return false;
//  }

  /*
  void validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        var auth = AuthProvider.of(context).auth;
        if (_formType == FormType.login) {
          String userId =
              await auth.signInWithEmailAndPassword(_email, _password);
          /*final FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: _email,
            password: _password,
          )).user;*/
          //FirebaseUser firebaseUser = user.user;
          printMessage('Signed in: $userId');
        } else {
          String userId = await auth
              .createUserWithEmailAndPassword(_email, _password);
          /*final FirebaseUser user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _email,
            password: _password,
          )).user;*/
          //FirebaseUser firebaseUser = user.user;
          printMessage('Registered user: $userId');
        }
        widget.onSignedIn();
      } catch (e) {
        printMessage('Error $e');
        printMessage('Error in summit button');
      }
    }
  }
  */

  void moveToRegister() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });
  }

  void moveToLogin() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Login'),
      ),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.all(5.0),
        child: new Form(
          key: formKey,
          child: Center(
            child: new ListView(
//            mainAxisAlignment: MainAxisAlignment.center,
//            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: buildInputs() + buildSummitButtons(),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> buildInputs() {
    return [
      new TextFormField(
        decoration:
        InputDecoration(labelText: 'Full Name', icon: Icon(Icons.account_circle)),
        validator: NameFieldValidator.validate,
//        onSaved: (value) => _password = value,
      ),
      new TextFormField(
        decoration:
            InputDecoration(labelText: 'email', icon: Icon(Icons.email)),
        validator: EmailFieldValidator.validate,
//        onSaved: (value) => _email = value,
      ),
      new TextFormField(
        decoration:
            InputDecoration(labelText: 'password', icon: Icon(Icons.lock)),
        obscureText: true,
        validator: PasswordFieldValidator.validate,
//        onSaved: (value) => _password = value,
      ),
      FlatButton(
        child: null,
        onPressed: () {
          ////////////////////summit code
        },
      ),
    ];
  }

  List<Widget> buildSummitButtons() {
    if (_formType == FormType.login) {
      return [
        new RaisedButton(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Login',
            style: TextStyle(fontSize: 20.0),
          ),
          highlightColor: Colors.blueAccent,
//          onPressed: validateAndSubmit,
        ),
        new FlatButton(
          child: Text(
            'Create an acount!',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.blueAccent,
            ),
          ),
          onPressed: moveToRegister,
        ),
      ];
    } else {
      return [
        new RaisedButton(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Create an acount',
            style: TextStyle(fontSize: 20.0),
          ),
          highlightColor: Colors.blueAccent,
//          onPressed: validateAndSubmit,
        ),
        new FlatButton(
          child: Text(
            'Have an acount? Login',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.blueAccent,
            ),
          ),
          onPressed: moveToLogin,
        ),
      ];
    }
  }

  void printMessage(String message) {
    print(message);
  }
}
