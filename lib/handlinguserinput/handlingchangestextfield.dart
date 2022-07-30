import 'package:flutter/material.dart';

class HandlingChangesTF extends StatelessWidget {
  const HandlingChangesTF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Text Input')),
      body: Center(
        child: Container(
          width: 300.0,
          height: 250.0,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
            )
          ),
          child: const TextField(
            decoration: InputDecoration(
             // border: InputBorder.none,
                hintText: 'Write Something',
                icon: Icon(Icons.text_fields),
            ), 
          ),
        ),)
    );
  }
}