import 'package:flutter/material.dart';
//InkWell is a reserved words, do not use Reserved words

class InkWellExample extends StatelessWidget {
  const InkWellExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
        onTap: () {
          print('Tap');
        },
        child: Container(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.all(12.0),
            child : const Text('Flat Button',
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      ),
      )
    );
  }
}