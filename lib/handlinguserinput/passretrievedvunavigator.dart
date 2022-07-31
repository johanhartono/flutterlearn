// ignore_for_file: prefer_typing_uninitialized_variables, deprecated_member_use

import 'package:flutter/material.dart';

// ignore: duplicate_ignore
class PasValue extends StatelessWidget {

  final firstName ;
  final lastName ;
  final ThemeData themedata = ThemeData(
  brightness:  Brightness.light,
  primarySwatch: Colors.teal,
  accentColor: Colors.yellowAccent,
);
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  PasValue({required this.firstName, required this.lastName});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: themedata.copyWith(
        primaryColor: Colors.deepPurpleAccent,
        buttonColor: Colors.blueAccent),
      child: Scaffold(
          appBar: AppBar(title: const Text('Data')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 250.0,
                  height: 100.0,
                  decoration: BoxDecoration(border: Border.all(width: 1.0)),
                  child: Column(
                    children: [
                      Text(firstName, 
                      style: const TextStyle(fontSize: 25.0)),
                      RaisedButton(onPressed: () {},
                      child: const Text("Edit"),)
                    ],)),
                    //const SizedBox(height: 30,),
                Theme(
                  data: themedata.copyWith(
                    primaryColor: Colors.deepPurpleAccent,
                    buttonColor: Colors.redAccent),
                  child: Container(
                    width: 250.0,
                    height: 100.0,
                    decoration: BoxDecoration(border: Border.all(width: 1.0)),
                    child: Column(
                      children: [
                        Text(lastName, 
                        style: const TextStyle(fontSize: 25.0)),
                        RaisedButton(onPressed: () {},
                        child: const Text("Edit"),)
                      ],)),
                )
                ],
            ),
          )),
    );
  }
}
