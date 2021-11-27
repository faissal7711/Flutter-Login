import 'package:flutter/material.dart';

class Medicine{

   String name ;
   TimeOfDay timeToStart ;
   int timeSoFit;

   Medicine({this.name, this.timeToStart, this.timeSoFit});

  Map<String, dynamic> toMap(){
    return {
      'name': name,
      'timeToStart': timeToStart,
      'timeSoFit': timeSoFit ,
    };
  }
}