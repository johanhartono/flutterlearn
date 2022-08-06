import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300.0,height: 250.0,
          //constraints: const BoxConstraints.expand(width: 300.0),
          decoration:  BoxDecoration(
            color: Colors.lightBlue,
            border: Border.all(
              width: 2.0
          )
          ),
          child: Image.network('https://upload.wikimedia.org/wikipedia/id/7/7d/Bliss.png',
          fit: BoxFit.cover),
        ),
      )
    );
  }
}