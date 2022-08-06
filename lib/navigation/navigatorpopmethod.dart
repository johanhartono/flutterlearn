// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class NavigatorPopMethod extends StatelessWidget {
  const NavigatorPopMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
        backgroundColor:  Colors.brown,
      ),
      body: Center(
        child: FlatButton(
          child: const Text('Click to Navigate to Second Page'),
          onPressed: () => Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (BuildContext context) => const SecondScreen())),
          )
          ,
          )

    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        backgroundColor:  Colors.brown,
      ),
      body: Center(
        child: FlatButton(
          child: const Text('Your are on Second Page'),
          onPressed: () => Navigator.pop(context),

          }, 
          )
          ,
          )

    );
  }
}