// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Demo'),
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 250.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(image: AssetImage('assets/hiking.png'),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            width: 2.0,
          )
          ),
          child : Stack (
            children: const [
              Positioned(
                left: 0.0,
                bottom: 0.0,
                child: Text('Black Phanter',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold))
              ),
               Positioned(
                right: 0.0,
                bottom: 0.0,
                child: Icon(
                  Icons.star, color: Colors.white, size: 25.0)
              ),             
            ],)
        )
    ));
  }
}