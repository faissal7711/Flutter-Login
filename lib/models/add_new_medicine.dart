// import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/medicine.dart';

//////////////////////////////////////////////////////////////////////////////

class MedicineNameFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Please enter Medicine name!' : null;
  }
}

class NumberOfTimesFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Please enter Number of times!' : null;
  }
}

//////////////////////////////////////////////////////////////////////////////

// ignore: must_be_immutable
class MedicineForm extends StatefulWidget {
  String title = "Add New Medicine";

  @override
  MedicineFormState createState() => MedicineFormState();
}

// ignore: camel_case_types
class MedicineFormState extends State<MedicineForm> {
  final _formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final Medicine _med = Medicine();
  TimeOfDay _time = TimeOfDay.now();
  TimeOfDay _picked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Builder(
            builder: (context) => Form(
                key: _formKey,
                child: ListView(
//                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Medicine name'),
                      validator: MedicineNameFieldValidator.validate,
                      onSaved: (val) => setState(() => _med.name = val),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of times'),
                      validator: NumberOfTimesFieldValidator.validate,
                      onSaved: (val) =>
                          setState(() => _med.timeSoFit = int.parse(val)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 16.0),
                      child: RaisedButton(
                          child: Text('Set time to alarm'),
                          onPressed: () {
                            final form = _formKey.currentState;
                            if (form.validate()) {
                              _selectTime(context);
                            }
                          }),
                    ),
                    Divider(
                      color: Colors.blueGrey,
                      height: 111.0,
                      thickness: 3.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 16.0),
                      child: RaisedButton(
                        child: Text('Save Medicine'),
                        onPressed: _saveMedicine,
                      ),
                    ),
                  ],
                ))),
      ),
    );
  }

  _saveMedicine(){
    final form = _formKey.currentState;
    if (form.validate()) {
      setState(() {
        Navigator.pop(context);
      });
    }
  }

  _selectTime(context) async {
    _picked = await showTimePicker(context: context, initialTime: _time);
    setState(() {
      _med.timeSoFit = _picked as int;
      // print(_picked);
    });
  }
}
