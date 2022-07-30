// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// ignore: duplicate_ignore
class PasValue extends StatelessWidget {

  final firstName ;
  final lastName ;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  PasValue({required this.firstName, required this.lastName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Data')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(firstName, style: const TextStyle(fontSize: 25.0)),
              Text(lastName, style: const TextStyle(fontSize: 25.0)),
            ],
          ),
        ));
  }
}
