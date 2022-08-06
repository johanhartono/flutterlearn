import 'package:flutter/material.dart';

class DefaultUIWState extends StatefulWidget {
  const DefaultUIWState({Key? key}) : super(key: key);

  @override
  State<DefaultUIWState> createState() => _DefaultUIWStateState();
}

class _DefaultUIWStateState extends State<DefaultUIWState> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Fluttter Demo Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructors
              Text('You have pushed the button this many times:'),
              Text('$count'),
            ],
          ),
        ));
  }
}
